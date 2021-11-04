package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;

@Service
public class DeleteMembershipService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public void DeleteMembership(String email) {
		clientDaoImpl.deleteMembership(email);
		clientDaoImpl.DeleteProfile(email);//프로필도 함께삭제
		clientDaoImpl.DeleteWishLike(email);
	}

	
}
