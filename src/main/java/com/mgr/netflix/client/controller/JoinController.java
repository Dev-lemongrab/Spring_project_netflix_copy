package com.mgr.netflix.client.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.client.service.AuthService;
import com.mgr.netflix.client.service.JoinMembershipService;
import com.mgr.netflix.client.service.JoinService;
import com.mgr.netflix.client.service.ProfileService;
import com.mgr.netflix.client.validator.JoinValidator;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ClientJoinVO;
import com.mgr.netflix.client.vo.ClientPaymentVO;
import com.mgr.netflix.client.vo.ProfileInfo;

@Controller
@RequestMapping("/join/")
public class JoinController {
	
	@Autowired
	private JoinService joinService;
	@Autowired
	private AuthService authService;
	@Autowired
	private JoinMembershipService joinMembershipService;
	@Autowired
	private ProfileService profileService;
	
	
	
	@RequestMapping(value = "step0.do", method = RequestMethod.POST)
	@ResponseBody
	public String hadleStep0(@RequestParam("password")String password, HttpSession session)  {
		
		String email = (String)session.getAttribute("joinEmail");
		AuthInfo authInfo;
		try {
			authInfo = authService.authenticate(email, password);//세션에 해당아이디의 정보를 모두불러와서 넣어줌
			session.setAttribute("authInfo", authInfo);
//			List<ProfileInfo> profileList = profileService.ProfileList(authInfo.getEmail());//프로필 정보 불러오기 
//			session.setAttribute("profileList", profileList);//프로필 리스트 세션에 등록 
			if(authInfo.getMembership_chk()==null) {
				return "<html><body><script>location.href='step4.do'; </script></body></html>";		//멤버쉽이 없으면 멤버쉽가입 페이지로 ㄱ	
			}else {
				return "<html><body><script>location.href='../main.cdo'; </script></body></html>";//멤버쉽 있으면 메인으로 
			}
		} catch (Exception e) {
			return "<html><body><script>location.href='../main.cdo';</script></body></html>";//비번틀리면 메인으로 보냄 메인에서는 세션이 없으니 index페이지로 보내줌 
		}
		
	}
	
	@RequestMapping(value="step1.do",method = RequestMethod.GET)
	public String handleStep1() {
		return "join/1";
	}
	
	@RequestMapping(value="step2.do", method=RequestMethod.GET) 
	public String handleStep2(Model model) {
		model.addAttribute("formData", new ClientJoinVO());
		return "join/2";
	}
	
	@RequestMapping(value="step3.do", method = RequestMethod.POST)
	public String handleStep3(@RequestParam(value="pipcConsent", defaultValue = "false")boolean agree,
							  @RequestParam(value="emailPreference", defaultValue = "false")boolean sms,
							  @ModelAttribute(value = "formData")ClientJoinVO joinVO, HttpSession session){
		
		if(!agree) {
			return "redirect:/join/step2.do";
		}
		try {
			joinService.nomembership_join(joinVO);//여긴 지금 회원정보에 아이디, 비밀번호 밖에 안들어가 있음 나머지는 결제할때 update!
			AuthInfo authInfo = authService.authenticate(joinVO.getEmail(), joinVO.getPassword());//가입하자마자 바로 로그인됨
			session.setAttribute("authInfo", authInfo);//세션등록, 멤버쉽 부분은 null인 상태기 때문에 멤버쉽 가입후에 다시 세션등록 
		}catch (Exception e) {
			System.out.println("아이디중복!");//이미 있는 계정일 경우 오류를 던지도록 설계 JoinService참고
			return "redirect:/join/step2.do";//step2로 보내는데 메세지를 띄워야한다.
		}
		
		return "join/3";
	}
	
	//url로 직접 접근했을경우 전페이지로redirect
	@RequestMapping(value="step3.do", method = RequestMethod.GET)
	public String handleStep3(){
			return "redirect:/join/step2.do";
	}
	@RequestMapping(value="step4.do", method = RequestMethod.GET)
	public String handleStep4() {
		return "join/4"; 
	}
	
	@RequestMapping(value="step5.do", method = RequestMethod.POST)
	public String handleStep5(@RequestParam(value="planChoice")String membership, HttpSession session) {
		String price ="";
		if (membership.equals("basic")) 
			price="9,500";
		else if (membership.equals("standard")) 
			price="12,000";
		else 
			price="14,500";
		session.setAttribute("membership",membership);
		session.setAttribute("price",price);
		
		return "join/5";
	}
	@RequestMapping(value="step6.do", method = RequestMethod.GET)
	public String handleStep6(@ModelAttribute("ClientPaymentVO")ClientPaymentVO clientPaymentVO, HttpSession session) {
		return "join/6";
		
	}
	@RequestMapping(value = "step6.do", method = RequestMethod.POST)
	public String handleStep6_2(@ModelAttribute("ClientPaymentVO")ClientPaymentVO clientPaymentVO, HttpSession session, Errors errors) throws Exception {
		System.out.println(clientPaymentVO);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String email = authInfo.getEmail();
		clientPaymentVO.setEmail(email);
		new JoinValidator().validate(clientPaymentVO, errors);//폼입력 오류 있을 경우 오류 메세지를 넣어주고 
		if(errors.hasErrors()) {//에러가 있을경우
			return "join/6";//여기로 반환 
		}
		String membership = (String)session.getAttribute("membership");
		
		joinMembershipService.JoinMembership(clientPaymentVO, membership);//멤버쉽 조인해준다. 
		authInfo = authService.authenticate(authInfo.getEmail(), authInfo.getPassword());//세션에 재등록
		session.setAttribute("authInfo", authInfo);
//		List<ProfileInfo> profileList = profileService.ProfileList(authInfo.getEmail());//프로필 정보 불러오기 
//		session.setAttribute("profileList", profileList);//프로필 리스트 세션에 등록 
		return "redirect:/main.cdo";
	}
}
