package com.mgr.netflix.client.dao;



import java.nio.channels.MembershipKey;
import java.util.List;
import java.util.Map;

import com.mgr.netflix.client.validator.ChangePhoneValidator;
import com.mgr.netflix.client.vo.ChangeEmailVO;
import com.mgr.netflix.client.vo.ClientPaymentVO;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.MembershipVO;
import com.mgr.netflix.client.vo.ModifyClientVO;
import com.mgr.netflix.client.vo.PhoneChangeVO;
import com.mgr.netflix.client.vo.ProfileInfo;

public interface ClientDAO {
	
	
	public ClientVO AuthForLogin(String email);
	
	public void NoMembershipJoin(ClientVO newClient);
	
	public void MembershipJoin(ClientVO clientVO);
	
	public int changePwService(ModifyClientVO modifyVO);
	
	public String loadMembership(String email);
	
	public int changeMembership(ClientVO clientVO);
	
	public void modifybillingDate(ClientVO clientVO);
	
	public void changePaymentInfo(ClientPaymentVO clientPaymentVO);
	
	public MembershipVO membershipPrice(String email);
	
	public String nextMonth(String email);
	
	public int changePhone(PhoneChangeVO phoneChangeVO);
	
	public void changeEmail(ChangeEmailVO changeEmailVO);
	
	public void deleteMembership(String email);
	
	public List<ProfileInfo> getProfileList(String email);
	
	public ProfileInfo getProfile(ProfileInfo profileIno);
	
	public void InsertProfile(ProfileInfo profileInfo);
	
	public void UpdateProfile(ProfileInfo profileInfo);
	
	public void DeleteProfile(String email);
	
	public void DeleteWishLike(String email);
}
