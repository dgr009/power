package com.icia.palette.service;

import java.util.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.vo.*;

@Service
public class CustomerCenterService {

	//고객센터게시글등록
	public void customerCenterRegister(CustomerCenter c) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(c), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/main/customerCenterRegister", HttpMethod.POST, requestEntity, String.class)
				.getBody();

	}
//고객센터게시판리스트
	public Map<String, Object> customerCenterList(int pageNo) {
			RestTemplate tpl = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
			HttpEntity requestEntity = new HttpEntity(new Gson().toJson(pageNo),headers);
			String result = tpl.exchange("http://localhost:8087/api/main/customerCenterList", HttpMethod.POST, requestEntity, String.class).getBody();
			Map<String,Object> map1 = new Gson().fromJson(result, Map.class);
			return map1;
	}
	//고객센터 업데이트 폼가져오기
	public Map<String, Object> customerCenterUpdate(int faqNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(faqNo),headers);
		String result = tpl.exchange("http://localhost:8087/api/main/customerCenterUpdateStart", HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map1 = new Gson().fromJson(result, Map.class);
		return map1;
		
	}
	//고객센터 업데이트하기
	public void customerCenterUpdateEnd(CustomerCenter c) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(c),headers);
		tpl.exchange("http://localhost:8087/api/main/customerCenterUpdate", HttpMethod.POST, requestEntity, String.class).getBody();
		
	}
	//고객센터 글보기
	public Map<String,Object> customerCenterView(int faqNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(faqNo),headers);
		String result = tpl.exchange("http://localhost:8087/api/main/customerCenterView", HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map1 = new Gson().fromJson(result, Map.class);
		return map1;
	}
	
	//고객센터 글삭제
	public void customerCenterDelete(int faqNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(faqNo),headers);
		tpl.exchange("http://localhost:8087/api/main/customerCenterDelete", HttpMethod.POST, requestEntity, String.class).getBody();
		
	}
	
	
	

}
