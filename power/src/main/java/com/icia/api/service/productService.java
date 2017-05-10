package com.icia.api.service;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.dao.*;

@Service
public class productService {
	@Autowired
	private ProductDao dao;
	
	
}
