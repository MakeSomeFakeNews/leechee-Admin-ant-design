package com.office2easy.leechee.shiro;

import com.office2easy.leechee.modules.system.model.SysUser;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Component;

@Component
public class UserUtils {
    public  SysUser getUser() {
        return (SysUser) SecurityUtils.getSubject().getPrincipal();
    }
}
