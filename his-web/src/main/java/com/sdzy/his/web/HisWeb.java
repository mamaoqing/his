package com.sdzy.his.web;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * @author mq
 * @description: TODO
 * @title: HisWeb
 * @projectName his
 * @date 2020/12/711:06
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@Slf4j
@EnableDiscoveryClient
public class HisWeb {
    public static void main(String[] args) {
        SpringApplication.run(HisWeb.class,args);
        log.info("HisWeb is start ......");
    }
    @Bean
    @LoadBalanced
    public RestTemplate restTemplate(){
        return new RestTemplate();
    }
}
