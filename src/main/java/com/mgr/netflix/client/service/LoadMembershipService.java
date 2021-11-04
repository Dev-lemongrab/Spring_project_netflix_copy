package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;

@Service
public class LoadMembershipService {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public String loadMembership(String email) throws Exception {
		String result ="";
		try {
			result = clientDaoImpl.loadMembership(email);
			
		}catch (Exception e) {
			throw new Exception();
		}
		
		return result;
	}
	
}
