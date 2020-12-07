package com.sdzy.his.system.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sdzy.his.common.entity.system.SCompany;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 物业公司表 服务类
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SCompanyService extends IService<SCompany> {

    boolean save(SCompany company,String token);

    boolean saveOrUpdate(SCompany company,String token);

    boolean removeById(Long id ,String token);

    Page<SCompany> listCompany(Map<String,String> map, Integer pageNo, Integer size);

    Page<SCompany> getListCompany(Map<String,String> map, String token);

    List<SCompany> getComp(String token);
}
