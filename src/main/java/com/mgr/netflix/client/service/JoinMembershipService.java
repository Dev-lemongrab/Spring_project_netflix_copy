package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientPaymentVO;
import com.mgr.netflix.client.vo.ClientVO;

@Service
public class JoinMembershipService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public void JoinMembership(ClientPaymentVO clientPaymentVO, String membership) {
		ClientVO clientVO = new ClientVO();
		clientVO.setEmail(clientPaymentVO.getEmail());
		clientVO.setCardNum(clientPaymentVO.getCardNum());
		clientVO.setExpireDate(clientPaymentVO.getExpireDate());
		clientVO.setName(clientPaymentVO.getName());
		clientVO.setBirthYear(clientPaymentVO.getBirthYear());
		clientVO.setBirthMonth(clientPaymentVO.getBirthMonth());
		clientVO.setBirthDay(clientPaymentVO.getBirthDay());
		clientVO.setMembership_chk("true");
		clientVO.setMembership(membership);
		clientDaoImpl.MembershipJoin(clientVO);
	}
}
