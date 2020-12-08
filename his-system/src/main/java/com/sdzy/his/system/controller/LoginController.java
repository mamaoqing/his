package com.sdzy.his.system.controller;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.LoginService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author mq
 * @description: TODO
 * @title: LoginController
 * @projectName his
 * @date 2020/12/711:13
 */
@RestController
@Slf4j
@RequestMapping("/login/")
public class LoginController extends BaseController {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "login")
    public Result login(HttpServletRequest request) {
        log.info("map:{}",super.getParameterMap(request));
        return loginService.login(super.getParameterMap(request));
    }

    @GetMapping("logout")
    public Result logout(@RequestHeader("Authentication-Token") String token){
        return ResultUtil.success(loginService.logout(token));
    }
}
