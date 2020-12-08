package com.sdzy.his.web.interceptor;

import com.alibaba.fastjson.JSONObject;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.enums.HisExceptionEnum;
import com.sdzy.his.common.resource.HisResource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

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
        assert result != null;
        if(HisResource.SUCCESS_CODE.equals(result.getCode())){
            return true;
        }
        log.error("用户登录失效，请重新登录！");
        response.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json; charset=utf-8");
        PrintWriter pw = null;
        try{
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("code", HisExceptionEnum.LOGIN_TIME_OUT.getCode());
            jsonObject.put("message",HisExceptionEnum.LOGIN_TIME_OUT.getMsg());
            pw = response.getWriter();
            pw.append(jsonObject.toJSONString());
        }catch (Exception ignored){
            ignored.printStackTrace();
        }
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }
}
