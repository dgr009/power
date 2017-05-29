package com.icia.palette.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.icia.palette.service.*;

@Controller
public class MainController {
	@Autowired
	private ProductService service;
	private UserService service1;
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String productRegister(){
		return "main/realMain";
		
	}
	@RequestMapping(value="/main/loginlogin",method=RequestMethod.GET)
	public String test2(){
		return "main/login";
	}
	@RequestMapping(value="/main/search",method=RequestMethod.GET)
	public String search(){
		
		return "main/search";
	}
	
}
