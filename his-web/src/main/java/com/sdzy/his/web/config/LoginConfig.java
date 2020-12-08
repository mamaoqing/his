package com.sdzy.his.web.config;

import com.sdzy.his.web.interceptor.LoginInterceptor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author mq
 * @description: TODO
 * @title: LoginConfig
 * @projectName his
 * @date 2020/12/816:54
 */
@Configuration
@Slf4j
public class LoginConfig implements WebMvcConfigurer {
    static {
        log.info("LoginConfig is start ......");
    }
    @Bean
    public LoginInterceptor getSessionInterceptor() {
        return new LoginInterceptor();
    }


    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration registration = registry.addInterceptor(getSessionInterceptor());
        // 拦截路径 /** 表示所有的路径都拦截
        registration.addPathPatterns("/web/system/**");
        // 不拦截路径 多个用 "," 隔开
        registration.excludePathPatterns("/web/system/login");
    }
}
