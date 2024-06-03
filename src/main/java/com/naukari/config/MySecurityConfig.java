package com.naukari.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class MySecurityConfig {
	@Autowired
	private CustomeLoginSuccessHandler customSuccessHandler;
	
	@Bean
	 public UserDetailsService userDetailsService() {
		return new CustomUserDetailService();
	}
	
	@Bean
	 public PasswordEncoder passwordEncoder() {
		  
		  return new BCryptPasswordEncoder(10); }
	 
	 @Bean
	  public AuthenticationProvider authenticationProvider() {
		  DaoAuthenticationProvider provider=new DaoAuthenticationProvider();
		  provider.setUserDetailsService(this.userDetailsService());
		  provider.setPasswordEncoder(this.passwordEncoder());
		  return provider;
	  }
		/*
		 * @Override protected void configure(AuthenticationManagerBuilder auth)throws
		 * Exception { auth.authenticationProvider(this.authenticationProvider()); }
		 */
	 @Bean
	 public AuthenticationManager authenticationManager(AuthenticationConfiguration
			 auth) throws Exception {
		 return auth.getAuthenticationManager();
	 }
	
	/*
	 * @Override protected void configure(HttpSecurity http) throws Exception{ http
	 * .authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN")
	 * .antMatchers("/user/**").hasRole("NORMAL")
	 * .antMatchers("/author/**").hasRole("AUTHOR") .antMatchers("/**").permitAll()
	 * .and().formLogin().loginPage("/sign-in").loginProcessingUrl("/do-login").
	 * successHandler(customSuccessHandler) .and() .csrf().disable(); }
	 */
	  
	 @Bean
	  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
          http   
          	  .csrf(csrf -> csrf.disable())
          	  .cors(cors -> cors.disable())
              .authorizeHttpRequests(auth -> auth
                  .antMatchers("/admin/**").hasRole("ADMIN")
                  .antMatchers("/user/**").hasRole("NORMAL")
                  .antMatchers("/author/**").hasRole("AUTHOR")
                  .antMatchers("/**").permitAll())
              .formLogin(login -> login
        		  .loginPage("/sign-in").loginProcessingUrl("/do-login")
                  .successHandler(customSuccessHandler))
              .authenticationProvider(authenticationProvider());
		return http.build();
		  
	  }
		
		 
		 
	 

}
