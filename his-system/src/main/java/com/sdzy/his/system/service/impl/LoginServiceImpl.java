package com.sdzy.his.system.service.impl;

import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SUser;
import com.sdzy.his.common.enums.HisExceptionEnum;
import com.sdzy.his.common.exception.HisException;
import com.sdzy.his.common.util.PasswdEncryption;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.LoginService;
import com.sdzy.his.system.util.RedisUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.UUID;

/**
 * @author mq
 * @description: TODO
 * @title: LoginServiceImpl
 * @projectName his
 * @date 2020/12/711:11
 */
@Slf4j
@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private RedisUtil redisUtil;

    @Autowired
    private SUserServiceImpl userService;

    @Override
    public Result login(Map<String,String> map) {
        String username = map.get("userName");
        String passwd = map.get("password");
        SUser user = userService.findByUserName(username);
        if(StringUtils.isEmpty(user)){
            throw new HisException(HisExceptionEnum.USER_NOT_EXIST_ERROR);
        }
        String password = user.getPassword();
        StringBuilder sbf = new StringBuilder(passwd);
        //在用户输入的密码两头拼接sdzy
        sbf.insert(0, "sdzy");
        sbf.insert(passwd.length() - 1, "sdzy");
        //用md5加密
        String pwd = DigestUtils.md5DigestAsHex(sbf.toString().getBytes());
        String pd = PasswdEncryption.dencptyPasswd(password);

        if(pwd.equals(pd)) {
            String key = String.valueOf(UUID.randomUUID());
            String token = key+":"+user.getUserName();
            // 设置过期时间单位秒
            redisUtil.set(token, user, 500 * 60);
            return ResultUtil.success(token);
        }else{
            throw new HisException(HisExceptionEnum.PASSWORD_ERROR);
        }
    }

    @Override
    public boolean logout(String token) {
        if(StringUtils.isEmpty(token)){
            throw new HisException(HisExceptionEnum.PARAMS_MISS_ERROR);
        }
        Object o = redisUtil.get(token);
        if(null == o){
            return true;
        }
        return  redisUtil.delete(token);
    }
}
