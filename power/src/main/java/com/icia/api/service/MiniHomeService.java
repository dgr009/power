package com.icia.api.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class MiniHomeService {
	
	@Autowired
	private MiniHomeDao dao;
	
	//홈페이지 수정
	public void miniHomeUpdate(MiniHome home){
		dao.miniHomeUpdate(home);
	}
	
	//홈페이지 폐쇄
	public void miniHomeDelete(String userId){
		dao.miniHomeDelete(userId);
	}
	
	//홈페이지 결제
	@Transactional//포인트 없을경우 조치필요
	public void miniHomePay(String userId){
		dao.miniHomeDecreaseUsersPoint(userId);//회원 포인트 차감
		System.out.println("회원 포인트 차감 완료");
		
		dao.miniHomeActivateHome(userId);//홈페이지 활성화
		System.out.println("홈페이지 활성화 완료");
	}
	
	//홈페이지 결제 기록생성
	public int insertActiveDate(String userId){
		return dao.miniHomeInsertActiveStatement(userId);
	}
	
	//판매자(홈페이지 주인) 회원정보조회
	public MiniHomeInformation miniHomeSelectSellerInformation(String userId){
		return dao.miniHomeSelectSellerInformation(userId);
	}
	
	//이용권 기록 리스트 
	public HashMap<String,Object> selectActiveList(String userId, int pageNo){
		int cnt = dao.countActiveDate(userId);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.selectActiveDate(userId,pagination.getEndArticle(),pagination.getStartArticle()));
		return map;
	}

	
	
	
	
	
	
	
}
