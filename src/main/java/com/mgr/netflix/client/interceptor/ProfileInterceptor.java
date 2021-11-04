package com.mgr.netflix.client.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mgr.netflix.client.service.ProfileService;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ProfileInfo;

public class ProfileInterceptor extends HandlerInterceptorAdapter{
	@Autowired
	private ProfileService profileService;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession(false);//세션이 없으면 만들지 않겠다는 뜻
		if(session!=null) {
			AuthInfo  authInfo = (AuthInfo)session.getAttribute("authInfo");
			if(authInfo !=null) {
				if(authInfo.getMembership_chk()!=null) {
					List<ProfileInfo> profileList = profileService.ProfileList(authInfo.getEmail());//프로필 화면으로 갈때마다 세션에 profile재등록
					
					if(!profileList.isEmpty()) {
						System.out.println("여기들어옴");
						session.setAttribute("profileList", profileList);
						return true;
					}else {
						ProfileInfo profileInfo = new ProfileInfo();//프로필인포 생성
						profileInfo.setEmail(authInfo.getEmail());//이메일 등록
						profileService.InsertProfile(profileInfo, authInfo.getMembership());//프로필 이름, 순번은 서비스 안에서등록
						profileList = profileService.ProfileList(authInfo.getEmail());
						session.setAttribute("profileList", profileList);
						response.sendRedirect(request.getContextPath()+"/profile/profile.do");
						return false;
					}
					
				}
				//프로필선택을 안했으면 프로필선택 페이지로 보내기 
				
			}
		}
		response.sendRedirect(request.getContextPath()+"/index.cdo");
		return false;
	}
}