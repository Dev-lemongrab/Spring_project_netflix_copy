package com.mgr.netflix.client.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mgr.netflix.client.vo.ChangeEmailVO;
import com.mgr.netflix.client.vo.ClientPaymentVO;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.MembershipVO;
import com.mgr.netflix.client.vo.ModifyClientVO;
import com.mgr.netflix.client.vo.PhoneChangeVO;
import com.mgr.netflix.client.vo.ProfileInfo;

@Repository
public class ClientDAOImpl implements ClientDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String namespace="Client";
	

	@Override
	public ClientVO AuthForLogin(String email) {
		
		return sqlSession.selectOne(namespace+".SelectByEmail", email);		
	}


	@Override
	public void NoMembershipJoin(ClientVO newClient) {
		sqlSession.insert(namespace+".InsertNoMembership", newClient);
	}


	@Override
	public void MembershipJoin(ClientVO clientVO) {
		sqlSession.update(namespace+".InsertMembership", clientVO);
	}


	@Override
	public int changePwService(ModifyClientVO modifyVO) {
		return sqlSession.update(namespace+".ChangePassword", modifyVO);
	}


	@Override
	public String loadMembership(String email) {
		return sqlSession.selectOne(namespace+".LoadMembership", email);
	}


	@Override
	public int changeMembership(ClientVO clientVO) {
		return sqlSession.update(namespace + ".ChangeMembership", clientVO);
	}


	@Override
	public void modifybillingDate(ClientVO clientVO) {
		sqlSession.update(namespace+".ModifyBillindDate", clientVO);
		
	}


	@Override
	public void changePaymentInfo(ClientPaymentVO clientPaymentVO) {
		sqlSession.update(namespace+".ChangePaymentInfo", clientPaymentVO);
		
	}


	@Override
	public MembershipVO membershipPrice(String email) {
		return sqlSession.selectOne(namespace+".MembershipPrice", email);
	}


	@Override
	public String nextMonth(String email) {
		return sqlSession.selectOne(namespace+".NextMonth", email);
	}


	@Override
	public int changePhone(PhoneChangeVO phoneChangeVO) {
		return sqlSession.update(namespace+".PhoneChange", phoneChangeVO);
	}


	@Override
	public void changeEmail(ChangeEmailVO changeEmailVO) {
		sqlSession.update(namespace+".EmailChange", changeEmailVO);
		
	}


	@Override
	public void deleteMembership(String email) {
		sqlSession.update(namespace+".DeleteMembership", email);
		
	}

	//프로필리스트
	@Override
	public List<ProfileInfo> getProfileList(String email) {
		return sqlSession.selectList(namespace+".getProfileList", email);

	}


	@Override
	public ProfileInfo getProfile(ProfileInfo profileInfo) {
		return sqlSession.selectOne(namespace+".getProfile", profileInfo);
	}


	@Override
	public void InsertProfile(ProfileInfo profileInfo) {
		sqlSession.insert(namespace+".InsertProfile", profileInfo);
		
	}


	@Override
	public void UpdateProfile(ProfileInfo profileInfo) {
		sqlSession.update(namespace+".UpdateProfile", profileInfo);
		
	}


	@Override
	public void DeleteProfile(String email) {
		sqlSession.delete(namespace+".DeleteProfile", email);
		
	}
	
	@Override
	public void DeleteWishLike(String email) {
		sqlSession.delete(namespace+".DeleteWishLike", email);
			
	}
	
	



}
