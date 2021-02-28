package com.office2easy.leechee.modules.system.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
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
 * @since 2021-02-28
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value="SysLog对象", description="")
public class SysLog extends Model {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String username;

    private String operation;

    private String link;

    private Integer execTime;

    private String params;

    private String ip;

    private LocalDateTime createTime;


}
