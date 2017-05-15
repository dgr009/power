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
	public void miniHomePay(ActiveDate active, String userId){
		
		dao.miniHomeInsertActiveStatement(active);//활성화 기록 생성
		
		dao.miniHomeActivateUser(userId);//회원 활성화
		
		dao.miniHomeDecreaseUsersPoint(30000, userId);//회원 포인트 차감

	}
	
	//판매자(홈페이지 주인) 회원정보조회
	public MiniHomeInformation miniHomeSelectSellerInformation(String userId){
		return dao.miniHomeSelectSellerInformation(userId);
	}
	
	
	
	
	
	
	
	
}
