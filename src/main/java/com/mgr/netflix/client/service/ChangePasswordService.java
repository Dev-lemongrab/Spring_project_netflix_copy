package com.mgr.netflix.client.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.ModifyClientVO;

@Service
public class ChangePasswordService {
	
	@Autowired
	private ClientDAOImpl clientDAOImpl;
	
	public int changePwService(String oldPw, String newPw, ModifyClientVO modifyVO) throws Exception {
		boolean changePW = 	modifyVO.changePassword(oldPw, newPw);
		if(changePW) { //clientVO 에 있는 비밀번호변경 함수 -> boolean형태를 반환한다.
			return clientDAOImpl.changePwService(modifyVO);
		}else {
			throw new Exception();//안되면 오류발생
		}
		
	}
}
