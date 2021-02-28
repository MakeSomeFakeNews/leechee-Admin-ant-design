package com.office2easy.leechee.modules.system.vo.sysinfo;

import lombok.Data;

@Data
public class SysInfoVo {
    private SysJvmInfo jvmInfo;
    private SysJavaInfo javaRuntimeInfo;
    private SysOsInfo osInfo;

}
