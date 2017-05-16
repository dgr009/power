package com.icia.palette.service;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.palette.dao.*;

@Service
public class ProductService {
	@Autowired
	private ProductDao dao;

	
}
