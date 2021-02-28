package com.office2easy.leechee.modules.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.office2easy.leechee.modules.system.model.SysPermission;
import com.office2easy.leechee.modules.system.model.SysRole;
import com.office2easy.leechee.modules.system.model.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;
import com.office2easy.leechee.modules.system.model.SysUserRole;
import com.office2easy.leechee.modules.system.vo.UserInfoVo;
import com.office2easy.leechee.modules.system.vo.UserNavVo;
import com.office2easy.leechee.utils.R;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author 今天太阳真滴晒
 * @since 2021-02-22
 */
public interface ISysUserService extends IService<SysUser> {
    /**
     * 添加用户
     *
     * @param sysUser 用户
     * @return
     */
    R addUser(SysUser sysUser);

    R delete(SysUser sysUser);

    R update(SysUser sysUser);

    R list(SysUser sysUser);

    IPage<SysUser> selectPage(Map<String, Object> params, SysUser sysUser);

    UserNavVo buildNav(SysPermission permission);

    UserInfoVo buildUserInfo(SysUser sysUser, List<SysRole> sysRoleList, List<SysPermission> sysPermissionList);
}
