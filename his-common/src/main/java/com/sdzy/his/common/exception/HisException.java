package com.sdzy.his.common.exception;

import com.sdzy.his.common.enums.HisExceptionEnum;

/**
 * @author mq
 * @description: TODO
 * @title: HisException
 * @projectName his
 * @date 2020/12/79:26
 */
public class HisException extends RuntimeException {

    private Integer code;

    public HisException(String msg, Integer code) {
        super(msg);
        this.code = code;
    }

    public HisException(HisExceptionEnum hisExceptionEnum) {
        super(hisExceptionEnum.getMsg());
        this.code = hisExceptionEnum.getCode();
    }

    public Integer getCode() {
        return code;
    }

}
