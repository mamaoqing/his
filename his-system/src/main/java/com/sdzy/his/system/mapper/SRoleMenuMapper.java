package com.sdzy.his.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sdzy.his.common.entity.system.SMenu;
import com.sdzy.his.common.entity.system.SRoleMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 角色菜单 Mapper 接口
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SRoleMenuMapper extends BaseMapper<SRoleMenu> {
    List<SMenu> listMenu(@Param("id")Long userId);
    List<SMenu> listMenuAll();

}
