package com.icia.palette.controller;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping("/main")
public class MainController {
	@Autowired
	private MainService service;
	
	//메인게시판 작성페이지로
	@RequestMapping(value="/freeboard/register",method=RequestMethod.GET)
	public String freeBoardRegisterStart(HttpSession session,Model model){
		String userId = service.getUserId(session);
		model.addAttribute("userId", userId);
		return "main/mainFreeBoardRegister";	
	}
	
	//메인게시판 작성
	@RequestMapping(value="/freeboard/register",method=RequestMethod.POST)
	public String freeBoardRegisterEnd(@ModelAttribute MainFreeBoard free){
		String result = service.mainFreeBoardRegister(free);
		System.out.println(result);
		return "main";	
	}
}
