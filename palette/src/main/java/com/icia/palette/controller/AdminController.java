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
	
	// 회원이름으로 조회
		@RequestMapping(value="/userName", method= RequestMethod.GET)
		public String findUserName(Model model,@RequestParam(defaultValue=" ") String userName) {
			if(userName!=null) 
				model.addAttribute("userName", service.findUserName(userName));
			return "admin/UserName";
		}
	
	// 전체회원목록
		@RequestMapping(value="/all", method=RequestMethod.GET)
	    public String totalUser(Model model, @ModelAttribute Users user){
		    return "admin/AllUser";
		    }
		
	// 홈페이지 개설회원 조회 
		@RequestMapping(value = "/openPage", method = RequestMethod.GET)
		public String OpenPageUser() {
			return "admin/OpenPageUser";
		}
	// 회원상세조회
		@RequestMapping(value = "/detail", method = RequestMethod.GET)
		public String DetailUser(Model model, String userId) {
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
			return "admin/UpdateUser";
		}
	// 홈페이지삭제
		@RequestMapping(value = "/deletePage", method = RequestMethod.GET)
		public String DeletePage() {
			return "admin/DeletePage";
		}
}