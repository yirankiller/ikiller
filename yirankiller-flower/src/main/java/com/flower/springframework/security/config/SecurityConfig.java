package com.flower.springframework.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;

import javax.sql.DataSource;

/**
 * Created by eason on 14-10-24.
 */
@Configuration
@EnableWebMvcSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
            .antMatchers("/images/**").permitAll()
            .antMatchers("/js/**").permitAll()
            .antMatchers("/css/**").permitAll()
            .antMatchers("/bootstrap/**").permitAll()
            .antMatchers("/home**").authenticated()
            .and()
            .formLogin()
            .defaultSuccessUrl("/home")
            .loginPage("/login")
            .permitAll()
            .and()
            .logout()
            .permitAll()
            ;

    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .jdbcAuthentication()
            .dataSource(dataSource)
            .usersByUsernameQuery("" +
                    "select " +
                    "user.username,userShadow.password,userShadow.enable " +
                    "from " +
                    "UserShadow userShadow " +
                    "where userShadow.user.username = ? ")
            .authoritiesByUsernameQuery("select " +
                    "auth.userShadow.user.username,auth.authority " +
                    "from " +
                    "Authorities auth " +
                    "where " +
                    "auth.userShadow.user.username = ? ");
    }


}
