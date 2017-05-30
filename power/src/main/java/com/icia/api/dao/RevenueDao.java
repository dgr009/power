package com.icia.api.dao;

import java.sql.Date;
import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class RevenueDao {

	@Autowired
	private SqlSessionTemplate tpl;
	
	// 기간별 매출 내역 가져오기
	public List<ItemList> selectRevenueListByDate(Date startDate,Date endDate,int start, int end){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("startDate", startDate);
		map.put("end", end);
		map.put("endDate", endDate);
		System.out.println("서비스 될까?");
		return tpl.selectList("api.dao.RevenueDao.selectRevenueListByDate",map);
	}
	//기간별 매출내역 개수
	public int selectRevenueListByDateCnt(Date startDate,Date endDate){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("endDate",endDate);
		map.put("startDate", startDate);
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueListByDateCnt",map);
	}
	public int selectRevenueListByDateCnt(Map<String, Object> map) {
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueListByDateCnt",map);
	}
	public Object selectRevenueListByDate(Map<String, Object> map) {
		return tpl.selectList("api.dao.RevenueDao.selectRevenueListByDate",map);
	}
	
	public int selectRevenueSum(Map<String,Object> map){
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueSum",map);
	}
}
