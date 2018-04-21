package com.xxs.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(value="/*",initParams={@WebInitParam(name="charSet",value="UTF-8")})
public class LMFilter implements Filter {

	private String charSet;
    public LMFilter() {
    }
    
    public void init(FilterConfig fConfig) throws ServletException {
    	charSet= fConfig.getInitParameter("charSet");
	}

	public void destroy() {
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(charSet);
		response.setCharacterEncoding(charSet);
		response.setContentType("text/html;charset="+charSet);
		chain.doFilter(request, response);
	}

}
