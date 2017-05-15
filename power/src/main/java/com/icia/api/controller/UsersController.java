package com.icia.api.controller;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/users")
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private UsersService service;	
	
	//회원 가입
	@RequestMapping(value="/register", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> usersRegisterEnd(@RequestBody Users user) throws BindException{
		logger.info(user.toString());;
		int result = service.insertUser(user);
		if(result==1){
			return new ResponseEntity<String>(user.toString(),HttpStatus.OK);
		}else{
			return new ResponseEntity<String>("가입 실패",HttpStatus.BAD_REQUEST);
		}
		
	}
	
	//아이디 중복 확인 ( 아이디 존재할경우 1이상 리턴)
	@RequestMapping(value="/hasId", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String usersHasId(@RequestParam String userId){
		if(service.hasUserId(userId)==0)
			return service.hasUserId(userId)+"";
		else
			return service.hasUserId(userId)+"";
	}
	
	//회원 로그인
	@RequestMapping(value="/login", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String login(@RequestBody Users user) throws BindException {
		String token = service.userLogin(user);
		if(token==null)
			return "로그인 실패";
		else
			return token;
	}

	//회원 토큰으로 정보 얻기
	@RequestMapping(value="/info/{userId}", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String read(@RequestHeader("token") String token, @PathVariable String userId) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		Users user = service.read(userId,token);
		return new Gson().toJson(user);
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String usersFindId(@RequestParam String userName,@RequestParam String userMail){
		String str =  service.findId(userName,userMail);
		if(str==null)
			return 1+"";
		else
			return 0+"";
	}
	
	@RequestMapping(value="/findPwd", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String usersFindPwd(@RequestParam String userId,@RequestParam String userName,@RequestParam String userMail){
		if(service.findPwd(userId,userName,userMail)==null)
			return 0+"";
		else
			return service.findPwd(userId,userName,userMail)+"";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
}
