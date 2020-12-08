package com.sdzy.his.web.controller.system;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * @author mq
 * @description: TODO
 * @title: RoleMenuController
 * @projectName his
 * @date 2020/12/810:21
 */
@RestController
@RequestMapping("/web/system/roleMenu")
public class RoleMenuController extends BaseController {
    @Value("${web.system.server-url}")
    protected String serverUrl;
    @Autowired
    private RestTemplate restTemplate;

    /**
     *
     */
    @PostMapping("/setRoleMenu")
    public Result setRoleMenu(HttpServletRequest request) {

        return doPostRestTemplate(restTemplate,serverUrl+"/system/sRoleMenu/setRoleMenu",request,null, HttpMethod.POST);
    }
}
