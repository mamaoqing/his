package com.sdzy.his.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sdzy.his.common.entity.system.SOrg;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 机构表 Mapper 接口
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SOrgMapper extends BaseMapper<SOrg> {
    List<Map<String,String>> getOnlyChildOrg(@Param("id") Long id);
}
