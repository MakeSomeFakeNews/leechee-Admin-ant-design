package com.office2easy.leechee.modules.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.office2easy.leechee.modules.system.dao.SysUserRoleMapper;
import com.office2easy.leechee.modules.system.model.SysRole;
import com.office2easy.leechee.modules.system.dao.SysRoleMapper;
import com.office2easy.leechee.modules.system.model.SysUser;
import com.office2easy.leechee.modules.system.model.SysUserRole;
import com.office2easy.leechee.modules.system.service.ISysRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author 今天太阳真滴晒
 * @since 2021-02-24
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements ISysRoleService {

    @Autowired
    private SysUserRoleMapper userRoleMapper;

    /**
     * 获取用户所有角色
     * @param sysUser
     * @return
     */
    @Override
    public List<SysRole> getUserRoleList(SysUser sysUser) {
        LambdaQueryWrapper<SysUserRole> sysUserRoleQueryWrapper = new LambdaQueryWrapper<>();
        sysUserRoleQueryWrapper.eq(SysUserRole::getUserId, sysUser.getId());
        //获取所有角色
        List<SysUserRole> sysUserRoles = userRoleMapper.selectList(sysUserRoleQueryWrapper);
        List<SysRole> sysRoles = new ArrayList<>();
        sysUserRoles.forEach(sysUserRole -> {
            LambdaQueryWrapper<SysRole> sysRoleLambdaQueryWrapper = new LambdaQueryWrapper<>();
            sysRoleLambdaQueryWrapper.eq(SysRole::getId, sysUserRole.getRoleId());
            //获取角色详情
            SysRole sysRole = baseMapper.selectOne(sysRoleLambdaQueryWrapper);
            sysRoles.add(sysRole);
        });
        return sysRoles;
    }
}
