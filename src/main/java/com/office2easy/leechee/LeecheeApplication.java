package com.office2easy.leechee;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class LeecheeApplication {

    public static void main(String[] args) {
        SpringApplication.run(LeecheeApplication.class, args);
    }

}
