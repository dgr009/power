package com.icia.api.filter;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.web.filter.*;

public class CORSFilter extends OncePerRequestFilter {
	private static final Logger LOG = LoggerFactory.getLogger(CORSFilter.class);
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
		if (request.getHeader("Access-Control-Request-Method") != null && "OPTIONS".equals(request.getMethod())) {
			// 사용자에게 뷰를 서비스하는 주소를 지정
			response.addHeader("Access-Control-Allow-Origin", "http://localhost");
			response.addHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
			response.addHeader("Access-Control-Allow-Headers", "content-type, accept, api_id, api_key");
			response.addHeader("Access-Control-Max-Age", "1800");
		}

		filterChain.doFilter(request, response);
	}
}
