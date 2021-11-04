package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;

@Service
public class NextMonthService {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public String nextMonth(String email) {	
		String[] nextMonth = clientDaoImpl.nextMonth(email).split("-");
		return nextMonth[0]+"년 "+ nextMonth[1]+"월 " +nextMonth[2]+"일";
	}
	
}
