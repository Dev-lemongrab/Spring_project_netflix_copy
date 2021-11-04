package com.mgr.netflix.client.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mgr.netflix.client.service.AuthService;
import com.mgr.netflix.client.service.LoginValidator;
import com.mgr.netflix.client.service.ProfileService;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ClientLoginVO;
import com.mgr.netflix.client.vo.ProfileInfo;

@Controller
@RequestMapping("/clientLogin.do")
public class LoginController {
	
	@Autowired
	private AuthService authService;
	@Autowired
	private ProfileService profileService;
	
	@RequestMapping(method = RequestMethod.GET) //쿠키를 통해 아이디를 기억하도록 어노테이션쓰면 Cookie cookie = new Cookie(); 이런거 안해도 됨 
	public String form(@ModelAttribute("loginVo")ClientLoginVO loginVo, @CookieValue(value="REMEMBER", required = false)Cookie cookie)  {
		if(cookie != null) {
			loginVo.setEmail(cookie.getValue()); //-> 브라우저에 쿠키가 있으면 쿠키안에 있는 값을 집어넣어줌
			loginVo.setLoginInfo(true); // -> 아이디 기억체크 부분을 true로 
		}
		return "clientLogin/login";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(@ModelAttribute("loginVo")ClientLoginVO loginVo, Errors errors, HttpSession session, HttpServletResponse response) {
		new LoginValidator().validate(loginVo, errors);
		if(errors.hasErrors()) {
			System.out.println("error발생");
			return "clientLogin/login";
		}
		System.out.println(loginVo);
		try {
			AuthInfo authInfo = authService.authenticate(loginVo.getEmail(), loginVo.getPassword());
			session.setAttribute("authInfo", authInfo);//세션에 사용자 정보 등록
			//로그인 전용 객체 authInfo를 세션에 담음. -> 이후 쿠키 생성해줌 GET에서도 똑같은 이름
			Cookie rememberCookie = new Cookie("REMEMBER", loginVo.getEmail()); 
			rememberCookie.setPath("*.do");//.do로가는건 전부 브라우저 안에 쿠키생성
			if(loginVo.isLoginInfo()) {
				rememberCookie.setMaxAge(60*60*24*30);
			}else {
				rememberCookie.setMaxAge(0);//체크안돼있으면 쿠키유지시간 0으로..!
			}
			response.addCookie(rememberCookie);//마지막 애드쿠키를 해줘야한다 응답객체안에 한번넣어주면 모든 response객체는 항상 쿠키를 들고 다님!
			return "redirect:/main.cdo";
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error발생");
			
			errors.reject("there is error");
			return "clientLogin/login";
		}
	}
	
	
		
}
