package com.mgr.netflix.client.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ProfileInfo;

@Service
public class ProfileService {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	private static int row_num;
	//프로필 리스트불러오기
	public List<ProfileInfo> ProfileList(String email) {
		List<ProfileInfo> profileList = clientDaoImpl.getProfileList(email);
		System.out.println(profileList);
		return profileList;
	}
	
	//프로필 하나 불러오기
	public ProfileInfo Profile(String email, int row_num) {
		ProfileInfo profileInfo = new ProfileInfo();
		profileInfo.setEmail(email);
		profileInfo.setRow_num(row_num);
		profileInfo = clientDaoImpl.getProfile(profileInfo);
		return profileInfo; 
	}
	//프로필 멤버쉽에따라 삽입 
	public void InsertProfile(ProfileInfo profileInfo, String membership) {
		row_num=0;
		profileInfo.setProfile_name("프로필이름");
		profileInfo.setRow_num(++row_num);
		if(membership.equals("basic")) {
			clientDaoImpl.InsertProfile(profileInfo);			
		}else if(membership.equals("standard")) {
			for(int i = 0; i <2 ;i++) {
				profileInfo.setRow_num(i+row_num);
				clientDaoImpl.InsertProfile(profileInfo);
			}
		}else {
			for(int i= 0 ; i<3 ;i++) {
				profileInfo.setRow_num(i+row_num);
				clientDaoImpl.InsertProfile(profileInfo);
			}
		}
	}
	//프로필 수정 
	public void UpdateProfile(ProfileInfo profileInfo) {
		clientDaoImpl.UpdateProfile(profileInfo);
	}
	
	//프로필 삭제
	public void DeleteProfile(String email) {
		clientDaoImpl.DeleteProfile(email);
	}
	
	
	
}
