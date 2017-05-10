package com.icia.api.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;

//@RestController
public class ProductController {
	@Autowired
	private productService service;
	@RequestMapping(value="/productRegister/{userid}")
	public String productRegisterReady(@PathVariable String userid){
		return new Gson().toJson(service.productRegisterReady(userid));
	}
}
