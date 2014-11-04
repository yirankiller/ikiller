package com.flower.springframework.security.config;

import com.flower.entity.AuthoritiesEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

/**
 * Created by eason on 14-10-24.
 */
@Configuration
@EnableWebMvcSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private DataSource dataSource;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
            .antMatchers("/images/**", "/js/**", "/css/**", "/bootstrap/**").permitAll()
            .antMatchers("/home**").hasRole(AuthoritiesEnum.ROLE_USER.getRole())
            .and()
            .formLogin()
            .defaultSuccessUrl("/loginSuccess")
            .loginPage("/login")
            .permitAll()
            .and()
            .logout()
            .logoutUrl("/logout")
            .invalidateHttpSession(true)
            .permitAll()
            ;

    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .jdbcAuthentication()
            .passwordEncoder(passwordEncoder)
            .dataSource(dataSource)
            .usersByUsernameQuery("" +
                    "select " +
                    "u.username,us.password,us.enable " +
                    "from " +
                    "user_shadow us, user u " +
                    "where us.user_id = u.id " +
                    "and u.username = ? ")
            .authoritiesByUsernameQuery("select " +
                    "u.username,auth.authority " +
                    "from " +
                    "authorities auth, user_shadow us, user u " +
                    "where " +
                    "us.user_id = u.id and auth.user_shadow_id = us.id " +
                    "and u.username = ? ");
    }


}
