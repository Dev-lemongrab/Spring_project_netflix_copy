package com.mgr.netflix.client.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mgr.netflix.client.vo.AuthInfo;

public class ClientInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("preHandle");
		HttpSession session = request.getSession(false);//세션이 없으면 만들지 않겠다는 뜻
		if(session!=null) {
			System.out.println("session");
			AuthInfo  authInfo = (AuthInfo)session.getAttribute("authInfo");
			if(authInfo!=null) {
				if(authInfo.getMembership_chk()==null) {
					response.sendRedirect("index");
				}
				return true;
			}
		}
		response.sendRedirect(request.getContextPath()+"/clientLogin.do");
		return false;
	}
}