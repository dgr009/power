package com.icia.palette.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;

@Controller
public class MainController {
	@Autowired
	private ProductService service;
	@Autowired
	private UserService service1;
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String productRegister(){
		return "main/realMain";
		
	}
	@RequestMapping(value="/main/loginlogin",method=RequestMethod.GET)
	public String test2(){
		return "main/login";
	}
	//상품및홈페이지 검색하기
	@RequestMapping(value="/main/search",method=RequestMethod.GET)
	public String search(@RequestParam String search,Model model){
		model.addAttribute("result", service1.search(search));
		return "main/search";
	}
	
}
