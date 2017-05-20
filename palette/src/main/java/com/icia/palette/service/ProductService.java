package com.icia.palette.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.icia.palette.dao.*;
import com.icia.palette.vo.*;

@Service
public class ProductService {
	@Autowired
	private ProductDao dao;

	public void productRegister(Item item) {
		RestTemplate tpl=new RestTemplate();
		System.out.println("item"+item.getItemContent());
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(item), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/productRegister", HttpMethod.POST, requestEntity, String.class)
				.getBody();

	}
	//제품종류가져오기
	public Map<String, Object> productRegisterReady(String userId) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/kindList", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		System.out.println(result);
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		return s;
	}
	//제품등록리스트
	public Map<String, Object> productRegisterList(String userId, int pageNo) {
		RestTemplate tpl=new RestTemplate();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("pageNo", pageNo);
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/productList", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		System.out.println("모냐값들이"+s.toString());
		
		return s;
	}
	public void productDelete(int itemNo) {
		RestTemplate tpl=new RestTemplate();
		Map<String, Object> map=new HashMap<String, Object>();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(itemNo), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/admin/productDelete", HttpMethod.POST, requestEntity, String.class).getBody();
	}
	public Map<String, Object> productOrderList(int itemNo,int pageNo) {
		RestTemplate tpl=new RestTemplate();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("itemNo", itemNo);
		map.put("pageNo", pageNo);
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/productOrderList", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		System.out.println("주문리스트한번뿌려봐"+s);
		return s;
	}
	//상품메인보기
	public Map<String, Object> productMain(int itemNo) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(itemNo), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/productMain", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		System.out.println("주문리스트한번뿌려봐"+s);
		return s;
	}
	//상품메인보기
	public Map<String, Object> productKind(String userId) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId), headers);
		System.out.println("여기는 수민아 들어오냐");
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/productKind", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		System.out.println("카테고리뿌려봐"+s);
		return s;
	}
	
}
