package com.office2easy.leechee.modules.system.dao;

import com.office2easy.leechee.modules.system.model.SysUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.office2easy.leechee.modules.system.vo.RoleVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 今天太阳真滴晒
 * @since 2021-02-22
 */
@Mapper
public interface SysUserMapper extends BaseMapper<SysUser> {
    //RoleVo getUserRolePermissions();
}
