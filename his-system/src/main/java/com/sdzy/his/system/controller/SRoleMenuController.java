package com.sdzy.his.system.controller;


import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.SRoleMenuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 角色菜单 前端控制器
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@RestController
@RequestMapping("/system/sRoleMenu")
@Slf4j
public class SRoleMenuController extends BaseController {
    @Autowired
    private SRoleMenuService roleMenuService;

    /**
     *
     * @param roleId 角色id
     * @param menuIds 菜单ids
     */
    @PostMapping("/setRoleMenu")
    public Result setRoleMenu(Long roleId, String menuIds) {
        return ResultUtil.success(roleMenuService.setRoleMenu(roleId,menuIds));
    }

}

