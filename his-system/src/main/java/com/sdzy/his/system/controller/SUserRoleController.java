package com.sdzy.his.system.controller;


import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.SUserRoleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 用户角色 前端控制器
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@RestController
@RequestMapping("/system/sUserRole")
@Slf4j
public class SUserRoleController extends BaseController {
    @Autowired
    private SUserRoleService userRoleService;

    @GetMapping("/listUserRole")
    public Result listUserRole(Long id, Long compId){
        return ResultUtil.success(userRoleService.listUserRole(id, compId));
    }
}

