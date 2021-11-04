package com.mgr.netflix.client.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

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

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.service.AuthService;
import com.mgr.netflix.client.service.ChangeEmailService;
import com.mgr.netflix.client.service.ChangeMembership;
import com.mgr.netflix.client.service.ChangePasswordService;
import com.mgr.netflix.client.service.ChangePaymentInfoService;
import com.mgr.netflix.client.service.ChangePhoneService;
import com.mgr.netflix.client.service.DeleteMembershipService;
import com.mgr.netflix.client.service.LoadMembershipService;
import com.mgr.netflix.client.service.MembershipPriceService;
import com.mgr.netflix.client.service.ModifyBillingdateService;
import com.mgr.netflix.client.service.NextMonthService;
import com.mgr.netflix.client.service.PaymentDetailService;
import com.mgr.netflix.client.service.ProfileService;
import com.mgr.netflix.client.validator.ChangeEmailValidator;
import com.mgr.netflix.client.validator.ChangePaymentValidator;
import com.mgr.netflix.client.validator.ChangePhoneValidator;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ChangeEmailVO;
import com.mgr.netflix.client.vo.ClientLoginVO;
import com.mgr.netflix.client.vo.ClientPaymentVO;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.MembershipVO;
import com.mgr.netflix.client.vo.ModifyClientVO;
import com.mgr.netflix.client.vo.PhoneChangeVO;
import com.mgr.netflix.contents.service.ContentsService;
import com.mgr.netflix.contents.service.WishLikeService;

@Controller
@RequestMapping("/mypage/")
public class mypageController {
	@Autowired
	private ChangePasswordService changePasswordService;
	@Autowired
	private LoadMembershipService loadMembershipService;
	@Autowired
	private ChangeMembership changeMembership;
	@Autowired
	private AuthService authService;
	@Autowired
	private ModifyBillingdateService modifyBillingDateService;
	@Autowired
	private ChangePaymentInfoService changePaymentInfoService;
	@Autowired
	private PaymentDetailService paymentDetailService;
	@Autowired
	private MembershipPriceService membershipPriceService;
	@Autowired
	private NextMonthService nextMonthService;
	@Autowired
	private ChangePhoneService changePhoneService;
	@Autowired
	private ChangeEmailService changeEmailService;
	@Autowired
	private DeleteMembershipService deleteMembershipService;
	@Autowired
	private ProfileService profileService;
	
	
	
	
	//로그인이 안돼있으면 모든기능에 접근하지못하도록 해야한다.	
	@RequestMapping(value="mypage.do", method = RequestMethod.GET)
	public String mypage(Model model, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		if(authInfo.getMembership_chk()!=null) {
			String nextMonth = nextMonthService.nextMonth(authInfo.getEmail());
			session.setAttribute("nextMonth", nextMonth);
			session.setAttribute("lastCardNum",authInfo.getCardNum().substring(12,16));
			session.setAttribute("phone", authInfo.getPhone() == null ? "등록안됨" : authInfo.getPhone());
		}else {
			return "index";
		}
		return "mypage/mypage";
	}
	
	//비밀번호 변경
	@RequestMapping(value="changePw.do", method=RequestMethod.GET)
	public String changePwStep1(@ModelAttribute("ModifyClientVO")ModifyClientVO modifyClientVO, 
								@ModelAttribute("loginVo")ClientLoginVO loginVo,HttpSession session) {
		if((AuthInfo)session.getAttribute("authInfo")==null) {
			return "redirect:/clientLogin.do";
		}
		return "mypage/pwChange";
	}
	
	@ResponseBody
	@RequestMapping(value="changePw.do", method=RequestMethod.POST, produces = "application/json; charset=utf8")
	public int changePw(ModifyClientVO modifyClientVO, Errors errors, HttpSession session) {
		if(errors.hasErrors()) {
			System.out.println("error발생");
			return 0;
		}
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		System.out.println(modifyClientVO.getCurrenPassword());
		try {
			if(modifyClientVO.getCurrenPassword().equals(authInfo.getPassword())) {//세션에 있는 정보의 비번이랑 일치하는지 확인
				modifyClientVO.setEmail(authInfo.getEmail());
				int result = changePasswordService.changePwService(modifyClientVO.getCurrenPassword(), modifyClientVO.getNewPassword(),modifyClientVO);
				authInfo.setPassword(modifyClientVO.getNewPassword());
				session.setAttribute("authInfo", authInfo);
				return result;
			}else {
				return 0;
			}
		}catch(Exception e){
			System.out.println("기존비밀번호가 일치하지 않습니다");
			return 0;
		}
	}
	
	//멤버쉽 바꾸기 
	@RequestMapping(value="changeplan.do", method=RequestMethod.GET)
	public String changePlan(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		try {
			String originMembership = loadMembershipService.loadMembership(authInfo.getEmail());
			if(authInfo.getMembership().equals(originMembership)) {
				return "mypage/changeplan";				
			}
		} catch (Exception e) {
			return "mypage/mypage";
		}
		return "mypage/mypage";
	}
	
	@ResponseBody
	@RequestMapping(value="changeplan.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public int changePlan2(@RequestParam Map<String, Object> item, HttpSession session) {
		System.out.println(item.get("select_item"));
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String email = authInfo.getEmail();
		int result = changeMembership.changeMembership(email, (String)item.get("select_item"));
		profileService.DeleteProfile(email);//프로필도 삭제
		
		
		session.removeAttribute("profileInfo");
		session.removeAttribute("profileList");
		System.out.println(result);
		if(result==1) {
			authInfo.setMembership((String)item.get("select_item"));
			session.setAttribute("authInfo", authInfo);
		}else {
			return 0;
		}
	
		return result;
	}
	
	//결제일변경
	@RequestMapping(value="changepaymentdate.do", method = RequestMethod.GET)
	public String changePaymentDate() {
		return "mypage/Changepaymentdate_1";
	}
	
	
	@RequestMapping(value="changepaymentdate.do", method = RequestMethod.POST)
	public String changePaymentDate(@RequestParam("newBillingDay") String newBillingDay, HttpSession session, HttpServletResponse response) throws Exception {
		//System.out.println(newBillingDay);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		modifyBillingDateService.modifyBillingDate(authInfo, newBillingDay);
		authInfo = authService.authenticate(authInfo.getEmail(), authInfo.getPassword()); //업데이트 후 세션 재등록 
		String nextMonth = nextMonthService.nextMonth(authInfo.getEmail());
		session.setAttribute("nextMonth", nextMonth);//다음달 결제일도 세션에 재등록
		session.setAttribute("authInfo", authInfo);
		PrintWriter out = response.getWriter();
		out.println("<script>alert('멤버쉽 변경이 완료됐습니다');</script>");
		out.flush();
		return "mypage/mypage";
	}
	
	//결제정보변경
	@RequestMapping(value="managePaymentInfo.do", method = RequestMethod.GET)
	public String managePaymentInfo(@ModelAttribute("clientPaymentVO")ClientPaymentVO clientPaymentVO) {
		return "mypage/Managepaymentinformation_1";
	}
	
	@RequestMapping(value="managePaymentInfo.do", method = RequestMethod.POST)
	public String managePaymentInfo2(@ModelAttribute("clientPaymentVO")ClientPaymentVO clientPaymentVO, HttpServletResponse response,HttpSession session, Errors errors) throws Exception  {
		
		
		new ChangePaymentValidator().validate(clientPaymentVO, errors);
		
		if(errors.hasErrors()) {
			return "mypage/Managepaymentinformation_1";
		}
		if(!clientPaymentVO.isPersonalInfoGateway()) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('카드정보공유에 대한 동의를 해주세요.');</script>");
			out.flush();
			return "redirect:/mypage/Managepaymentinformation_1";
		}
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		clientPaymentVO.setEmail(authInfo.getEmail());
		//서비스 통해서update
		System.out.println(clientPaymentVO);
		changePaymentInfoService.changePaymentInfo(clientPaymentVO);
		authInfo = authService.authenticate(authInfo.getEmail(), authInfo.getPassword()); //업데이트 후 세션 재등록 
		session.setAttribute("authInfo", authInfo);
		session.setAttribute("lastCardNum",authInfo.getCardNum().substring(12,16));//카드마지막번호 세션 재등록
		
		return "mypage/mypage";
	}
	
	//결제상세정보
	@RequestMapping(value="paymentdetail.do", method=RequestMethod.GET)
	public String paymentdetail(Model model, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		ClientVO clientVO = paymentDetailService.paymentDetail(authInfo);
		MembershipVO membershipVO = membershipPriceService.membershipPrice(clientVO);
		String mem_year = clientVO.getMembership_date().substring(0, 4);
		int mem_month = Integer.parseInt(clientVO.getMembership_date().substring(6, 8))+1;//다음 월계산
		String mem_day = clientVO.getMembership_date().substring(10, 12);
		model.addAttribute("clientVO", clientVO);
		model.addAttribute("year",mem_year);
		model.addAttribute("month",mem_month);
		model.addAttribute("day",mem_day);
		model.addAttribute("lastCardNum",clientVO.getCardNum().substring(12,16));
		model.addAttribute("membershipVO",membershipVO);
		return "mypage/payment_details";
	}
	
	
	
	//휴대폰 번호 변경
	@RequestMapping(value="changephone.do", method = RequestMethod.GET)
	public String phoneChange(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String phone = authInfo.getPhone();
		if(phone ==null) {
			session.setAttribute("phone","등록안됨");
 		}else {
 			session.setAttribute("phone",authInfo.getPhone());//세션에 폰번호 재등록 
 		}
		return "mypage/phoneChange";
	}
	
	@RequestMapping(value="changephone.do", method = RequestMethod.POST)
	@ResponseBody
	public String phoneChange2(@ModelAttribute("phoneChangeVO")PhoneChangeVO phoneChangeVO, HttpSession session, Errors errors, HttpServletResponse response) throws Exception {
		
		new ChangePhoneValidator().validate(phoneChangeVO, errors);
		if(errors.hasErrors()) {
			return "mypage/phoneChange";
		}
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		phoneChangeVO.setEmail(authInfo.getEmail());
		int changePhone = changePhoneService.ChangePhone(phoneChangeVO);
		AuthInfo newAuthInfo = authService.authenticate(authInfo.getEmail(), authInfo.getPassword());
		session.setAttribute("authInfo", newAuthInfo);
		if(changePhone==1) {
			return "<html><body><script>alert('휴대폰번호 변경 완료!'); location.href='mypage.do'; </script></body></html>";			
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('휴대폰번호 변경 실패!');</script>");
			out.flush();
		}
		return "mypage/phoneChange";
	}
	
	//이메일 변경
	@RequestMapping(value="changeemail.do", method = RequestMethod.GET)
	public String emailChange(HttpSession session) {
		return "mypage/emailChange";
	}
	@RequestMapping(value="changeemail.do", method = RequestMethod.POST)
	public String emailChange2(@ModelAttribute("changeEmail")ChangeEmailVO changeEmailVO,HttpSession session, Errors errors) throws Exception {
		new ChangeEmailValidator().validate(changeEmailVO, errors);
		if(errors.hasErrors()) {
			return "mypage/emailChange";
		}
		System.out.println(changeEmailVO);
		changeEmailService.ChangeEmail(changeEmailVO);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		authInfo.setEmail(changeEmailVO.getNewEmail());
		
		return "mypage/mypage";
	}
	
	
	//멤버쉽해지
	@RequestMapping(value="planCancel.do", method = RequestMethod.GET)
	public String planCancel(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String nextMonth = nextMonthService.nextMonth(authInfo.getEmail());
		session.setAttribute("nextMonth", nextMonth);
		return "mypage/planCancel";
	}
	
	@RequestMapping(value="planCancel2.do", method = RequestMethod.GET)
	@ResponseBody
	public String planCancel2(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String email = ((AuthInfo)session.getAttribute("authInfo")).getEmail();
		
		deleteMembershipService.DeleteMembership(email);
		
		try {
			authInfo = authService.authenticate(authInfo.getEmail(), authInfo.getPassword());
			session.setAttribute("authInfo", authInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "<html><body><script charset='UTF-8'>alert(\"Cancel Membership\"); location.href='../main.cdo'; </script></body></html>";
	}
	@RequestMapping(value="serviceCenter.do")
	public String serviceCenter() {
		return "mypage/serviceCenter";
	}
	
	
}
