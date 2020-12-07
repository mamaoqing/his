package com.sdzy.his.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.sdzy.his.common.entity.system.SMenu;
import com.sdzy.his.common.entity.system.SRole;
import com.sdzy.his.common.exception.HisException;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 角色表  服务类
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
public interface SRoleService extends IService<SRole> {
    boolean saveOrUpdate(SRole role,String token) throws HisException;
    boolean save(SRole role,String token) throws HisException;
    boolean remove(Long id,String token) throws HisException;
    List<SRole> listRole(Map<String,String> map, Integer pageNo, Integer size, String token);
    Integer listRoleNum(Map<String,String> map, Integer pageNo, Integer size, String token);
    String checkRoleMenuUser(Long id) throws HisException;
    String checkUser(Long id,String token) throws HisException;
    boolean setRoleMenu(String roleId,String menuId, String token);
    List<SMenu> listRoleMenu(String token);
    List<Long> getRoleMenuByRoleId(String roleId);

}
