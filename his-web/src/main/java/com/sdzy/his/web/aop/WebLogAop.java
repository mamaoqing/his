package com.sdzy.his.web.aop;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

/**
 * @author mq
 * @description: TODO
 * @title: WebLogAop
 * @projectName his
 * @date 2020/12/716:17
 */
@Slf4j
@Aspect
@Component
public class WebLogAop {

    @Pointcut("execution(public * com.sdzy.his.web.controller.*.*(..))")
    public void aopLog() {
    }

    @Before("aopLog()")
    public void before(JoinPoint point) {
        writeLog(point);
    }
    @After("aopLog()")
    public void after(JoinPoint point) {
        log.info("after is stop ......");
    }

    private void writeLog(JoinPoint point){
        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 记录下请求内容
        log.info("URL : " + request.getRequestURL());
        log.info("HTTP_METHOD : " + request.getMethod());
        log.info("IP : " + request.getRemoteAddr());
        log.info("CLASS_METHOD : " + point.getSignature().getDeclaringTypeName() + "." + point.getSignature().getName());
        log.info("ARGS : " + Arrays.toString(point.getArgs()));
    }
}
