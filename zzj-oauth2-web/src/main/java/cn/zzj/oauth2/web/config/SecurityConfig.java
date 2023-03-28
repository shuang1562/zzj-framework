package cn.zzj.oauth2.web.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Slf4j
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        log.info("设置httpSecurity:认证方式，除注册地址以外，其它授权请求.");

        // to enable h2 web console
        httpSecurity.csrf().disable();
        httpSecurity.headers().frameOptions().disable();
    }

}
