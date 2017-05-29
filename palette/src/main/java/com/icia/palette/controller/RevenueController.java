package com.icia.palette.controller;

import javax.servlet.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;
@Controller
@RequestMapping("/admin")
public class RevenueController {

		private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
		@Autowired
		private ServletContext ctx;
		@Autowired
		private AdminService service;
		//매출내역페이지로
		@RequestMapping(value = "/revenueList", method = RequestMethod.GET)
		public String revenueList() {
			return "admin/RevenueList";
		} 

		//메인한달매출리스트
				
		//메인전체매출리스트
				
		//회원하루매출리스트
				
		//회원한달매출리시트
		//회원전체 매출리스트
		
		
}
