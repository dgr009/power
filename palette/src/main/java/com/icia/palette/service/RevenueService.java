package com.icia.palette.service;

import java.sql.Date;
import java.util.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;

@Service
public class RevenueService {
	
	// 기간별 매출 내역 보기
	public Map<String,Object> selectRevenueList(Date startDate, Date endDate, int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("startDate", startDate);
		maps.put("endDate", endDate);
		maps.put("pageNo", pageNo);
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		HttpEntity requestEntity = new HttpEntity(gson.toJson(maps), headers);
		String result = tpl.exchange("http://localhost:8087/api/admin/revenueList",HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}

	//회원 기간별 매출 내역 보기
	public Map<String,Object> selectRevenueUserList(String userId,Date startDate, Date endDate, int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("ownerId",userId);
		maps.put("startDate", startDate);
		maps.put("endDate", endDate);
		maps.put("pageNo", pageNo);
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		HttpEntity requestEntity = new HttpEntity(gson.toJson(maps), headers);
		String result = tpl.exchange("http://localhost:8087/api/admin/revenueUserList",
				HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}
	
}
