package com.icia.palette.controller;

import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping("/miniHome")
public class MiniHomeController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@Autowired
	private MiniHomeBoardService service;
	
	@RequestMapping(value="/{userId}/freeView/{freeNo}",method = RequestMethod.GET)
	public String userInfoStart(HttpSession session,@PathVariable String userId,@PathVariable int freeNo,Model model){
		model.addAttribute("mini", service.miniHomeSelectFreeView(session, freeNo, userId));
		return "mini/info";
	}
	
	@RequestMapping(value="/{userId}/freeList/{pageNo}",method = RequestMethod.GET)
	public String userInfo(HttpSession session,@PathVariable String userId,@PathVariable int pageNo,Model model){
		model.addAttribute("mini2", service.miniHomeSelectFreeList(session, pageNo,userId));
		System.out.println("=================="+service.miniHomeSelectFreeList(session, pageNo,userId));
		return "mini/info2";
	}
	
	@RequestMapping(value="/{homeId}/freeRegister",method = RequestMethod.GET)
	public String InsertStart(HttpSession session,@PathVariable String homeId, Model model){
		model.addAttribute("homeId", homeId);
		System.out.println("controller userId : "+service.getUserIdByToken(session));
		model.addAttribute("userId", service.getUserIdByToken(session));
		return "mini/register";
	}
	
	@RequestMapping(value="/{homeId}/freeRegister",method = RequestMethod.POST)
	public String InsertEnd(HttpSession session,@ModelAttribute MiniHomeFree free){
		service.miniHomeRegisterFree(session, free);
		return "mini/info2";
	}
}
