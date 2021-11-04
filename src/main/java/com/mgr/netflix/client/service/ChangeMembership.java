package com.mgr.netflix.client.service;

import java.util.Enumeration;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientVO;

@Service
public class ChangeMembership {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public int changeMembership(String email, String item) {
		ClientVO clientVO = new ClientVO();
		clientVO.setEmail(email);
		clientVO.setMembership(item);
		clientDaoImpl.DeleteProfile(email);
		clientDaoImpl.DeleteWishLike(email);
		return clientDaoImpl.changeMembership(clientVO);
	}
}
