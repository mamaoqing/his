package com.sdzy.his.web.controller;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author mq
 * @description: TODO
 * @title: Web2SystemController
 * @projectName his
 * @date 2020/12/713:42
 */
@RestController
@RequestMapping("/web/system")
@Slf4j
public class Web2SystemController extends BaseController {

    @Value("${web.system.server-url}")
    private String serverUrl;

    @Autowired
    private RestTemplate restTemplate;

    @PostMapping("login")
    public Result login(String userName,String password){
        Map<String,String> map = new HashMap<>(16);
        map.put("password",password);
        map.put("userName",userName);
        log.info("获取到的map信息是:{}",map);
        return restTemplate.getForObject(serverUrl + "/login/login?userName={userName}&password={password}",Result.class,map);
    }

    @GetMapping("logout")
    public Result logout(@RequestHeader("Authentication-Token") String token,HttpServletRequest request){

        return doGetRestTemplate(restTemplate,serverUrl+"/login/logout",request,token);
    }

    @GetMapping("menu")
    public ResponseEntity<Result> menu(){
        Map<String,Object> map = new HashMap<>(16);
        map.put("pageNo",1);
//        Result result = doGetRestTemplate(restTemplate, serverUrl + "/system/sMenu/getMenuListUser", map);
//        log.info("result:{}",result);
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.add("Authentication-Token","0a5f6e56-cc0e-4123-b36c-2a49b283f721:mmq");
        HttpEntity<String> requestEntity = new HttpEntity<String>("", requestHeaders);
        return restTemplate.exchange(serverUrl+"/system/sMenu/getMenuListUser?pageNo={pageNo}",HttpMethod.GET,requestEntity,Result.class,map);
    }

    @GetMapping("listUser")
    public ResponseEntity<Result> listUser(){
        Map<String,Object> map = new HashMap<>(16);
        map.put("pageNo",1);
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.add("Authentication-Token","0a5f6e56-cc0e-4123-b36c-2a49b283f721:mmq");
        HttpEntity<String> requestEntity = new HttpEntity<String>("", requestHeaders);
        return restTemplate.exchange(serverUrl+"/system/sUser/listUser?pageNo={pageNo}",HttpMethod.GET,requestEntity,Result.class,map);
    }
    @GetMapping("listUsers")
    public Result listUsers(@RequestHeader("Authentication-Token") String token, HttpServletRequest request){
        return doGetRestTemplate(restTemplate, serverUrl + "/system/sMenu/getMenuListUser", request, token);
    }

    @PostMapping("/insertUser")
    public Result insertUser(HttpServletRequest request,@RequestHeader("Authentication-Token") String token){

        return super.doPostRestTemplate(restTemplate,serverUrl+"/system/sUser/insertUser",request,token,HttpMethod.POST);
    }
}
