package com.flower.springframework.config;

import com.alibaba.druid.pool.DruidDataSource;
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
    public DruidDataSource dataSource() {
        DruidDataSource dds = new DruidDataSource();
        dds.setDriverClassName(env.getProperty("jdbc.driver"));
        dds.setUrl(env.getProperty("jdbc.url"));
        dds.setUsername(env.getProperty("jdbc.username"));
        dds.setPassword(env.getProperty("jdbc.password"));
        dds.setInitialSize(3);
        dds.setMinIdle(3);
        dds.setMaxActive(20);
        dds.setMaxWait(60000);
        dds.setTimeBetweenEvictionRunsMillis(60000);
        dds.setMinEvictableIdleTimeMillis(300000);
        dds.setValidationQuery("SELECT now()");
        dds.setTestWhileIdle(true);
        dds.setTestOnBorrow(false);
        dds.setTestOnReturn(false);
        return dds;
    }

}
