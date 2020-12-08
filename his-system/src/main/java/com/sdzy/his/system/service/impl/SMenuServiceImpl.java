package com.sdzy.his.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sdzy.his.common.entity.system.SMenu;
import com.sdzy.his.common.entity.system.SUser;
import com.sdzy.his.common.enums.HisExceptionEnum;
import com.sdzy.his.common.exception.HisException;
import com.sdzy.his.system.mapper.SMenuMapper;
import com.sdzy.his.system.mapper.SRoleMenuMapper;
import com.sdzy.his.system.service.SMenuService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 菜单表 服务实现类
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@Service
@Slf4j
@RequiredArgsConstructor(onConstructor = @_(@Autowired))
public class SMenuServiceImpl extends ServiceImpl<SMenuMapper, SMenu> implements SMenuService {
    private final SMenuMapper menuMapper;

    private final SRoleMenuMapper roleMenuMapper;

    private final RedisTemplate<String, Object> redisTemplate;

    @Override
    public List<SMenu> listMenu(String token) {
        SUser user = getUserByToken(token);
        if ("超级管理员".equals(user.getType())) {
            return roleMenuMapper.listMenuAll();
        }
        return roleMenuMapper.listMenu(user.getId());
    }

    @Override
    public boolean insertMenu(SMenu menu, String token) {
        SUser user = getUserByToken(token);
        if (null == menu) {
            throw new HisException(HisExceptionEnum.PARAMS_MISS_ERROR);
        }
        menu.setCreatedBy(user.getId());
        menu.setCreatedName(user.getUserName());

        int insert = menuMapper.insert(menu);
        if (insert > 0) {
            log.info("添加菜单信息成功，添加人={}", user.getName());
        } else {
            throw new HisException(HisExceptionEnum.SYSTEM_INSERT_ERROR);
        }
        return true;
    }

    @Override
    public boolean updateMenu(SMenu menu, String token) {
        if (null == menu) {
            throw new HisException(HisExceptionEnum.PARAMS_MISS_ERROR);
        }
        SUser user = getUserByToken(token);
        menu.setModifiedBy(user.getId());
        menu.setModifiedName(user.getUserName());
        int i = menuMapper.updateById(menu);
        if (i > 0) {
            log.info("修改菜单信息成功，修改人={}", user.getName());
        } else {
            throw new HisException(HisExceptionEnum.SYSTEM_UPDATE_ERROR);
        }
        return true;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteMenuById(Long id, String token) {
        if (StringUtils.isEmpty(id)) {
            throw new HisException(HisExceptionEnum.PARAMS_MISS_ERROR);
        }
        SUser user = getUserByToken(token);
        SMenu menu = menuMapper.selectById(id);
        String concat = menu.getParentIdList().concat(",").concat(id + "");
        // 删除菜单分为两部，1. 删除全部的子菜单如果子菜单存在子菜单继续删除。2.删除当前菜单。
        // 1.删除当前菜单的全部子菜单,父菜单列表之间用","隔开，需要在条件中添加','
        QueryWrapper<SMenu> sMenuQueryWrapper = new QueryWrapper<>();
        sMenuQueryWrapper.and(queryWrapper -> queryWrapper.like("parent_id_list",concat.concat(",")).or().eq("parent_id_list",concat));
        menuMapper.delete(sMenuQueryWrapper);

        // 2.删除当前菜单
        int i = menuMapper.deleteById(id);
        if (i > 0) {
            log.info("菜单删除成功，删除人={}", user.getUserName());
        } else {
            throw new HisException(HisExceptionEnum.SYSTEM_DELETE_ERROR);
        }
        return true;
    }

    @Override
    public Page<SMenu> getMenuListUser(String token, Map<String, String> map) {
        int pageNo;
        int size;
        if (StringUtils.isEmpty(map.get("pageNo"))) {
            throw new HisException(HisExceptionEnum.PAGE_NO_MISS_ERROR);
        }
        pageNo = Integer.parseInt(map.get("pageNo"));
        size = StringUtils.isEmpty(map.get("size")) ? 10 : Integer.parseInt(map.get("size"));
//        SUser user = getUserByToken(token);
        QueryWrapper<SMenu> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(!StringUtils.isEmpty(map.get("menuName")), "name", map.get("menuName"));
        Page<SMenu> page = new Page<>(pageNo, size);

        return menuMapper.selectPage(page,queryWrapper);
    }

    private SUser getUserByToken(String token) {
        Object o = redisTemplate.opsForValue().get(token);
        if (null == o) {
            log.error("登录失效，请重新登录。");
            throw new HisException(HisExceptionEnum.LOGIN_TIME_OUT);
        }
        return (SUser) o;
    }

}
