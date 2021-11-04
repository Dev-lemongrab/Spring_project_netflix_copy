package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientPaymentVO;
@Service
public class ChangePaymentInfoService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public void changePaymentInfo(ClientPaymentVO clientPaymentVO) {
		clientDaoImpl.changePaymentInfo(clientPaymentVO);
	}
}
