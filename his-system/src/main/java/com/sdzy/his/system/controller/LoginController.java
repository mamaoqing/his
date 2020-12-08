package com.sdzy.his.system.controller;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SUser;
import com.sdzy.his.common.enums.HisExceptionEnum;
import com.sdzy.his.common.exception.HisException;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.LoginService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.TimeUnit;

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
    @Autowired
    private RedisTemplate redisTemplate;

    @RequestMapping(value = "login")
    public Result login(HttpServletRequest request) {
        log.info("map:{}",super.getParameterMap(request));
        return loginService.login(super.getParameterMap(request));
    }

    @GetMapping("logout")
    public Result logout(@RequestHeader("Authentication-Token") String token){
        return ResultUtil.success(loginService.logout(token));
    }

    @GetMapping("getUser")
    public Result userInfo(String token){
        SUser o = (SUser)redisTemplate.opsForValue().get(token);
        if (o != null) {
            log.info("用户{},登录成功。记录时间{}", o.getUserName(), new Date());
            // 重置过期时间。单位秒
            redisTemplate.expire(token, 50 * 60 * 60 , TimeUnit.SECONDS);
            return ResultUtil.success(o);
        }
        throw new HisException(HisExceptionEnum.LOGIN_TIME_OUT);
    }
}
