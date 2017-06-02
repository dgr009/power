package com.icia.palette.service;

import java.util.*;

import org.hibernate.validator.internal.util.logging.*;
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
//상품등록하기
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
	//상품삭제
	public void productDelete(int itemNo) {
		RestTemplate tpl=new RestTemplate();
		Map<String, Object> map=new HashMap<String, Object>();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(itemNo), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/admin/productDelete", HttpMethod.POST, requestEntity, String.class).getBody();
	}
	//상품주문자리스트
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
	public Map<String, Object> productMain(Map<String, Object> map) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/productMain", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		System.out.println("주문리스트한번뿌려봐"+s);
		return s;
	}//미니홈피 최신,마감,베스트상품가져오기
	public Map<String, Object> getMain(String userId) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/mainImg", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		System.out.println("주문리스트한번뿌려봐"+s);
		return s;
	}
	
	//미니홈피 카테고리
	public Map<String, Object> productKind(String userId) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/productKind", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		return s;
	}
	//배송입력하기
	public void deliveryInsert(HashMap<String, Object> map) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/deliveryInsert", HttpMethod.POST, requestEntity, String.class).getBody();
	
		
	
	}
	//상품업데이트하기
	public void productUpdate(List<Map<String, Object>> itemList) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		System.out.println("안녕들어왔냐"+itemList.toString());
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(itemList), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/productUpdate", HttpMethod.POST, requestEntity, String.class).getBody();

	
	}
	//상품주문하기
	public void productOrder(OrderStatement o) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(o), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/productOrder", HttpMethod.POST, requestEntity, String.class).getBody();
	
		
		
	}
	//상품카테고리로 검색
	public Map<String, Object> productSelectKind(Map<String, Object> map) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/productSelectKind", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		
		return s;
	}
	//이름으로 상품검색
	public Map<String, Object> productSearch(Map<String, Object> map) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/productSearch", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		
		return s;
	}
	//문의게시판리스트
	public Map<String, Object> InquiryList(Map<String, Object> map) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map),headers);
		String result = tpl.exchange("http://localhost:8087/api/miniHome/inquiryList", HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map1 = new Gson().fromJson(result, Map.class);
		System.out.println(map1);
		return map1;
	}
	//상품문의글 작성
	public void inquiryRegister(InquiryBoard i) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(i), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/inquiryRegister", HttpMethod.POST, requestEntity, String.class).getBody();
	}
	//상품문의글보기
	public Map<String, Object> productInquiryView(Map<String, Object> map1) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map1),headers);
		String result = tpl.exchange("http://localhost:8087/api/miniHome/inquiryView", HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}
	//상품문의글삭제
	public void inquiryDelete(int inquiryNo) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(inquiryNo), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/inquiryDelete", HttpMethod.POST, requestEntity, String.class).getBody();
	}
	//상품문의 글수정
	public void inquiryUpdate(InquiryBoard i) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(i), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/inquiryUpdate", HttpMethod.POST, requestEntity, String.class).getBody();
	}
	//미니홈피주인문의관리리스트
	public Map<String, Object> adminInquiryList(Map<String, Object> map) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map),headers);
		String result = tpl.exchange("http://localhost:8087/api/miniHome/adminInquiryList", HttpMethod.POST, requestEntity, String.class).getBody();
		Map<String,Object> map1 = new Gson().fromJson(result, Map.class);
		System.out.println("야 여기찍어봐"+map1);
		
		return map1;
	}
	//홈피주인이문의댓글작성
	public void inquiryRepleRegister(InquiryReple i) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(i), headers);
		tpl.exchange("http://localhost:8087/api/miniHome/inquiryRepleRegister", HttpMethod.POST, requestEntity, String.class).getBody();		
	}

}
