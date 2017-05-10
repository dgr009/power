package com.icia.palette.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.palette.service.*;

@Controller
public class ProductController {
	@Autowired
	private ProductService service;
	
}
