package com.software.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@ComponentScan(basePackages={"com.software"}) // 扫描该包路径下的所有spring组件
@EnableAutoConfiguration
@EnableJpaRepositories(basePackages={"com.software.core.dao"}) // JPA扫描该包路径下的Repositorie
@EntityScan(basePackages={"com.software.core.entity"}) // 扫描实体类
@SpringBootApplication
public class WebshopApplication extends SpringBootServletInitializer{
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebshopApplication.class);
	}
	public static void main(String[] args) {
		SpringApplication.run(WebshopApplication.class, args);
	}
}
