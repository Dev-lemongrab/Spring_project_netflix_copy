package com.mgr.netflix.client.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mgr.netflix.client.service.ProfileService;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ProfileInfo;

@Controller
@RequestMapping("/profile/")
public class ProfileController {
	@Autowired
	private ProfileService profileService;
	
	@RequestMapping(value="profile.do",method =RequestMethod.GET )
	public String profile() {
		return "clientLogin/profiles";
	}
	@RequestMapping(value="profile2.do",method =RequestMethod.GET )
	public String profile2(@RequestParam("row_num")int row_num, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		ProfileInfo profileInfo = profileService.Profile(authInfo.getEmail(), row_num);
		session.setAttribute("profileInfo", profileInfo);
		System.out.println(profileInfo);
		return "redirect:/main.cdo";
	}
	@RequestMapping(value="profileInsert.do", method = RequestMethod.GET)
	public String profileInsert(HttpSession session) {
		
		
		
		return "redirect:profile.do";
	}
	
	
	@RequestMapping(value="profileEdit.do",method = RequestMethod.GET)
	public String profileEdit() {
		return "clientLogin/profilesedit";
	}
	
	//프로필 정보를 url로 받아온뒤 모델객체에 넣고 폼으로 ㄱ 
	@RequestMapping(value="profileEdit2.do",method = RequestMethod.GET)
	public String profileEdit2(@RequestParam("profile_name")String profile_name, @RequestParam("row_num")int row_num, Model model) {
		model.addAttribute("profile_name", profile_name);
		model.addAttribute("row_num", row_num);
		return "clientLogin/profilesform";
	}
	//프로필 수정
	@RequestMapping(value="profileForm.do", method = RequestMethod.POST)
	public String profileForm(ProfileInfo profileInfo, HttpSession session) {
		System.out.println(profileInfo);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		profileInfo.setEmail(authInfo.getEmail());
		profileService.UpdateProfile(profileInfo);
		return "redirect:/profile/profile.do";
	}
}
