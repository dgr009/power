package com.icia.palette.service;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.dao.*;
import com.icia.palette.vo.*;

@Service
public class MainService {

	// 유저 아이디 가져오기
	public String getUserId(HttpSession session) {
		Users user = (Users)session.getAttribute("user");
		return user.getUserId();
	}
	//자유게시판 생성
	public String mainFreeBoardRegister(MainFreeBoard free) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(free), headers);
		String result=tpl.exchange("http://localhost:8087/api/main/freeboard/register", HttpMethod.POST, requestEntity, String.class).getBody();
		return result;
	}
	//자유게시판 뷰
	public MainFreeBoard mainFreeBoardView(HttpSession session,String userId,int mainArticleNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/main/{userId}/freeboard/view/{mainArticleNo}", HttpMethod.GET, requestEntity, String.class,userId,mainArticleNo).getBody();
		MainFreeBoard free = new Gson().fromJson(result, MainFreeBoard.class);
		return free;
		}
		//자유게시판 수정
	public void miniHomeUpdateFree(MainFreeBoard free) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(free), headers);
		String result = tpl.exchange("http://localhost:8087/api/", HttpMethod.PUT, requestEntity, String.class).getBody();
		System.out.println(result);
	}
}
