package com.sdzy.his.web.controller.system;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SRole;
import com.sdzy.his.common.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author mq
 * @description: TODO
 * @title: RoleController
 * @projectName his
 * @date 2020/12/718:25
 */
@RestController
@RequestMapping("/web/system/role")
public class RoleController extends BaseController {
    @Value("${web.system.server-url}")
    protected String serverUrl;
    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("/listRole")
    public Result listRole(HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sRole/listRole",request,token);
    }

    @GetMapping("/{id}")
    public Result getRole(@PathVariable("id") Long id) {
        return restTemplate.getForObject(serverUrl+"/system/sRole/"+id,Result.class);
    }

    @PutMapping("/updateRole")
    public Result updateRole(HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sRole/updateRole",request,token, HttpMethod.PUT);

    }

    @GetMapping("/listRoleNum")
    public Result listRoleNum(HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sRole/listRoleNum",request,token);
    }

    @GetMapping("/listRoleMenu")
    public Result listRoleMenu(@RequestHeader("Authentication-Token") String token,HttpServletRequest request) {
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sRole/listRoleMenu",request,token);
    }

    @PostMapping("/insertRole")
    public Result insertRole(HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sRole/insertRole",request,token,HttpMethod.POST);
    }

    @DeleteMapping("/{id}")
    public Result deleteRole(@PathVariable("id") Long id,@RequestHeader("Authentication-Token") String token,HttpServletRequest request) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sRole/"+id,request,token,HttpMethod.DELETE);
    }

    @GetMapping("/checkRoleMenuUser/{id}")
    public Result checkRoleMenuUser(@PathVariable("id") Long id,HttpServletRequest request){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sRole/checkRoleMenuUser/"+id,request,null);
    }

    @GetMapping("/checkUser/{id}")
    public Result checkUser(@PathVariable("id") Long id , @RequestHeader("Authentication-Token") String token,HttpServletRequest request){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sRole/checkUser/"+id,request,token);
    }

    @PostMapping("/setRoleMenu")
    public Result setRoleMenu(HttpServletRequest request , @RequestHeader("Authentication-Token") String token) {
        return doPostRestTemplate(restTemplate,serverUrl+"/system/sRole/setRoleMenu",request,token,HttpMethod.POST);
    }

    @GetMapping("/getRoleMenuByRoleId/{roleId}")
    public Result getRoleMenuByRoleId(@PathVariable("roleId") String roleId,HttpServletRequest request){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sRole/getRoleMenuByRoleId/"+roleId,request,null);
    }
}
