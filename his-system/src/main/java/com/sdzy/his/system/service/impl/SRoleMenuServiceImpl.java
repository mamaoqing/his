package com.sdzy.his.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sdzy.his.common.entity.system.SRoleMenu;
import com.sdzy.his.common.enums.HisExceptionEnum;
import com.sdzy.his.common.exception.HisException;
import com.sdzy.his.system.mapper.SRoleMenuMapper;
import com.sdzy.his.system.service.SRoleMenuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 * 角色菜单 服务实现类
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@Service
@Slf4j
public class SRoleMenuServiceImpl extends ServiceImpl<SRoleMenuMapper, SRoleMenu> implements SRoleMenuService {
    @Autowired
    private SRoleMenuMapper roleMenuMapper;

    @Override
    @Transactional
    public boolean setRoleMenu(Long roleId, String menuIds) {

        String[] menuIdArr = menuIds.split(",");

        QueryWrapper<SRoleMenu> query = new QueryWrapper<>();
        query.eq("role_id", roleId);
        // 执行修改之前，先将所有的该角色的菜单关系删除，然后在从新添加
        List<SRoleMenu> sRoleMenus = roleMenuMapper.selectList(query);
        if(!sRoleMenus.isEmpty()){
            int delete = roleMenuMapper.delete(query);
            if(!(delete > 0)){
                throw new HisException(HisExceptionEnum.SET_ROLE_MENU_ERROR);
            }
        }

        for (String menuId : menuIdArr) {
            SRoleMenu roleMenu = new SRoleMenu();
            roleMenu.setMenuId(Long.valueOf(menuId));
            roleMenu.setRoleId(roleId);
//            roleMenu.setCompId();
            int insert = roleMenuMapper.insert(roleMenu);
            if(!(insert>0)){
                throw new HisException(HisExceptionEnum.SET_ROLE_MENU_ERROR);
            }
        }

        return true;
    }

}
