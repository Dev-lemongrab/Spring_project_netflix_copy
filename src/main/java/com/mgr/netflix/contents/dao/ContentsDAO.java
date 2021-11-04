package com.mgr.netflix.contents.dao;

import java.util.List;

import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.contents.vo.ContentsVO;
import com.mgr.netflix.contents.vo.ViewedVO;
import com.mgr.netflix.contents.vo.WishAndLikeVO;

public interface ContentsDAO {
	
	public List<ContentsVO> selectAllContents();

	public ClientVO AuthForLogin(String email);
	
	public WishAndLikeVO WishLikeInfo(WishAndLikeVO wishLikeVO);
	
	public void UpdateWish(WishAndLikeVO wishLikeVO);
	
	public void InsertWish(WishAndLikeVO wishLikeVO);
	
	public void UpdateLike(WishAndLikeVO wishLikeVO);
	
	public void InsertLike(WishAndLikeVO wishLikeVO);
	
	public void UpdateDislike(WishAndLikeVO wishLikeVO);
	
	public void InsertDislike(WishAndLikeVO wishLikeVO);
	
	public List<WishAndLikeVO> WishInfo(WishAndLikeVO wishLikeVO);
	
	public List<ViewedVO> ViewedList(ViewedVO viewedVO);
	
	public void InsertView(ViewedVO viewedVO); 
	
	
}
