package com.sdzy.his.system.controller;


import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SMenu;
import com.sdzy.his.common.util.MenuUtil;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.SMenuService;
import com.sdzy.his.system.service.SUserRoleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>
 * 菜单表 前端控制器
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@RestController
@RequestMapping("/system/sMenu")
@Slf4j
public class SMenuController extends BaseController {

    @Autowired
    private SUserRoleService userRoleService;

    @Autowired
    private SMenuService sMenuService;

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @GetMapping("/get")
    @ResponseBody
    public Result getMenuList(@RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(MenuUtil.getAllRoleMenu(sMenuService.listMenu(token)));
    }
    @GetMapping("/getMenuListUser")
    public  Result getMenuListUser(@RequestHeader("Authentication-Token") String token, HttpServletRequest request){
        return ResultUtil.success(sMenuService.getMenuListUser(token,super.getParameterMap(request)));
    }

    @PostMapping("/insertMenu")
    @ResponseBody
    public Result insertMenu(@RequestBody SMenu menu,@RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(sMenuService.insertMenu(menu, token));
    }


    @GetMapping("/{id}")
    @ResponseBody
    public Result getMenu(@PathVariable("id") long id) {
        return ResultUtil.success(sMenuService.getById(id));
    }

    @PutMapping("/updateMenu")
    @ResponseBody
    public Result updateMenu(@RequestBody SMenu menu, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(sMenuService.updateMenu(menu, token));
    }

    @DeleteMapping("/{id}")
    @ResponseBody
    public Result deleteMenu(@PathVariable("id") Long id, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(sMenuService.deleteMenuById(id, token));
    }

}

