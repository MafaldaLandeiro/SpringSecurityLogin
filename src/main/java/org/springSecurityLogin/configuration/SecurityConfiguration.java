package org.springSecurityLogin.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.inMemoryAuthentication().withUser("mafalda").password("1234")
				.roles("USER");
		auth.inMemoryAuthentication().withUser("admin").password("4321")
				.roles("ADMIN");
		auth.inMemoryAuthentication().withUser("dba").password("root")
				.roles("ADMIN", "DBA");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/", "/index").permitAll()
				.antMatchers("/admin/**").access("hasRole('ADMIN')")
				.antMatchers("/db/**")
				.access("hasRole('ADMIN')  and hasRole('DBA')").and()
				.formLogin().loginPage("/login").usernameParameter("ssoId")
				.passwordParameter("password").and().csrf().and()
				.exceptionHandling().accessDeniedPage("/403");
	}

}
