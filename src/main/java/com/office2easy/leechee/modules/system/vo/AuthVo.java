package com.office2easy.leechee.modules.system.vo;

import com.office2easy.leechee.modules.system.model.SysUser;
import lombok.Data;

@Data
public class AuthVo extends SysUser {
    private String code;
    private String ctoken;
}
