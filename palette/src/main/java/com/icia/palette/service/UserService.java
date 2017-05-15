package com.icia.palette.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;

@Service
public class UserService {

	public void login(String userId, String userPwd, HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		
		HashMap<String, String> map = new HashMap<String, String>();
		System.out.println("아이디 비번 : " + userId +" " + userPwd);
		map.put("userId", userId);
		map.put("userPwd", userPwd);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity =  new  HttpEntity (new Gson().toJson(map), headers);
		String result = tpl.exchange("http://localhost:8087/api/users/login", HttpMethod.POST, requestEntity, String.class).getBody();
		session.setAttribute("token", result);		
	}
	
}
