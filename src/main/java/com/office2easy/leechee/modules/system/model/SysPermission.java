package com.office2easy.leechee.modules.system.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;

import java.time.LocalDateTime;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
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
@ApiModel(value = "SysPermission对象", description = "")
public class SysPermission extends Model {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "菜单名")
    private String permissionName;

    private String component;

    private String componentName;

    private String redirect;

    @ApiModelProperty(value = "路由地址")
    private String path;

    @ApiModelProperty(value = "链接地址")
    private String link;

    @ApiModelProperty(value = "父级ID")
    private Integer pid;

    private String icon;

    @ApiModelProperty(value = "权限")
    private String permission;

    @ApiModelProperty(value = "菜单类型:1,菜单,2,按钮")
    private Integer permissionType;

    @ApiModelProperty(value = "状态")
    private Integer status;

    private Integer sort;

    @ApiModelProperty(value = "描述")
    private String descript;

    @ApiModelProperty(value = "创建人")
    private String createBy;

    @ApiModelProperty(value = "修改人")
    private String updateBy;

    @ApiModelProperty(value = "创建时间")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    private LocalDateTime updateTime;

    @ApiModelProperty(value = "逻辑删除")
    private Integer isDelete;

    @TableField(exist = false)
    @JsonInclude(value = JsonInclude.Include.NON_EMPTY)
    private List<SysPermission> children;


}
