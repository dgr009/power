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
	
	public int selectRevenueListByDateCnt(Map<String, Object> map) {
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueListByDateCnt",map);
	}
	public Object selectRevenueListByDate(Map<String, Object> map) {
		return tpl.selectList("api.dao.RevenueDao.selectRevenueListByDate",map);
	}
	
	public int selectRevenueSum(Map<String,Object> map){
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueSum",map);
	}
	
	public int selectRevenueUserListByDateCnt(Map<String, Object> map) {
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueUserListByDateCnt",map);
	}
	
	//회원 매출내역 조회하기
	public Object selectRevenueUserListByDate(Map<String, Object> map) {
		return tpl.selectList("api.dao.RevenueDao.selectRevenueUserListByDate",map);
	}
	//회원 매출내역 합계 구하기
	public int selectRevenueUserSum(Map<String,Object> map){
		return tpl.selectOne("api.dao.RevenueDao.selectRevenueUserSum",map);
	}
}
