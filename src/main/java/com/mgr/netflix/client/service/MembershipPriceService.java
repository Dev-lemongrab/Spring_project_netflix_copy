package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.MembershipVO;

@Service
public class MembershipPriceService {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public MembershipVO membershipPrice(ClientVO clientVO) {
		return clientDaoImpl.membershipPrice(clientVO.getEmail());
	}
}
