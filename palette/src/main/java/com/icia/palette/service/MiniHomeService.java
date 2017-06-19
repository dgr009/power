package com.icia.palette.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.vo.*;

@Service
public class MiniHomeService {
	//판매자 정보(홈소개글) 조회
		public Map<String,Object> miniHomeSelectSellerInformation(HttpSession session, String userId) {
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			headers.add("token", (String)session.getAttribute("token"));
			HttpEntity requestEntity = new HttpEntity(headers);
			System.out.println(requestEntity);
			String result = tpl.exchange("http://localhost:8087/api/miniHome/{userId}/Info", HttpMethod.GET, requestEntity, String.class,userId).getBody();
			Map<String,Object> map = new Gson().fromJson(result, Map.class);
			System.out.println(map);
			
			return map;
		}
		
	// 홈페이지 결제
	public void homePay(HttpSession session, String userId) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/{userId}/pay", 
						HttpMethod.POST, requestEntity, String.class,userId).getBody();
		session.setAttribute("user", userInfo(session));
	}
	
	// 회원 세션 넣기
	public Users userInfo(HttpSession session) {
	      RestTemplate tpl = new RestTemplate();
	      HttpHeaders headers = new HttpHeaders();
	      headers.add("token", (String) session.getAttribute("token"));
	      HttpEntity requestEntity = new HttpEntity(headers);
	      System.out.println(requestEntity);
	      String result = tpl
	            .exchange("http://localhost:8087/api/users/info", HttpMethod.GET, requestEntity, String.class)
	            .getBody();
	      Users user = new Gson().fromJson(result, Users.class);
	      System.out.println("userInfo : " + user);

	      return user;
	   }
	//이용권 리스트
	public Map<String,Object> payList(HttpSession session,int pageNo){
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		String result=tpl.exchange("http://localhost:8087/api/miniHome/payList?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		
		return map;		
	}
}








