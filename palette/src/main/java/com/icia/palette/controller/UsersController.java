package com.icia.palette.controller;

import java.util.*;

import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.service.*;

@Controller
@RequestMapping("/users")
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginStart(HttpSession session) {
		return "users/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginEnd(HttpSession session,@RequestParam String userId,@RequestParam String userPwd) {
		service.login(userId,userPwd,session);
		return "main";
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.GET)
	public String InsertStart(){
		return "users/insert";
	}
	
}
