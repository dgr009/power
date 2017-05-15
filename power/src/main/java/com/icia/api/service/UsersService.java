package com.icia.api.service;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class UsersService {

	@Autowired
	private UsersDao dao;
	
	public void insertUser(Users user){
		dao.insertUser(user);
	}
	public int hasUserId(String userId){
		return dao.hasUserId(userId);
	}
	public String FindId(String userName,String userMail){
		return dao.findId(userName,userMail);
	}
	public String FindPwd(String userId,String userName,String userMail){
		return dao.findPwd(userId,userName,userMail);
	}
	/*
	public String userLogin(String userId,String userPwd){
		Users user = dao.userLogin(userId,userPwd);
		String token = TokenUtils.getToken(user);
		
		return token;
	}*/
	public String userLogin(Users user) {
		Users realUser = dao.userLogin(user);
		// 로그인에 실패하면 null이 돌아와 바로 비교하면 Null Pointer Exception
		if(realUser!=null && realUser.getUserPwd().equals(user.getUserPwd())) {
			return TokenUtils.getToken(realUser);
		} else {
			return null;
		}
	}
	
	public void userLogout(){
		
	}
	
}
