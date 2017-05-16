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
	
	@RequestMapping(value="/home")
	public String home(){
		return "maintest";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginStart() {
		return "users/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginEnd(HttpSession session,@RequestParam String userId,@RequestParam String userPwd,Model model) {
		int result = service.login(userId,userPwd,session);
		if(result==1) model.addAttribute("user", service.userInfo(session,userId));
		return "maintest";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout (HttpSession session){
		service.logout(session);
		return "maintest";
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.GET)
	public String insertStart(){
		return "users/insert";
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.POST)
	public String insertEnd(@ModelAttribute Users user){
		service.insert(user);
		return "maintest";
	}
	
	@RequestMapping(value="/info/{userId}",method = RequestMethod.GET)
	public String userInfoStart(HttpSession session,@PathVariable String userId,Model model){
		model.addAttribute("user", service.userInfo(session,userId));
		return "users/info";
	}
	
	@RequestMapping(value="/findId",method = RequestMethod.GET)
	public String findIdStart(){
		return "users/findId";
	}
	
	
	@RequestMapping(value="/findPwd",method = RequestMethod.GET)
	public String findPwdStart(){
		return "users/findPwd";
	}
	
	@RequestMapping(value="/update/{userId}",method = RequestMethod.GET)
	public String updateStart(HttpSession session,@PathVariable String userId,Model model){
		model.addAttribute("user", service.userInfo(session,userId));
		return "users/update";
	}
	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String updateEnd(HttpSession session,@ModelAttribute Users user){
		service.updateUser(session,user);
		return "maintest";
	}

	@RequestMapping(value="/chargePoint/{userId}",method = RequestMethod.GET)
	public String chargePointStart(HttpSession session,@PathVariable String userId,Model model){
		model.addAttribute("userId", userId);
		return "users/chargePoint";
	}
	
	@RequestMapping(value="/chargePoint",method = RequestMethod.POST)
	public String chargePointEnd(HttpSession session,@RequestParam int tradePoint){
		service.chargePoint(session,tradePoint);
		return "maintest";
	}
	
}
