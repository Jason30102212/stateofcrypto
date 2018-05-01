package com.stateofcrypto.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	SimpleAuthenticationSuccessHandler simpleAuthenticationSuccessHandler;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication().dataSource(dataSource);
		
	}

/*	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		
		
		UserBuilder users = User.withDefaultPasswordEncoder();
				
		auth.inMemoryAuthentication()
	        .withUser(users.username("john").password("test123").roles("EMPLOYEE"))
	        .withUser(users.username("mary").password("test123").roles("MANAGER"))
	        .withUser(users.username("susan").password("test123").roles("ADMIN"));
		
	}
*/
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		
		http.authorizeRequests()
			.antMatchers("/member/**").hasRole("EMPLOYEE")
			
		//http.authorizeRequests()
			//.anyRequest().authenticated()
			.and()
			.formLogin().successHandler(simpleAuthenticationSuccessHandler)
				.loginPage("/showMyLoginPage")
				.loginProcessingUrl("/authenticateTheUser")
				.permitAll()
			.and()
				.logout().permitAll();
	}
	
	@Bean
	public UserDetailsManager userDetailsManager() {
		JdbcUserDetailsManager jdbcUserDetailsManager = new JdbcUserDetailsManager();
		jdbcUserDetailsManager.setDataSource(dataSource);
		
		return jdbcUserDetailsManager;
	}
}

