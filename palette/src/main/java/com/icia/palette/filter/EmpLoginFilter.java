package com.icia.palette.filter;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.userdetails.User;

import com.icia.palette.vo.Users;


@WebFilter("/miniHome/admin/*")
public class EmpLoginFilter implements Filter {
	private ArrayList<String> whiteList = new ArrayList();
    public EmpLoginFilter() {
    	
    }

	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		HttpSession session = req.getSession();
		String uri = req.getRequestURI();
		int a=uri.indexOf("/", 21);
		int b=uri.indexOf("/", 25);
		String owner=uri.substring(a+1, b);
		String go = uri;
		System.out.println("찍어봐**************************"+owner);
		Users user=(Users)session.getAttribute("user");
		// 화이트리스트에 없는 로그인이 필요한 경로에 접근했고 로그인이 안된 경우
		if((!whiteList.contains(uri)) && !user.getUserId().equals(owner)) {
			System.out.println("로그인 안됨");
			// 예를 들어 /board/view를 요청했는데 로그인이 안된 경우
			// 로그인을 한 다음 /board/view로 다시 이동해야 한다
			// 따라서 로그인 후 다시 이동할 주소를 세션에 저장한 다음 로그인으로 이동
			go = "/palette/users/login";
			session.setAttribute("destination", uri);
			//if(req.getParameter("bunho")!=null)
				//session.setAttribute("bunho", req.getParameter("bunho"));
			res.sendRedirect(go);
		} else {
		chain.doFilter(request, response);
	}
	}
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
