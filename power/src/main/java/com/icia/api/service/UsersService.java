package com.icia.api.service;

import java.io.*;
import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.auth0.jwt.*;
import com.auth0.jwt.algorithms.*;
import com.icia.api.dao.*;
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
	public String userLogin(String userId,String userPwd){
		String token = "";
		Users user = dao.userLogin(userId,userPwd);
		if(user==null)
			return token;
		
		//현재시간을 얻어 1시간을 더한다음 Date로 형변화
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR, cal.get(Calendar.HOUR_OF_DAY) + 1);
		Date date = new Date(cal.getTimeInMillis());
		//암호화(인증) 알고리즘을 지정
		Algorithm algorithm;
		try {
			algorithm = Algorithm.HMAC256("chs");
			token = JWT.create().withIssuer("admin").withSubject(user.getUserId()).withExpiresAt(date).withClaim("issue", "icia").sign(algorithm);
			
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return token;
	}
	
	public void userLogout(){
		
	}
	
}
