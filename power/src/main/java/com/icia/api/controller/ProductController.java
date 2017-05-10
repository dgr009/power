package com.icia.api.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.icia.api.service.*;

@RestController
public class ProductController {
	@Autowired
	private productService service;
	
}
