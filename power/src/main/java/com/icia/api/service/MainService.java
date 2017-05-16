package com.icia.api.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class MainService {
	
	@Autowired
	private MainDao dao;
	
	//자유게시판 페이징
	public HashMap<String, Object> MainFreeBoardList(int pageNo){
		int mainFreeBoardCnt = dao.mainFreeBoardCnt();
		Pagination pagination = PagingUtil.setPageMaker(pageNo, mainFreeBoardCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.mainFreeBoardList(pagination.getStartArticle(),pagination.getEndArticle()));
		return map;
	}
	
	
}
