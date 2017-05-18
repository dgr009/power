package com.icia.palette.service;


import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.dao.*;
import com.icia.palette.vo.*;

@Service
public class ProductService {
	@Autowired
	private ProductDao dao;

	public void productRegister(Item item) {
		RestTemplate tpl=new RestTemplate();
		System.
		out.println("item"+item.getItemContent());
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(item), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/productRegister", HttpMethod.POST, requestEntity, String.class)
				.getBody();

	}

	public Map<String, Object> productRegisterReady(String userId) {
		RestTemplate tpl=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(userId), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/kindList", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		Map<String, Object> s=new Gson().fromJson(result, Map.class);
		return s;
	}
	
}
