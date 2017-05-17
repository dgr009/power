package com.icia.palette.service;

<<<<<<< HEAD
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
=======
import java.util.ArrayList;
>>>>>>> branch 'sumin' of https://github.com/dgr009/power.git

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
import com.icia.palette.vo.Item;
import com.icia.palette.vo.ItemImg;
import com.icia.palette.vo.Users;

@Service
public class ProductService {
	@Autowired
	private ProductDao dao;

<<<<<<< HEAD
=======
	public void productRegister(Item item) {
		RestTemplate tpl=new RestTemplate();
		System.out.println("item"+item.getItemContent());
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(item), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/miniHome/admin/productRegister", HttpMethod.POST, requestEntity, String.class)
				.getBody();

	}
>>>>>>> branch 'sumin' of https://github.com/dgr009/power.git
	
}
