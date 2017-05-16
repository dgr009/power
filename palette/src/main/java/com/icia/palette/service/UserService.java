package com.icia.palette.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.vo.*;

@Service
public class UserService {

	//회원 로그인
	public int login(String userId, String userPwd, HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HashMap<String, String> map = new HashMap<String, String>();
		System.out.println("아이디 비번 : " + userId +" " + userPwd);
		map.put("userId", userId);
		map.put("userPwd", userPwd);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(map), headers);
		String result = tpl.exchange("http://localhost:8087/api/users/login", HttpMethod.POST, requestEntity, String.class).getBody();
		session.setAttribute("token", result);		
		System.out.println(result);
		if(result.equals("로그인 실패")){
			return 0;
		}else{
			return 1;
		}
		
	}
	
	//회원 로그아웃
	public void logout(HttpSession session) {
		session.removeAttribute("token");
	}
	
	//회원 가입
	public void insert(Users user) {
		RestTemplate tpl = new RestTemplate();
		System.out.println("Service User" + user);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(user), headers);
		String result = tpl.exchange("http://localhost:8087/api/users/register", HttpMethod.POST, requestEntity, String.class).getBody();
		
		System.out.println(result);
	}
	
	//회원 정보보기
	public Users userInfo(HttpSession session,String userId) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		String result = tpl.exchange("http://localhost:8087/api/users/info/{userId}", HttpMethod.GET, requestEntity, String.class,userId).getBody();
		Users user = new Gson().fromJson(result, Users.class);
		System.out.println("userInfo : "+user);
		
		return user;
	}

	//회원 정보 수정
	public void updateUser(HttpSession session,Users user) {
		RestTemplate tpl = new RestTemplate();
		System.out.println("Service User" + user);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(user), headers);
		String result = tpl.exchange("http://localhost:8087/api/users/update", HttpMethod.PUT, requestEntity, String.class).getBody();
		
		System.out.println(result);
		if(!result.equals("수정 실패"))
			session.removeAttribute("token");
	}

	//포인트 충전하기
	public void chargePoint(HttpSession session, String userId,int tradePoint) {
		RestTemplate tpl = new RestTemplate();
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		System.out.println("Service Map : " + map);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(map), headers);
		String result = tpl.exchange("http://localhost:8087/api/users/chargePoint", HttpMethod.POST, requestEntity, String.class).getBody();
		
		System.out.println(result);
	}
	
}
