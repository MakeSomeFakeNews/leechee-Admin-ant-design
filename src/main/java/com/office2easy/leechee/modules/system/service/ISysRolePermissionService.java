package com.office2easy.leechee.modules.system.service;

import com.office2easy.leechee.modules.system.model.SysPermission;
import com.office2easy.leechee.modules.system.model.SysRole;
import com.office2easy.leechee.modules.system.model.SysRolePermission;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 今天太阳真滴晒
 * @since 2021-02-24
 */
public interface ISysRolePermissionService extends IService<SysRolePermission> {

    void savePermissions(SysPermission permission, List<SysRole> userRoleList);
}
