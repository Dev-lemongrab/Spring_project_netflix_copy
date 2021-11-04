package com.mgr.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.dao.ClientDAOImpl;

@Service
public class DeleteWishLikeService {
	@Autowired
	private ClientDAOImpl clientDaoImpl;
	//멤버쉽 해지 및 변경 시 찜좋아요싫어요 초기화
	
	public void DeleteWishLike(String email) {
			clientDaoImpl.DeleteWishLike(email);
	}
	
}
