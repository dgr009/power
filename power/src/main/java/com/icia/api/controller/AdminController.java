package com.icia.api.controller;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.icia.api.service.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private AdminService service;
	// 홈페이지 개설회원 조회
	@RequestMapping(value="/OpenPageUser", method = RequestMethod.GET)
	public String openPageUser(@RequestBody String userId) {
		service.FindOpenPageUser(userId);
		return null;
	}
	// 전체회원목록조회
	@RequestMapping(value="/AllUser", method=RequestMethod.GET)
	public String allUser(@RequestBody Users user) {
		service.FindTotalUser(user);
		return null;
	}
	// 회원상세조회
	@RequestMapping(value="/Detail", method=RequestMethod.GET)
	public String userDetail(@RequestBody String userId) {
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
		return null;
	}
	// 일별매출보기   

	// 달별매출보기

	// 연간매출보기  
	
	// 회원별 매출보기, 합계보기 
	
	// 전체매출보기 
}