package com.icia.api.controller;

import java.util.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private AdminService service;
	
	// 전체회원목록조회
		 @RequestMapping(value="/all", method=RequestMethod.GET)
		    public String totalUser(@RequestParam(defaultValue = "1") int pageNo){
			 Map<String,Object> map = service.totalUser(pageNo);
			 return new Gson().toJson(map);
		    }
		 
	// 홈페이지 개설회원 조회
		@RequestMapping(value="/openUser", method = RequestMethod.GET)
			public String openPageUser() {
				Map<String, Object> map = service.FindOpenPageUser();
				return new Gson().toJson(map);
			}
			
	//관리자 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public String login(@RequestBody Admin admin) throws BindException {
		String token = service.adminLogin(admin);
		if (token == null)
			return "로그인 실패";
		else
			return token;
	}
	
	// 관리자 토큰으로 정보 얻기
		@RequestMapping(value = "/info", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
		public String read(@RequestHeader("token") String token) {
			// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
			Admin admin = service.getAdminByToken(token);
			return new Gson().toJson(admin);
		}
	
	//관리자 로그아웃
	
	//	회원이름으로 조회
	@RequestMapping(value = "/userName", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public String findUserName(@RequestBody Map<String, Object> map){
		Map<String, Object> maps = service.findUserName(map);
		return new Gson().toJson(maps);
	}
	
	
	// 회원상세조회
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String userDetail(@RequestParam String userId) {
		service.DetailUser(userId);
		return null;
	}
	//회원삭제	
	@RequestMapping(value="/DeleteUser", method=RequestMethod.DELETE)
	public String userDelete(@RequestParam String userId) {
		service.DeleteUser(userId);
		return null;
	}
	//회원정보수정 
	@RequestMapping(value = "/UpdateUser", method = RequestMethod.PUT)
	public String usersUpdate(@RequestBody Users user) {
		service.UpdateUser(user);
		return null;
	} 
	//홈페이지삭제
	@RequestMapping(value="/DeletePage", method=RequestMethod.POST)
	public String pageDelete(@RequestParam String userId) {
		service.DeleteUserPage(userId);
		return new Gson().toJson(userId);
	}
	// 일별매출보기   

	// 달별매출보기

	// 연간매출보기  
	
	// 회원별 매출보기, 합계보기 
	
	// 전체매출보기 
}