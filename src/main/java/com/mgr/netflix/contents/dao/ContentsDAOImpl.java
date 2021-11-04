package com.mgr.netflix.contents.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.contents.vo.ContentsVO;
import com.mgr.netflix.contents.vo.ViewedVO;
import com.mgr.netflix.contents.vo.WishAndLikeVO;


@Repository
public class ContentsDAOImpl implements ContentsDAO{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String namespace = "Contents";

	@Override
	public List<ContentsVO> selectAllContents() {
		
		return sqlSession.selectList(namespace +".SelectAll"); 
	}

	@Override
	public ClientVO AuthForLogin(String email) {
		
		return sqlSession.selectOne(namespace+".SelectByEmail", email);	
	}

	@Override
	public WishAndLikeVO WishLikeInfo(WishAndLikeVO wishLikeVO) {
		return sqlSession.selectOne(namespace+".SelectWishAndLike", wishLikeVO);
	}

	@Override
	public void UpdateWish(WishAndLikeVO wishLikeVO) {
		sqlSession.insert(namespace+".UpdateWish", wishLikeVO);
		
	}

	@Override
	public void InsertWish(WishAndLikeVO wishLikeVO) {
		sqlSession.insert(namespace+".InsertWish", wishLikeVO);
		
	}

	@Override
	public void UpdateLike(WishAndLikeVO wishLikeVO) {
		sqlSession.update(namespace+".UpdateLike", wishLikeVO);
		
	}

	@Override
	public void InsertLike(WishAndLikeVO wishLikeVO) {
		sqlSession.insert(namespace+".InsertLike", wishLikeVO);
		
	}

	@Override
	public void UpdateDislike(WishAndLikeVO wishLikeVO) {
		sqlSession.update(namespace+".UpdateDislike", wishLikeVO);
		
	}

	@Override
	public void InsertDislike(WishAndLikeVO wishLikeVO) {
		sqlSession.insert(namespace+".InsertDislike", wishLikeVO);
		
	}

	@Override
	public List<WishAndLikeVO> WishInfo(WishAndLikeVO wishLikeVO) {
		
		return sqlSession.selectList(namespace+".SelectWish", wishLikeVO);
	}

	@Override
	public List<ViewedVO> ViewedList(ViewedVO viewedVO) {
		return sqlSession.selectList(namespace+".ViewedList", viewedVO);
	}

	@Override
	public void InsertView(ViewedVO viewedVO) {
		sqlSession.insert(namespace+".InsertView", viewedVO);
		
	}


	

}
