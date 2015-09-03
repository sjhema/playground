package com.trans.core;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;

public class AuthenticationFailureHandler
		extends org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler {

	public AuthenticationFailureHandler() {
		super();
	}

	public AuthenticationFailureHandler(String defaultUrl) {
		super(defaultUrl);
	}

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String username = request.getParameter("j_username");
		String password = request.getParameter("j_password");

		request.getSession().setAttribute("error", "Invalid username or password");
		super.onAuthenticationFailure(request, response, exception);
	}

}
