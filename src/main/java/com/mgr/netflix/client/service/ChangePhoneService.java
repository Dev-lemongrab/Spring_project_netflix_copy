package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.PhoneChangeVO;

@Service
public class ChangePhoneService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public int ChangePhone(PhoneChangeVO phonechangeVO) {
		return clientDaoImpl.changePhone(phonechangeVO);
	}
}
