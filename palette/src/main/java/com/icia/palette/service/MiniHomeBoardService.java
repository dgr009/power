package com.icia.palette.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.google.gson.reflect.*;
import com.icia.palette.vo.*;

@Service
public class MiniHomeBoardService {

	//자유게시판 뷰
	public MiniHomeFree miniHomeSelectFreeView(HttpSession session,int freeNo, String userId) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		String result = tpl.exchange("http://localhost:8087/api/miniHome/{userId}/freeView/{freeNo}", HttpMethod.GET, requestEntity, String.class,userId,freeNo).getBody();
		MiniHomeFree free = new Gson().fromJson(result, MiniHomeFree.class);
		System.out.println(free);
		
		return free;
	}
	//자유게시판 리스트
	public Map<String,Object> miniHomeSelectFreeList(HttpSession session,int pageNo,String userId){
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		
		String result=tpl.exchange("http://localhost:8087/api/miniHome/{userId}/freeList/{pageNo}", HttpMethod.GET, requestEntity, String.class,userId, pageNo).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		
		return map;		
	}
	
	//자유게시판 작성
	public void miniHomeRegisterFree(HttpSession session,MiniHomeFree free){
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(free), headers);
		String result=tpl.exchange("http://localhost:8087/api/miniHome/{userId}/freeRegister", HttpMethod.POST, requestEntity, String.class,free.getUserId()).getBody();
	
	}
	public String getUserIdByToken(HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity =  new HttpEntity(headers);
		String result=tpl.exchange("http://localhost:8087/api/miniHome/getUserInfo", HttpMethod.POST, requestEntity, String.class).getBody();
		String userId = new Gson().fromJson(result, String.class);
		return userId;
	}
	
}








