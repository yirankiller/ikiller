package com.flower.springframework.mvc.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * Created by eason on 14-10-27.
 */
@EnableWebMvc
@ComponentScan("com.flower.controller")
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {
    Logger logger = LoggerFactory.getLogger(WebMvcConfig.class);
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/bootstrap/**").addResourceLocations("/bootstrap/").setCachePeriod(31556926);
        registry.addResourceHandler("/css/**").addResourceLocations("/css/").setCachePeriod(31556926);
        registry.addResourceHandler("/images/**").addResourceLocations("/images/").setCachePeriod(31556926);
        registry.addResourceHandler("/js/**").addResourceLocations("/js/").setCachePeriod(31556926);
        registry.addResourceHandler("/js/seajs/latest/**").addResourceLocations("/js/seajs/2.2.1/debug/").setCachePeriod(31556926);
    }

    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/signup").setViewName("login");
        registry.addViewController("/home").setViewName("/homeOrder");
        registry.addViewController("/home/order").setViewName("/home/homeOrder");
        registry.addViewController("/home/account").setViewName("/home/accountInfo");
        registry.addViewController("/home/address").setViewName("/home/homeAddress");
        registry.addViewController("/item").setViewName("/item");
        logger.debug("/home --> /homeOrder");
        registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
    }
}
