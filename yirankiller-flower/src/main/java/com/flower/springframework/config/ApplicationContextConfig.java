package com.flower.springframework.config;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

/**
 * Created by eason on 14-10-28.
 */
@Configuration
@PropertySource("classpath:jdbc.properties")
public class ApplicationContextConfig {
    private static final String PASSWORD_ENCODER_SECRET = "flower-secret";

    @Autowired
    Environment env;
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new StandardPasswordEncoder(ApplicationContextConfig.PASSWORD_ENCODER_SECRET);
    }

    @Bean(name = "dataSource")
    public BasicDataSource dataSource() {
        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName(env.getProperty("jdbc.driver"));
        basicDataSource.setUrl(env.getProperty("jdbc.url"));
        basicDataSource.setUsername(env.getProperty("jdbc.username"));
        basicDataSource.setPassword(env.getProperty("jdbc.password"));
        return basicDataSource;
    }


}
