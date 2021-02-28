package com.office2easy.leechee.modules.system.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.time.LocalDateTime;
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
 * @since 2021-02-27
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value="SysDict对象", description="")
public class SysDict extends Model {

    private static final long serialVersionUID = 1L;
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String value;

    private String code;

    private Integer typeId;

    private String descript;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;


}
