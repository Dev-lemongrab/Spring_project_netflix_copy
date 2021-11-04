package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientJoinVO;
import com.mgr.netflix.client.vo.ClientVO;

@Service
public class JoinService {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public void nomembership_join(ClientJoinVO joinVo) throws Exception {
		ClientVO client = clientDaoImpl.AuthForLogin(joinVo.getEmail());
		if(client != null) {
			throw new Exception(); 
		} //있는 회원인지 아닌지 확인하려고
		ClientVO newClient = new ClientVO(); //멤버쉽가입전이니까 일단 이메일이랑비번만 세팅해준다.
		newClient.setEmail(joinVo.getEmail()); 
		newClient.setPassword(joinVo.getPassword());
		clientDaoImpl.NoMembershipJoin(newClient);
		
	}
	
	
	
}
