package com.office2easy.leechee.support;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.office2easy.leechee.shiro.UserUtils;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    private final UserUtils userUtils;

    @Autowired
    public MyMetaObjectHandler(UserUtils userUtils) {
        this.userUtils = userUtils;
    }

    @Override
    public void insertFill(MetaObject metaObject) {
        this.strictInsertFill(metaObject, "createTime", LocalDateTime.class, LocalDateTime.now());
        this.strictInsertFill(metaObject, "createBy", String.class, userUtils.getUser().getUsername());
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.strictUpdateFill(metaObject, "updateTime", LocalDateTime.class, LocalDateTime.now());
        this.strictInsertFill(metaObject, "updateBy", String.class, userUtils.getUser().getUsername());
    }
}
