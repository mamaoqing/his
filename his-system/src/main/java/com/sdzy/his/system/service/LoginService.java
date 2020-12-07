package com.sdzy.his.system.service;

import com.sdzy.his.common.entity.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author mq
 * @description: TODO
 * @title: LoginService
 * @projectName his
 * @date 2020/12/711:10
 */
public interface LoginService {
    Result login(Map<String,String> map);

    /**
     * 退出方法
     * @param token  用户登录唯一凭证
     * @return
     */
    boolean logout(String token);
}
