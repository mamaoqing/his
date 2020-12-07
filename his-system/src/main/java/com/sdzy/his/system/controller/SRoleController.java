package com.sdzy.his.system.controller;


import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SRole;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.SRoleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * <p>
 * 角色表  前端控制器
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@RestController
@RequestMapping("/system/sRole")
@Slf4j
public class SRoleController extends BaseController {
    @Autowired
    private SRoleService roleService;

    @GetMapping("/listRole")
    public Result listRole(Integer pageNo, Integer size, HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.listRole(super.getParameterMap(request),pageNo,size,token));
    }

    @GetMapping("/{id}")
    public Result getRole(@PathVariable("id") Long id) {
        return ResultUtil.success(roleService.getById(id));
    }

    @PutMapping("/updateRole")
    public Result updateRole(SRole role, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.saveOrUpdate(role, token));

    }

    @GetMapping("/listRoleNum")
    public Result listRoleNum(Integer pageNo, Integer size, HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.listRoleNum(super.getParameterMap(request),pageNo,size,token));
    }

    @GetMapping("/listRoleMenu")
    public Result listRoleMenu(@RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.listRoleMenu(token));
    }

    @PostMapping("/insertRole")
    public Result insertRole(@RequestBody SRole role, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.save(role,token));
    }

    @DeleteMapping("/{id}")
    public Result deleteRole(@PathVariable("id") Long id,@RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.remove(id,token));
    }

    @GetMapping("/checkRoleMenuUser/{id}")
    public Result checkRoleMenuUser(@PathVariable("id") Long id){
        return ResultUtil.success(roleService.checkRoleMenuUser(id));
    }

    @GetMapping("/checkUser/{id}")
    public Result checkUser(@PathVariable("id") Long id , @RequestHeader("Authentication-Token") String token){
        return ResultUtil.success(roleService.checkUser(id,token));
    }

    @PostMapping("/setRoleMenu")
    public Result setRoleMenu(@RequestBody Map<String,String> roleMenu , @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(roleService.setRoleMenu(roleMenu.get("roleId"),roleMenu.get("menuId"), token));
    }

    @GetMapping("/getRoleMenuByRoleId/{roleId}")
    public Result getRoleMenuByRoleId(@PathVariable("roleId") String roleId){
        return ResultUtil.success(roleService.getRoleMenuByRoleId(roleId));
    }


}

