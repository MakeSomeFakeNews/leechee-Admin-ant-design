package com.office2easy.leechee.modules.system.service.impl;

import com.office2easy.leechee.modules.system.model.SysPermission;
import com.office2easy.leechee.modules.system.model.SysRole;
import com.office2easy.leechee.modules.system.model.SysRolePermission;
import com.office2easy.leechee.modules.system.dao.SysRolePermissionMapper;
import com.office2easy.leechee.modules.system.service.ISysRolePermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 今天太阳真滴晒
 * @since 2021-02-24
 */
@Service
public class SysRolePermissionServiceImpl extends ServiceImpl<SysRolePermissionMapper, SysRolePermission> implements ISysRolePermissionService {

    @Override
    public void savePermissions(SysPermission permission, List<SysRole> userRoleList) {
        List<SysRolePermission> rolePermissions = new ArrayList<>();
        for (SysRole sysRole : userRoleList) {
            SysRolePermission sysRolePermission = new SysRolePermission();
            sysRolePermission.setPermissionId(permission.getId());
            sysRolePermission.setRoleId(sysRole.getId());
            rolePermissions.add(sysRolePermission);
        }
    }
}
