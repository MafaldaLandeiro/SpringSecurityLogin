package org.springSecurityLogin.exception;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class AccessDeniedExceptionHandler implements AccessDeniedHandler {
	private String errorPage;

	public AccessDeniedExceptionHandler() {
	}

	public AccessDeniedExceptionHandler(String errorPage) {
		this.errorPage = errorPage;
	}

	public String getErrorPage() {
		return errorPage;
	}

	public void setErrorPage(String errorPage) {
		this.errorPage = errorPage;
	}

	@Override
	public void handle(HttpServletRequest arg0, HttpServletResponse arg1,
			AccessDeniedException arg2) throws IOException, ServletException {
		arg1.sendRedirect(errorPage);

	}

}
