package com.icia.palette.controller;

import java.sql.*;

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
		private RevenueService service;
		//매출내역페이지로
		@RequestMapping(value = "/revenueList", method = RequestMethod.GET)
		public String revenueList(Model model,@RequestParam(required=false) Date startDate,@RequestParam(required=false) Date endDate,@RequestParam(defaultValue="1") int pageNo) {
			if(startDate!=null)
				model.addAttribute("r", service.selectRevenueList(startDate,endDate,pageNo));
			return "admin/RevenueList";
		} 
		
		@RequestMapping(value = "/revenueList", method = RequestMethod.POST)
		public String revenueListEnd(Model model,@RequestParam Date startDate,@RequestParam Date endDate,@RequestParam(defaultValue="1") int pageNo) {
			model.addAttribute("r", service.selectRevenueList(startDate,endDate,pageNo));
			return "admin/RevenueList";
		} 

		//메인한달매출리스트
				
		//메인전체매출리스트
				
		//회원하루매출리스트
				
		//회원한달매출리시트
		//회원전체 매출리스트
		
		
}
