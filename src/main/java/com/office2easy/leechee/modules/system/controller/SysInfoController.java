package com.office2easy.leechee.modules.system.controller;

import com.office2easy.leechee.annotation.Log;
import com.office2easy.leechee.modules.system.service.ISysInfoService;
import com.office2easy.leechee.modules.system.vo.sysinfo.SysInfoVo;
import com.office2easy.leechee.utils.R;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/system/sys-info")
public class SysInfoController {
    private final ISysInfoService sysInfoService;

    public SysInfoController(ISysInfoService sysInfoService) {
        this.sysInfoService = sysInfoService;
    }

    @RequiresPermissions("sys:sysinfo:view")
    @RequestMapping("/sysInfo")
    @Log("获取系统资源")
    public R sysInfo() {
        SysInfoVo sysInfoVo = sysInfoService.query();
        return R.ok().data(sysInfoVo);
    }
}
