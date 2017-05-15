package com.icia.api.service;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.google.gson.*;
import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class UsersService {

	@Autowired
	private UsersDao dao;
	
	public int insertUser(Users user){
		return dao.insertUser(user);
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

	public String userLogin(Users user) {
		Users realUser = dao.userLogin(user);
		// 로그인에 실패하면 null이 돌아와 바로 비교하면 Null Pointer Exception
		if(realUser!=null && realUser.getUserPwd().equals(user.getUserPwd())) {
			return TokenUtils.getToken(realUser);
		} else {
			return null;
		}
	}

	public Users read(String userId,String token) {
		Users realUser = new Users();
		if(TokenUtils.isValid(token)) {
			String role = TokenUtils.get(token, "ROLE");
			if(!role.equals("ROLE_USER"))
				realUser = new Users("권한 부족");
			else
				realUser =  dao.userInfo(userId);
		} else 
			realUser = new Users("토큰 인증 실패");
		return realUser;
	}
	
}
