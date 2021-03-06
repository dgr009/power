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
	
		// 전체회원목록
		@RequestMapping(value="/all", method=RequestMethod.GET)
	    public String totalUser(Model model, HttpSession session, @RequestParam(defaultValue="1") int pageNo){
			model.addAttribute("result", service.totalUser(session, pageNo)); 
			return "admin/AllUser";
		}
		
		// 홈페이지 개설회원 조회 
		@RequestMapping(value = "/openPage", method = RequestMethod.GET)
		public String OpenPageUser(Model model, HttpSession session,@RequestParam(defaultValue="1") int pageNo) {
			model.addAttribute("result", service.openPageUser(session,pageNo));
			return "admin/OpenPageUser";
		}
		
		// 로그인페이지로
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String loginStart(Model model) {
			return "admin/login";
		}

		// 로그인
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String loginEnd(HttpSession session, @RequestParam String adminId, @RequestParam String adminPwd,
				Model model) {
			int result = service.login(adminId, adminPwd, session);
			String destination=(String) session.getAttribute("destination");
			//String destination1=URLEncoder.encode(destination, "UTF-8");
			if(destination!=null) return "redirect:"+destination;
			return "redirect:/admin/revenueList";
		}
		//로그아웃
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) { 
			service.logout(session);
			return "redirect:/main";
		}
		// 회원이름으로 조회
		 @RequestMapping(value="/userName", method= RequestMethod.GET)
		public String findUserName(Model model,@RequestParam String userName) {
			if(userName!=null) 
				model.addAttribute("user", service.findUserName(userName));
			return "admin/UserName";
		}
		
	// 회원상세조회
		@RequestMapping(value = "/detail", method = RequestMethod.GET)
		public String DetailUser(Model model,@RequestParam String userId) {
			if(userId!=null) 
				model.addAttribute("user", service.detailUser(userId));
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