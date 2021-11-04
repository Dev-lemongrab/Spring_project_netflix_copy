package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ChangeEmailVO;

@Service
public class ChangeEmailService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public void ChangeEmail(ChangeEmailVO changeEmailVO) {
		clientDaoImpl.changeEmail(changeEmailVO);
	}
}
