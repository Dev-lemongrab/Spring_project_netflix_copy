package com.mgr.netflix.contents.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.ProfileInfo;
import com.mgr.netflix.contents.service.CheckDuplicateEmailService;
import com.mgr.netflix.contents.service.ContentsService;
import com.mgr.netflix.contents.service.WishLikeService;
import com.mgr.netflix.contents.vo.ContentsVO;
import com.mgr.netflix.contents.vo.ViewedVO;
import com.mgr.netflix.contents.vo.WishAndLikeVO;

@Controller
public class MainController {
	
	@Autowired
	private ContentsService contentsService;
	@Autowired
	private CheckDuplicateEmailService checkDuplicatedEmailService;
	@Autowired
	private WishLikeService wishLikeService;
	
	@RequestMapping(value="/main.cdo", method = RequestMethod.GET)
	public String Main01(HttpSession session) {
		
		List<ContentsVO> contentsList=contentsService.ContentsList();
		List<ContentsVO> randomList=contentsService.ContentsList();
		WishAndLikeVO wishLikeVO = new WishAndLikeVO();
		wishLikeVO.setEmail(((AuthInfo)session.getAttribute("authInfo")).getEmail());//세션의 이메일 등록
		wishLikeVO.setRow_num(((ProfileInfo)session.getAttribute("profileInfo")).getRow_num());//세션의 프로필번호 등록 
		List<WishAndLikeVO> wishLIkeInfo = (List<WishAndLikeVO>)wishLikeService.wishList(wishLikeVO);//내가찜한 컨텐츠 리스트
	
		session.setAttribute("wishLikeInfo", wishLIkeInfo);
		//랜덤으로 섞기 전에 세션에 넣기 
		session.setAttribute("contentsList", contentsList);
		//랜덤으로 섞기 
		Collections.shuffle(randomList);
		session.setAttribute("randomList", randomList);
	
		for(ContentsVO i : contentsList) {
			System.out.println(i.toString());
			
			
			
		}
		
		
		return "main";
	}
	
	@RequestMapping(value="/index.cdo")
	public String Index(HttpSession session) {
		AuthInfo authInfo=(AuthInfo)session.getAttribute("authInfo");
		if(authInfo == null) {
			return "index";
		}else {
			String membership_chk = authInfo.getMembership_chk();
			if(membership_chk==null) {
				return "join_index";			
			}		
		}
		return "";
		
	}
	@RequestMapping(value="/index.cdo", method = RequestMethod.POST)
	public String login(@ModelAttribute("clientVO")ClientVO clientVO, HttpSession session) {
		
		if(checkDuplicatedEmailService.checkDuplicateEmail(clientVO.getEmail())) {
			session.setAttribute("joinEmail", clientVO.getEmail());//false면 아이디 중복 
			return "redirect:/join/step2.do";
		}else {
			session.setAttribute("joinEmail", clientVO.getEmail());//이메일 전달을위해 세션에 등록 
			return "join/0";//아이디 있으니까 로그인 하는곳
		}
	}
	
	@RequestMapping(value="/wish.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int wish(WishAndLikeVO wishAndLikeVO ) {
		//이메일이랑 컨텐트 id 프로필 넘버로 이전에 찜, 좋아요, 싫어요 했는지 검색 
		//있으면 update로 //없으면 insert로 
		try {
			
			System.out.println(wishAndLikeVO);
			if(wishLikeService.SelectWishLike(wishAndLikeVO)!= null) {
				wishLikeService.UpdateWish(wishAndLikeVO);
			}else {
				wishLikeService.InsertWish(wishAndLikeVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
	@RequestMapping(value="/like.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int like(WishAndLikeVO wishAndLikeVO ) {
		//이메일이랑 컨텐트 id 프로필 넘버로 이전에 찜, 좋아요, 싫어요 했는지 검색 
		//있으면 update로 //없으면 insert로 
		try {
			System.out.println(wishAndLikeVO);
			if(wishLikeService.SelectWishLike(wishAndLikeVO)!= null) {
				wishLikeService.UpdateLike(wishAndLikeVO);
			}else {
				wishLikeService.InsertLike(wishAndLikeVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
	@RequestMapping(value="/dislike.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int dislike(WishAndLikeVO wishAndLikeVO ) {
		//이메일이랑 컨텐트 id 프로필 넘버로 이전에 찜, 좋아요, 싫어요 했는지 검색 
		//있으면 update로 //없으면 insert로 
		try {
			System.out.println(wishAndLikeVO);
			if(wishLikeService.SelectWishLike(wishAndLikeVO)!= null) {
				wishLikeService.UpdateDislike(wishAndLikeVO);
			}else {
				wishLikeService.InsertDislike(wishAndLikeVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
	//시청기록 보기
	@RequestMapping(value="viewed.cdo")
	public String viewed(ViewedVO viewedVO, HttpSession session) {
		viewedVO.setEmail(((AuthInfo)session.getAttribute("authInfo")).getEmail());
		viewedVO.setRow_num(((ProfileInfo)session.getAttribute("profileInfo")).getRow_num());
		List<ViewedVO> viewedList = contentsService.ViewedList(viewedVO);
		System.out.println(viewedList);
		session.setAttribute("viewedList", viewedList);
		
		return "mypage/viewed";
	}
	//시청기록 등록
	@RequestMapping(value="viewed.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int insertView(ViewedVO viewedVO, HttpSession session) {
		contentsService.InsertView(viewedVO);
		return 1;
	}
	
}
