package com.sdzy.his.system;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @author mq
 * @description: TODO
 * @title: HisSystem
 * @projectName his
 * @date 2020/12/79:16
 */
@SpringBootApplication
@Slf4j
@EnableDiscoveryClient
public class HisSystem {

    public static void main(String[] args) {
        SpringApplication.run(HisSystem.class,args);
        log.info("HisSystem is start ...");
    }
}
