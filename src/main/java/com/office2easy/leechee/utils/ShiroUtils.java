package com.office2easy.leechee.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

@Component
public class ShiroUtils {
    private final RedisTemplate redisTemplate;

    public ShiroUtils(RedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    public void removePermission() {
        redisTemplate.delete(SystemConst.AUTHORIZATION_CACHE_NAME);
    }
}
