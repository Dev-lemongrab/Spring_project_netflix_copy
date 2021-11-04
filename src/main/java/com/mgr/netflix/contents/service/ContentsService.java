package com.mgr.netflix.contents.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.contents.dao.ContentsDAOImpl;
import com.mgr.netflix.contents.vo.ContentsVO;
import com.mgr.netflix.contents.vo.ViewedVO;

@Service
public class ContentsService {
	@Autowired
	private ContentsDAOImpl contentsDaoImpl;
	
	public List<ContentsVO> ContentsList() {
		return contentsDaoImpl.selectAllContents();
	}
	
	public List<ViewedVO> ViewedList(ViewedVO viewedVO) {
		return contentsDaoImpl.ViewedList(viewedVO);
	}
	
	public void InsertView(ViewedVO viewedVO) {
		contentsDaoImpl.InsertView(viewedVO);
	}
}
