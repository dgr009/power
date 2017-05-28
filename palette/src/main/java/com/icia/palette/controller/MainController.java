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
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String productRegister(){
		return "main/realMain";
		
	}
//	@RequestMapping(value="/test",method=RequestMethod.GET)
//	public String test(){
//		return "mini/freeView";
//		
//	}
}
