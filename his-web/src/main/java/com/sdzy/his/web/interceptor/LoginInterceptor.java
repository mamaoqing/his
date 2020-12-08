package com.sdzy.his.web.interceptor;

import com.sdzy.his.common.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author mq
 * @description: TODO
 * @title: LoginInterceptor
 * @projectName his
 * @date 2020/12/816:55
 */
@Slf4j
@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    private RestTemplate restTemplate;
    @Value("${web.system.server-url}")
    protected String serverUrl;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){
        String token = String.valueOf(request.getHeader("Authentication-Token"));
        Result result = restTemplate.getForObject(serverUrl + "/login/getUser?token={token}", Result.class,token);
        log.info("用户登录信息：{}",result.getData());
        if(result.getCode() == 200){
            return true;
        }
        log.error("用户登录失效，请重新登录！");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
