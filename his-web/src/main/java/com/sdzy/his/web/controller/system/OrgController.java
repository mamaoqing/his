package com.sdzy.his.web.controller.system;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SOrg;
import com.sdzy.his.common.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * @author mq
 * @description: TODO
 * @title: OrgController
 * @projectName his
 * @date 2020/12/718:07
 */
@RestController
@RequestMapping("/web/system/org")
public class OrgController extends BaseController {

    @Value("${web.system.server-url}")
    protected String serverUrl;
    @Autowired
    private RestTemplate restTemplate;

    /**
     * 组织机构
     * 通过token获取用户，和公司信息
     * 一个机构对应多个下级机构
     * 最外层机构存在多个
     * 通过最外层的机构信息，递归查询所有的下级机构，直到没有下级
     * 返回一个最外层机构的集合
     */
    @GetMapping("/listOrg")
    public Result listOrg(@RequestHeader("Authentication-Token") String token, HttpServletRequest request){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sOrg/listOrg",request,token);
    }

    @GetMapping("/{id}")
    public Result getOrg(@PathVariable("id") Long id){
        return restTemplate.getForObject(serverUrl+"/system/sOrg/"+id,Result.class);
    }

    @GetMapping("/getChildOrg")
    public Result getChildOrg(HttpServletRequest request,@RequestHeader("Authentication-Token") String token){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sOrg/getChildOrg",request,token);
    }

    @PostMapping("/insertOrg")
    public Result insertOrg(@RequestHeader("Authentication-Token") String token,HttpServletRequest request){
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sOrg/insertOrg",request,token, HttpMethod.POST);
    }

    @PutMapping("/updateOrg")
    public Result updateOrg(@RequestHeader("Authentication-Token") String token,HttpServletRequest request){
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sOrg/updateOrg",request,token, HttpMethod.PUT);
    }
    @DeleteMapping("/{id}")
    public Result deleteOrg(@PathVariable("id") Long id,@RequestHeader("Authentication-Token") String token,HttpServletRequest request){
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sOrg/"+id,request,token,HttpMethod.DELETE);
    }

    @GetMapping("/getBaseOrg")
    public Result getBaseOrg(HttpServletRequest request,@RequestHeader("Authentication-Token") String token){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sOrg/getBaseOrg",request,token);
    }

    @GetMapping("/getOnlyChildOrg")
    public Result getOnlyChildOrg(HttpServletRequest request,@RequestHeader("Authentication-Token") String token){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sOrg/getOnlyChildOrg",request,token);
    }
}
