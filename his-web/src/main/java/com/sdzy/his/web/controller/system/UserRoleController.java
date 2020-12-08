package com.sdzy.his.web.controller.system;

import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * @author mq
 * @description: TODO
 * @title: UserRoleController
 * @projectName his
 * @date 2020/12/811:29
 */
@RestController
@RequestMapping("/web/system/userRole")
public class UserRoleController extends BaseController {
    @Value("${web.system.server-url}")
    protected String serverUrl;
    @Autowired
    private RestTemplate restTemplate;

    /**
     * Long id, Long compId,
     */
    @GetMapping("/listUserRole")
    public Result listUserRole(HttpServletRequest request){
        return doGetRestTemplate(restTemplate,serverUrl+"/system/sUserRole/listUserRole",request,null);
    }
}
