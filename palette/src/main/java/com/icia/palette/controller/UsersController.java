package com.icia.palette.controller;

import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping("/users")
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginStart() {
		return "users/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginEnd(HttpSession session,@RequestParam String userId,@RequestParam String userPwd,Model model) {
		int result = service.login(userId,userPwd,session);
		if(result==1) model.addAttribute("user", service.userInfo(session,userId));
		return "main";
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.GET)
	public String InsertStart(){
		return "users/insert";
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.POST)
	public String InsertEnd(HttpSession session,@ModelAttribute Users user){
		service.insert(session,user);
		return "main";
	}
	
	@RequestMapping(value="/info/{userId}",method = RequestMethod.GET)
	public String userInfoStart(HttpSession session,@PathVariable String userId,Model model){
		model.addAttribute("user", service.userInfo(session,userId));
		return "users/info";
	}
	
	
}
