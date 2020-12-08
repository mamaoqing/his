package com.sdzy.his.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.sdzy.his.common.entity.system.SCompany;
import com.sdzy.his.common.entity.system.SOrg;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 机构表 服务类
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SOrgService extends IService<SOrg> {
    /**
     * 自动添加组织机构
     * @param company
     * @return
     */
    boolean autoSave(SCompany company);

    List<SOrg> listOrg(String token);

    boolean save(SOrg org,String token);
    boolean saveOrUpdate(SOrg org,String token);
    boolean removeById(Long id,String token);

    List<SOrg> getBaseOrg(Long compId);

    List<Map<String, String>> getOnlyChildOrg(Long id);
}
