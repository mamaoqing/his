package com.sdzy.his.web.handler;

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
 * @title: WebExceptionHandler
 * @projectName his
 * @date 2020/12/810:11
 */
@Slf4j
@ControllerAdvice
public class WebExceptionHandler {
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public Result handlerException(Exception exception) {

        log.error(exception.getMessage(), exception);

        return ResultUtil.error(exception.getMessage(),5000);
    }
}
