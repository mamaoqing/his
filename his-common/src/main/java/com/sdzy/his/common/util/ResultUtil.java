package com.sdzy.his.common.util;

import com.sdzy.his.common.entity.Result;

/**
 * @author mq
 * @description: TODO
 * @title: ResultUtil
 * @projectName his
 * @date 2020/12/79:26
 */
public class ResultUtil {
    public static Result success(Object o){
        Result result = new Result();

        result.setCode(200);
        result.setMessage("成功");
        result.setData(o);
        return result;
    }
    public static Result success(){
        return success(null);
    }

    public static Result error(String msg,Integer code){
        Result result = new Result();

        result.setCode(code);
        result.setMessage(msg);

        return result;
    }
}
