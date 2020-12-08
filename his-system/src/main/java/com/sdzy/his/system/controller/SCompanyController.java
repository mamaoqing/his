package com.sdzy.his.system.controller;


import com.sdzy.his.common.controller.BaseController;
import com.sdzy.his.common.entity.Result;
import com.sdzy.his.common.entity.system.SCompany;
import com.sdzy.his.common.util.ResultUtil;
import com.sdzy.his.system.service.SCompanyService;
import com.sdzy.his.system.service.SOrgService;
import com.sdzy.his.system.service.SUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>
 * 物业公司表 前端控制器
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@RestController
@RequestMapping("/system/sCompany")
@Slf4j
public class SCompanyController extends BaseController {
    @Autowired
    private SCompanyService companyService;

    @Autowired
    private SUserService userService;

    @Autowired
    private SOrgService orgService;

    @PostMapping("/insertCompany")
    public Result insertCompany(@RequestBody SCompany sCompany, @RequestHeader("Authentication-Token") String token) {
        boolean save = companyService.save(sCompany, token);
        if (save) {
            log.info("添加公司信息成功，公司id={}", sCompany.getId());
            Boolean aBoolean = userService.autoSave(sCompany);
            boolean autoSave = orgService.autoSave(sCompany);

            return ResultUtil.success(autoSave && aBoolean);
        }

        return ResultUtil.error("保存公司信息失败！", 1);
    }

    @PutMapping("/updateCompany")
    public Result updateCompany(@RequestBody SCompany sCompany, @RequestHeader("Authentication-Token") String token) {
        System.out.println(sCompany);
        return ResultUtil.success(companyService.saveOrUpdate(sCompany,token));
    }

    @GetMapping("/listCompany")
    public Result listCompany(Integer pageNo, Integer size, HttpServletRequest request) {
        return ResultUtil.success(companyService.listCompany(super.getParameterMap(request),pageNo,size));

    }

    @GetMapping("/getListCompany")
    public Result getListCompany(HttpServletRequest request, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(companyService.getListCompany(super.getParameterMap(request),token));

    }

    @GetMapping("/getComp")
    public Result getComp(@RequestHeader("Authentication-Token")String token) {
        return ResultUtil.success(companyService.getComp(token));

    }

    @GetMapping("/{id}")
    public Result getCompany(@PathVariable("id") Long id) {
        return ResultUtil.success(companyService.getById(id));
    }

    @DeleteMapping("/{id}")
    public Result deleteCompany(@PathVariable("id") Long id, @RequestHeader("Authentication-Token") String token) {
        return ResultUtil.success(companyService.removeById(id, token));
    }

}

