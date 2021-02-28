package com.office2easy.leechee.modules.system.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author 今天太阳真滴晒
 * @since 2021-02-24
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value="SysRolePermission对象", description="")
public class SysRolePermission extends Model {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer roleId;

    private Integer permissionId;

    private Integer isDelete;


}
