package com.sdzy.his.system.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author mq
 * @description: TODO
 * @title: MybatisPlusConfig
 * @projectName his
 * @date 2020/12/79:39
 */
@Configuration
@Slf4j
@MapperScan("com.sdzy.his.system.mapper")
public class MybatisPlusConfig {
    static {
        log.info("MybatisPlusConfig is start ...");
    }

    /**
     * 分页插件
     * @return 返回值
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }
}
