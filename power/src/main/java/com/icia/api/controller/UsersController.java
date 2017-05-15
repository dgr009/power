package com.icia.api.controller;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.icia.api.service.*;
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
		service.insertUser(user);
		return new ResponseEntity<String>(user.toString(),HttpStatus.OK);
	}
	
	//아이디 중복 확인 ( 아이디 존재할경우 1이상 리턴)
	@RequestMapping(value="/hasId", method=RequestMethod.POST)
	public ResponseEntity<String> usersHasId(@RequestParam String userId){
		if(service.hasUserId(userId)==0)
			return new ResponseEntity<String>(service.hasUserId(userId)+"",HttpStatus.OK);
		else
			return new ResponseEntity<String>(service.hasUserId(userId)+"",HttpStatus.BAD_REQUEST);
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
	
	/*@RequestMapping(value="/{bno}",method=RequestMethod.DELETE,produces="text/html;charset=UTF-8")
	public ResponseEntity<String> delete(@PathVariable int bno,@RequestHeader("token") String token){
		System.out.println(token);
		if(service.getRightToken(token))
			return new ResponseEntity<String>("토큰 확인 성공",HttpStatus.OK);
		else
			return new ResponseEntity<String>("토큰 확인 실패",HttpStatus.BAD_REQUEST);
	}*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
}
