package com.icia.palette.service;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.icia.palette.dao.*;
import com.icia.palette.vo.Users;

@Service
public class ProductService {
	@Autowired
	private ProductDao dao;

	public void productRegister(Users user, MultipartHttpServletRequest req) {
		
	}
	
}
