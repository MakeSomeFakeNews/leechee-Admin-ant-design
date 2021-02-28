package com.office2easy.leechee.modules.system.controller;

import com.office2easy.leechee.modules.system.model.SysRole;
import com.office2easy.leechee.modules.system.model.SysUser;
import org.apache.shiro.SecurityUtils;

import java.util.List;

public abstract class AbsController {
    protected SysUser getUser() {
        return (SysUser) SecurityUtils.getSubject().getPrincipal();
    }

    protected int getUserId() {
        return getUser().getId();
    }


}
