package com.icia.palette.controller;

import javax.servlet.*;
import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@Autowired
	private ServletContext ctx;
	@Autowired
	private AdminService service;
	@Autowired
	private UserService uservice;
	// 테스트
		
	// 전체회원목록
		@RequestMapping(value = "/all", method = RequestMethod.GET)
		public String AllUser(Model model) {
			model.addAttribute("user");
			return "admin/AllUser";
		} 
	// 홈페이지 개설회원 조회 
		@RequestMapping(value = "/openPage", method = RequestMethod.GET)
		public String OpenPageUser() {
			return "admin/OpenPageUser";
		}
	// 회원상세조회
		@RequestMapping(value = "/detailUser", method = RequestMethod.GET)
		public String DetailUser(Model model, Users user) {
			model.addAttribute("user" , user);
			return "admin/DetailUser";
		}
	// 회원삭제
		@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
		public String DeleteUser() {
			return "admin/DeleteUser";
		}
	// 회원정보수정
		@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
		public String UpdateUser(@ModelAttribute Users user) {
			return "redirect:/admin/UpdateUser";
		}
	// 홈페이지삭제
		@RequestMapping(value = "/deletePage", method = RequestMethod.GET)
		public String DeletePage() {
			return "admin/DeletePage";
		}
}