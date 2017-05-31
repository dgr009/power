package com.icia.api.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.controller.*;
import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class AdminService {
	@Autowired
	private AdminDao dao;
	
	//	회원이름으로 조회
	public String findUserName(String userName){
		return dao.FindUserName(userName);
	}
	// 홈페이지 개설회원 조회
	public String FindOpenPageUser(String userId) {
		return dao.FindOpenPageUser(userId);
	}
	// 전체회원목록조회
	public List<Users> totalUser(){
	      return dao.totalUser();
	 }
	
	// 회원상세조회
	public HashMap<String, Object> DetailUser(String userId) {
		return dao.DetailUser(userId);
	}
	
	//회원삭제
	public int DeleteUser(String userId) {
		return dao.DeleteUser(userId);
	}
	//회원정보수정
	public int UpdateUser(Users user) {
		return dao.UpdateUser(user);
	}
	//홈페이지삭제
	public void DeleteUserPage(String userId) {
		dao.DeleteUserPage(userId); 
	}
	// 일별매출보기   
	public List<OrderList> RevenueDayUser(OrderList orderList) {
		return dao.RevenueDayUser(orderList);
	}
	// 달별매출보기
	public List<OrderList> RevenueMonthUser(OrderList orderList) {
		return dao.RevenueMonthUser(orderList);
	}
	// 연간매출보기  
	public List<OrderList> RevenueYearUser(OrderList orderList) {
		return dao.RevenueYearUser(orderList);
	}
	// 회원별 매출보기, 합계보기 
	public List<OrderList> RevenueUserAndTotal(OrderList orderList) {
		return dao.RevenueUserAndTotal(orderList);
	}
	// 전체매출보기 
	public List<OrderList> RevenueUserTotal(OrderList orderList) {
		return dao.RevenueUserTotal(orderList); 
	}
}
