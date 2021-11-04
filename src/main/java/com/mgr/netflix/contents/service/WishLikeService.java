package com.mgr.netflix.contents.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.client.vo.AuthInfo;
import com.mgr.netflix.contents.dao.ContentsDAOImpl;
import com.mgr.netflix.contents.vo.WishAndLikeVO;

@Service
public class WishLikeService {
	@Autowired
	private ContentsDAOImpl contentsDaoImpl;
	//찜, 좋아요, 싫어요조
	public List<WishAndLikeVO> wishList(WishAndLikeVO wishLikeVO) {
		return contentsDaoImpl.WishInfo(wishLikeVO);
	}
	
	public WishAndLikeVO SelectWishLike(WishAndLikeVO wishLikeVO) {
		return contentsDaoImpl.WishLikeInfo(wishLikeVO);
	}
	
	//찜 업뎃
	public void UpdateWish(WishAndLikeVO wishLikeVO) {
		contentsDaoImpl.UpdateWish(wishLikeVO);
	}
	//찜 인서트
	public void InsertWish(WishAndLikeVO wishLikeVO) {
		contentsDaoImpl.InsertWish(wishLikeVO);
	}
	//좋아요 업뎃
	public void UpdateLike(WishAndLikeVO wishLikeVO) {
		contentsDaoImpl.UpdateLike(wishLikeVO);
	}
	//좋아요 인서트
	public void InsertLike(WishAndLikeVO wishLikeVO) {
		contentsDaoImpl.InsertLike(wishLikeVO);
	}
	//싫어요 업뎃
	public void UpdateDislike(WishAndLikeVO wishLikeVO) {
		contentsDaoImpl.UpdateDislike(wishLikeVO);
	}
	//싫어요 인서트
	public void InsertDislike(WishAndLikeVO wishLikeVO) {
		contentsDaoImpl.InsertDislike(wishLikeVO);
	}
	
	
}
