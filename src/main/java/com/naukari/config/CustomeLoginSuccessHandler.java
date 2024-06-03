package com.naukari.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
@Configuration
public class CustomeLoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	@Override
	protected void handle(HttpServletRequest request,HttpServletResponse response,Authentication authentication)throws IOException{
		String target=determineTargetUrl(authentication);
		if (response.isCommitted()) {
			return;
		}
		RedirectStrategy redirectStrategy=new DefaultRedirectStrategy();
		redirectStrategy.sendRedirect(request, response, target);
	}

	protected String determineTargetUrl(Authentication authentication) {
		String url="/login?error=true";
		Collection<? extends GrantedAuthority> authorities=authentication.getAuthorities();
		List<String> roles=new ArrayList<String>();
		for(GrantedAuthority a:authorities) {
			roles.add(a.getAuthority());
		}
		//check user and decide to redirect url
		if (roles.contains("ROLE_NORMAL")) {
			url="/user/dashboard";
		}
		else if(roles.contains("ROLE_ADMIN")) {
			url="/admin/dash";
		}
		else if(roles.contains("ROLE_AUTHOR")) {
			url="/author/dash";
		}
		return url;
	}
}
