package com.sdzy.his.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sdzy.his.common.entity.system.SRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 角色表  Mapper 接口
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SRoleMapper extends BaseMapper<SRole> {
    List<SRole> findRoleList(@Param("name")String name, @Param("type")String type, @Param("compId")List compId , @Param("compid")String compid ,
                             @Param("pageNo")Integer pageNo, @Param("size")Integer size);
    Integer findRoleListNum(@Param("name")String name, @Param("type")String type, @Param("compId")List compId ,@Param("compid")String compid ,
                            @Param("pageNo")Integer pageNo, @Param("size")Integer size);

}
