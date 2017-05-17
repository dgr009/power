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
	public Map<String,Object> miniHomeSelectFreeList(HttpSession session,String userId, int pageNo){
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		
		String result=tpl.exchange("http://localhost:8087/api/miniHome/{userId}/freeList?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class,userId).getBody();
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
	//토큰으로 아이디 가져오기(X)
	public String getUserIdByToken(HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity =  new HttpEntity(headers);
		String result=tpl.exchange("http://localhost:8087/api/miniHome/getUserInfo", HttpMethod.POST, requestEntity, String.class).getBody();
		String userId = new Gson().fromJson(result, String.class);
		return userId;
	}
	
	//자유게시판 수정
	public void miniHomeUpdateFree(HttpSession session, MiniHomeFree free) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(free), headers);
		System.out.println(free);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/{userId}/freeUpdate/{freeNo}", HttpMethod.PUT, requestEntity, String.class,free.getUserId(),free.getFreeNo())
				.getBody();

		System.out.println(result);
		if (!result.equals("수정 실패"))
			session.removeAttribute("token");
	}
	//자유게시판 삭제
	public void miniHomeDeleteFree(HttpSession session,int freeNo,String userId){
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (headers);
		String result=tpl.exchange("http://localhost:8087/api/miniHome/{userId}/freeDelete/{freeNo}", HttpMethod.DELETE, requestEntity, String.class,userId,freeNo).getBody();
		
	}
}








