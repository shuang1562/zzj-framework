package cn.zzj.oauth2.web.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

import static org.springframework.security.config.Customizer.withDefaults;

/**
 * h2 数据库利用 spring 的内嵌的网页版查看数据，由于 spring security 的缘故，此处对其做 frame 的不校验
 */
@Slf4j
@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeHttpRequests((authz) -> authz
                        .anyRequest().authenticated()
                )
                .httpBasic(withDefaults())
                .csrf().disable()
                .headers().disable()
                .build();
    }

}
