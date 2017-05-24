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
		
//	// 홈페이지 결제
//	public void homePay(HttpSession session, ActiveDate active) {
//		RestTemplate tpl = new RestTemplate();
//		HttpHeaders headers = new HttpHeaders();
//		headers.add("token", (String) session.getAttribute("token"));
//		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
//		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(active), headers);
//		String result = tpl
//				.exchange("http://localhost:8087/api/miniHome/{userId}/pay", HttpMethod.PUT, requestEntity, String.class,free.getUserId(),free.getFreeNo())
//				.getBody();
//
//		System.out.println(result);
//		if (!result.equals("수정 실패"))
//			session.removeAttribute("token");
//	}
}








