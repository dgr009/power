package com.icia.api.controller;

import java.util.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/miniHome")
public class MiniHomeController {
	private static final Logger logger = LoggerFactory.getLogger(MiniHomeController.class);
	
	@Autowired
	private MiniHomeBoardService service;	
	
	
	//회원 토큰으로 정보 얻기
	@RequestMapping(value="/{userId}/freeView/{freeNo}", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String read(@RequestHeader("token") String token, @PathVariable String userId, @PathVariable int freeNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		MiniHomeFree free = service.miniHomeSelectFreeView(freeNo);
		return new Gson().toJson(free);
	}
	
	//자유게시판 리스트
	@RequestMapping(value="/{userId}/freeList/{pageNo}", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String list(@RequestHeader("token") String token, @PathVariable String userId, @PathVariable int pageNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		Map<String,Object> free = service.miniHomeSelectFreeList(userId, pageNo);
		return new Gson().toJson(free);
	}
	
	//자유게시판 작성
	@RequestMapping(value="/{userId}/freeRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> create(@RequestHeader("token") String token, @RequestBody MiniHomeFree free) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.miniHomeRegisterFree(free);
		
		if(result==1){
			return new ResponseEntity<String>(free.toString(),HttpStatus.OK);
		}else{
			return new ResponseEntity<String>("가입 실패",HttpStatus.BAD_REQUEST);
		}
	}
	
	//회원 토큰으로 정보 얻기
		@RequestMapping(value="/getUserInfo", method=RequestMethod.POST, produces="text/html;charset=utf-8")
		public String getUserIdByToken(@RequestHeader("token") String token) {
			// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
			System.out.println("Power Controller Token : " + token);
			String userId = service.getUserIdByToken(token);
			return new Gson().toJson(userId);
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
}
