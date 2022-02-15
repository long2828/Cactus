//package tw.cactus.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
//import tw.cactus.login.model.CustomerOAuth2UserService;
//@Configuration
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//	@Autowired
//	private CustomerOAuth2UserService oAuth2UserService;
//	@Override
//    public void configure(HttpSecurity http) throws Exception {
//		
//
//		http
//		.csrf().disable()
//        .antMatcher("/oauth2/**").authorizeRequests()
//        .antMatchers("/").permitAll()
//        .anyRequest().authenticated()
//        .and()
//        .oauth2Login()
//        .loginPage("/").userInfoEndpoint()
//        .userService(oAuth2UserService)
//        .and()
//        .and().logout();
//    }
//	
//	@Override
//	public void configure(WebSecurity web) throws Exception{
//		web.ignoring().antMatchers("/images/**","/js/**","/css/**","/fonts/**","/video/**");
//	}
//}
