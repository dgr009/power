package com.icia.api.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.icia.api.service.UsersService;
import com.icia.api.vo.Users;

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
		if(result==1) return new ResponseEntity<String>(user.toString(),HttpStatus.OK);
		else return new ResponseEntity<String>("가입 실패",HttpStatus.BAD_REQUEST);
			
	}
	
	//아이디 중복 확인 ( 아이디 존재할경우 1이상 리턴)
	@RequestMapping(value="/hasId", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String usersHasId(@RequestParam String userId){
		if(service.hasUserId(userId)==0) return service.hasUserId(userId)+"";
		else return service.hasUserId(userId)+"";
	}
	//이메일 중복 확인 (이메일 존재할경우 1이상 리턴)
		@RequestMapping(value="/hasMail", method=RequestMethod.POST, produces="text/html;charset=utf-8")
		public String usersHasMail(@RequestParam String userMail){
			int result = service.hasUserMail(userMail);
			if(result==0) return result+"";
			else return result+"";
		}
	//회원 로그인
	@RequestMapping(value="/login", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String login(@RequestBody Users user) throws BindException {
		String token = service.userLogin(user);
		if(token==null) return "로그인 실패";
		else return token;
	}

	//회원 토큰으로 정보 얻기
	@RequestMapping(value="/info/{userId}", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String read(@RequestHeader("token") String token, @PathVariable String userId) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		Users user = service.read(userId,token);
		return new Gson().toJson(user);
	}
	
	//회원 아이디 찾기
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public String usersFindId(@RequestParam String userName,@RequestParam String userMail){
		String result = service.findId(userName,userMail);
		if(result==null) return "0";
		else return result;
	}
	
	//회원 비밀번호 찾기
	@RequestMapping(value="/findPwd", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String usersFindPwd(@RequestParam String userId,@RequestParam String userName,@RequestParam String userMail){
		String result = service.findPwd(userId,userName,userMail);
		if(result==null)
			return "0";
		else
			return result;
	}
	
	//회원 정보 수정
		@RequestMapping(value="/update", method=RequestMethod.PUT, produces="text/html;charset=utf-8", consumes="application/json")
		public ResponseEntity<String> usersUpdateEnd(@RequestBody Users user) throws BindException{
			logger.info(user.toString());;
			int result = service.updateUser(user);
			if(result==1) return new ResponseEntity<String>("수정 성공 : "+user.toString(),HttpStatus.OK);
			else return new ResponseEntity<String>("수정 실패",HttpStatus.BAD_REQUEST);
				
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
}
