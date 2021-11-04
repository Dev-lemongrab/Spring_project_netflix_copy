package com.mgr.netflix.contents.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ProfileInfo;

public class ContentsInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession(false);//세션이 없으면 만들지 않겠다는 뜻
		if(session!=null) {
			
			AuthInfo  authInfo = (AuthInfo)session.getAttribute("authInfo");
			if(authInfo !=null) {
				if(authInfo.getMembership_chk()!=null) {
					ProfileInfo profileInfo = (ProfileInfo)session.getAttribute("profileInfo");
					if(profileInfo!=null) {
						return true;						
					}
					response.sendRedirect(request.getContextPath()+"/profile/profile.do");
					return false;
				}
				//프로필선택을 안했으면 프로필선택 페이지로 보내기 
				
			}
		}
		response.sendRedirect(request.getContextPath()+"/index.cdo");
		return false;
	}
}