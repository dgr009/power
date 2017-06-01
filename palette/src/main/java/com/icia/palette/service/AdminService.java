package com.icia.palette.service;



import java.util.*;

import javax.servlet.http.*;

import org.springframework.http.*;
import org.springframework.security.web.header.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.vo.*;

@Service
public class AdminService {
	
	//	회원이름으로 조회
	public Users findUserNamesssss(String userName) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("userN", userName.getBytes("userN"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/admin/userName", HttpMethod.GET, requestEntity, String.class).getBody();
		Users user = new Gson().fromJson(result, Users.class);
		return user;
	}
	// 회원 정보보기
		public String findUserName(HttpSession session) {
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			headers.add("token", (String) session.getAttribute("token"));
			HttpEntity requestEntity = new HttpEntity(headers);
			System.out.println(requestEntity);
			String result = tpl
					.exchange("http://localhost:8087/api/admin/userName", HttpMethod.GET, requestEntity, String.class)
					.getBody();
			Users user = new Gson().fromJson(result, Users.class);
			System.out.println("userInfo : " + user);

			return result;
		}
	
	public void updateUser(String userId) {
		RestTemplate tpl = new RestTemplate();
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId));
		String result = tpl
				.exchange("http://localhost:8087/api/users/update", HttpMethod.PUT, requestEntity, String.class)
				.getBody();
		System.out.println(result);
	}
	
	// 전체회원목록조회
		public List<Users> totalUser(Users user){
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			HttpEntity entity = new HttpEntity(headers);
			String result = tpl.exchange("http://localhost:8087/api/admin/all", HttpMethod.GET, entity, String.class).getBody();
		      List<Users> list = new Gson().fromJson(result, List.class);
		      return list;
		 }
		public Users detailUser(String userId){
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			HttpEntity entity = new HttpEntity(headers);
			String result = tpl.exchange("http://localhost:8087/api/admin/detail", HttpMethod.GET, entity, String.class).getBody();
		      Users user = new Gson().fromJson(result, Users.class);
		      return user;
		}
		// 
		public int login(String adminId, String adminPwd, HttpSession session) {
			// TODO Auto-generated method stub
			return 0;
		}
}