package com.icia.palette.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;

@Controller
@RequestMapping(value="/miniHome")
public class ProductController {
	@Autowired
	private ProductService service;
	@RequestMapping(value="/{userid}/admin/register",method=RequestMethod.GET)
	public String productRegister(@PathVariable String userid){
		return "products/ProductRegister";
	}
	@RequestMapping(value="/{userid}/admin/productUpdate",method=RequestMethod.GET)
	public String productUpdate(@PathVariable String userid){
		return "products/ProductUpdate";
	}
	
}
