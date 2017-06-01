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
		headers.add("userN", userName);
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
		
		// 관리자 로그인 
		public int login(String adminId, String adminPwd, HttpSession session) {
			RestTemplate tpl = new RestTemplate();
			HashMap<String, String> map = new HashMap<String, String>();
			System.out.println("아이디 비번 : " + adminId + " " + adminPwd);
			map.put("adminId", adminId);
			map.put("adminPwd", adminPwd);
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
			HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
			System.out.println("관리자 로그인 api가기 직전" + requestEntity);
			String result = tpl
					.exchange("http://localhost:8087/api/admin/login", HttpMethod.POST, requestEntity, String.class)
					.getBody();

			System.out.println(result);
			if (result.equals("로그인 실패")) {
				return 0;
			} else {
				session.setAttribute("token", result);
				Admin admin = getAdmin(session);
				session.setAttribute("admin", admin);
				return 1;
			}

		}
		
		// 관리자 로그아웃
		public void logout(HttpSession session) {
			session.removeAttribute("token");
			session.removeAttribute("admin");
		}
		
		// 관리자 정보보기
		public Admin getAdmin(HttpSession session) {
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			headers.add("token", (String) session.getAttribute("token"));
			HttpEntity requestEntity = new HttpEntity(headers);
			System.out.println(requestEntity);
			String result = tpl
					.exchange("http://localhost:8087/api/admin/info", HttpMethod.GET, requestEntity, String.class)
					.getBody();
			Admin admin = new Gson().fromJson(result, Admin.class);
			System.out.println("adminInfo : " + admin);

			return admin;
		}
		
}