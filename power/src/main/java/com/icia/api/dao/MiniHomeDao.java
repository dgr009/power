package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class MiniHomeDao {
	
	@Autowired
	private SqlSessionTemplate tpl;
	
	//홈페이지 개설
	public void miniHomeRegisterHomepage(MiniHome home){
		tpl.insert("api.dao.HomeDao.miniHomeRegisterHomepage",home);
	}
	
	//홈페이지 수정
	public void miniHomeUpdate(MiniHome home){
		tpl.update("api.dao.HomeDao.miniHomeUpdate",home);
	}
	
	//홈페이지 폐쇄
	public void miniHomeDelete(String userId){
		tpl.delete("api.dao.HomeDao.miniHomeDelete",userId);
	}
	
	//홈페이지 결제 : 활성화 기록 생성
	public int miniHomeInsertActiveStatement(String userId){
		return tpl.insert("api.dao.HomeDao.miniHomeInsertActiveStatement",userId);
	}
	
	//홈페이지 결제 : 회원 포인트 차감
	public void miniHomeDecreaseUsersPoint(String userId){
		tpl.update("api.dao.HomeDao.miniHomeDecreaseUsersPoint",userId);
	}
	
	//홈페이지 결제 : 홈페이지 활성화
	public void miniHomeActivateHome(String userId){
		tpl.update("api.dao.HomeDao.miniHomeActivateHome",userId);
	}
		
	//판매자(홈페이지 주인) 회원정보조회
	public MiniHomeInformation miniHomeSelectSellerInformation(String userId){
		return tpl.selectOne("api.dao.HomeDao.miniHomeSelectSellerInformation",userId);
	}
	
	
}
