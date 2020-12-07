package com.sdzy.his.system.handler;

import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.exception.HisException;
import com.sdzy.his.common.util.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author mq
 * @description: TODO
 * @title: SystemExceptionHandler
 * @projectName his
 * @date 2020/12/713:34
 */
@Slf4j
@ControllerAdvice
public class SystemExceptionHandler {

    @ExceptionHandler(HisException.class)
    @ResponseBody
    public Result handlerException(HisException hisException) {

        log.error(hisException.getMessage(), hisException);

        return ResultUtil.error(hisException.getMessage(), hisException.getCode());
    }
}
