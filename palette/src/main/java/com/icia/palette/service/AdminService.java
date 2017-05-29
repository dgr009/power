package com.icia.palette.service;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.vo.*;

@Service
public class AdminService {
	public Users userDetail(Users user) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		String result = tpl.exchange("http://localhost:8087/api/users/info", HttpMethod.GET, requestEntity, String.class).getBody();
		Users users = new Gson().fromJson(result, Users.class);
		System.out.println("userDetail : " + users);
		return users;
	}
}