package com.mgr.netflix.contents.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.contents.dao.ContentsDAOImpl;

@Service
public class CheckDuplicateEmailService {
	
	@Autowired
	private ContentsDAOImpl contentsDaoImpl;
	
	public boolean checkDuplicateEmail(String email) {
		ClientVO clientVO = contentsDaoImpl.AuthForLogin(email);
		if(clientVO==null) {
			return true;//아이디가 없으면 트루반환
		}
		return false;//아이디가 있으면 false 반환
	}
}
