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
	
	// 전체회원목록조회
		public Map<String, Object> totalUser(HttpSession session, int pageNo){
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			HttpEntity requestEntity = new HttpEntity(headers);
			String result = tpl.exchange("http://localhost:8087/api/admin/all?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		    Map<String,Object> map = new Gson().fromJson(result, Map.class);
		    return map;
			 }
			
	//	홈페이지 개설회원목록
	public Map<String, Object> openPageUser(HttpSession session,int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/admin/openUser?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}
	// 회원 정보보기
		public Users findUserName(String userId) {
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			HttpEntity requestEntity = new HttpEntity(headers);
			String result = tpl
					.exchange("http://localhost:8087/api/admin/userName?userId="+userId, HttpMethod.GET, requestEntity, String.class)
					.getBody();
			Users user = new Gson().fromJson(result, Users.class);
			return user;
		}
	
	public void updateUser(String userId) {
		RestTemplate tpl = new RestTemplate();
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId));
		String result = tpl
				.exchange("http://localhost:8087/api/users/update", HttpMethod.PUT, requestEntity, String.class)
				.getBody();
		System.out.println(result);
	}
		//회원 상세 조회 ( 미니홈)
		public Users detailUser(String userId){
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			HttpEntity entity = new HttpEntity(headers);
			String result = tpl.exchange("http://localhost:8087/api/admin/detail?userId="+userId, HttpMethod.GET, entity, String.class).getBody();
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
			session.removeAttribute("destination");
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