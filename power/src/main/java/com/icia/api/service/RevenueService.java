package com.icia.api.service;

import java.util.*;
import java.util.Date;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;
import java.sql.*;

@Service
public class RevenueService {

	@Autowired
	private RevenueDao dao;

	// 기간별 매출 조회하기
	public Map<String, Object> selectRevenueList(Map<String, Object> map, int pageNo) {
		int cnt = dao.selectRevenueListByDateCnt(map);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pagination", pagination);
		map.put("start", pagination.getStartArticle());
		map.put("end", pagination.getEndArticle());
		maps.put("sum", dao.selectRevenueSum(map));
		maps.put("sDate", map.get("startDate"));
		maps.put("eDate", map.get("endDate"));
		maps.put("list", dao.selectRevenueListByDate(map));
		return maps;
	}

	// 회원별 기간으로 매출 조회하기
	public Map<String, Object> selectRevenueUserList(Map<String, Object> map, int pageNo) {
		int cnt = dao.selectRevenueUserListByDateCnt(map);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pagination", pagination);
		map.put("start", pagination.getStartArticle());
		map.put("end", pagination.getEndArticle());
		maps.put("sum", dao.selectRevenueUserSum(map));
		maps.put("sDate", map.get("startDate"));
		maps.put("eDate", map.get("endDate"));
		maps.put("list", dao.selectRevenueUserListByDate(map));
		return maps;
	}

}
