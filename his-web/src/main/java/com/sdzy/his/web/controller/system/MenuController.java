package com.sdzy.his.web.controller.system;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * @author mq
 * @description: TODO
 * @title: MenuController
 * @projectName his
 * @date 2020/12/716:57
 */
@RestController
@RequestMapping("/web/system/menu")
public class MenuController extends BaseController {

    @Value("${web.system.server-url}")
    protected String serverUrl;
    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("/get")
    public Result getMenuList(@RequestHeader("Authentication-Token") String token,HttpServletRequest request) {
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sMenu/get",request,token);
    }
    @GetMapping("/getMenuListUser")
    public  Result getMenuListUser(@RequestHeader("Authentication-Token") String token, HttpServletRequest request){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sMenu/getMenuListUser",request,token);
    }

    @PostMapping("/insertMenu")
    public Result insertMenu(@RequestHeader("Authentication-Token") String token,HttpServletRequest request) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sMenu/insertMenu",request,token, HttpMethod.POST);
    }


    @GetMapping("/{id}")
    public Result getMenu(@PathVariable("id") long id) {
        return restTemplate.getForObject(serverUrl+"/system/sMenu/"+id,Result.class);
    }

    @PutMapping("/updateMenu")
    public Result updateMenu(@RequestHeader("Authentication-Token") String token,HttpServletRequest request) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sMenu/updateMenu",request,token,HttpMethod.PUT);
    }

    @DeleteMapping("/{id}")
    public Result deleteMenu(@PathVariable("id") Long id,@RequestHeader("Authentication-Token") String token,HttpServletRequest request) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sMenu/"+id,request,token,HttpMethod.DELETE);
    }


}
