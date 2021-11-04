package com.mgr.netflix.client.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.client.vo.ClientVO;

@Service
public class ModifyBillingdateService {
	
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	
	public void modifyBillingDate(AuthInfo authInfo, String newBillingDay) throws ParseException {
		ClientVO clientVO = new ClientVO();
		clientVO.setEmail(authInfo.getEmail());
		clientVO.setMembership_date(authInfo.getMembership_date());
		
		SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMdd");
		String originDate = clientVO.getMembership_date();
		Date originDate2 = sdf.parse(originDate); 
		String newDate = sdf.format(originDate2);
		newDate = newDate.substring(0,6)+newBillingDay;
		
		clientVO.setMembership_date(newDate);
		clientDaoImpl.modifybillingDate(clientVO);
	}

	
}
