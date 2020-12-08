package com.sdzy.his.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sdzy.his.common.entity.system.SMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 菜单表 Mapper 接口
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SMenuMapper extends BaseMapper<SMenu> {

    List<SMenu> findMenuList(@Param("compId")Long name);
}
