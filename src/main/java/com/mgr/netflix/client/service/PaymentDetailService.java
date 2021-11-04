package com.mgr.netflix.client.service;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ClientVO;

@Service
public class PaymentDetailService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public ClientVO paymentDetail(AuthInfo authInfo) {
		ClientVO clientVO = clientDaoImpl.AuthForLogin(authInfo.getEmail()); 
		String[] paymentDate = clientVO.getMembership_date().split("-");
		clientVO.setMembership_date(paymentDate[0]+"년 "+paymentDate[1]+ "월 " +paymentDate[2].substring(0, 2)+"일");
		return clientVO;
	}
}
