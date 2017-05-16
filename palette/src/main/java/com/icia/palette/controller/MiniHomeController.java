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
	
	@RequestMapping(value="/{userId}/freeList",method = RequestMethod.GET)
	public String userInfo(HttpSession session,@PathVariable String userId,Model model,@RequestParam int pageNo){
		model.addAttribute("mini2", service.miniHomeSelectFreeList(session,userId,pageNo));
		return "mini/info2";
	}
	
	//추가 시작
	@RequestMapping(value="/{homeId}/freeRegister",method = RequestMethod.GET)
	public String InsertStart(HttpSession session,@PathVariable String homeId, Model model){
		model.addAttribute("homeId", homeId);
		System.out.println("controller userId : "+service.getUserIdByToken(session));
		model.addAttribute("userId", service.getUserIdByToken(session));
		return "mini/register";
	}
	
	//추가 끝
	@RequestMapping(value="/{homeId}/freeRegister",method = RequestMethod.POST)
	public String InsertEnd(HttpSession session,@ModelAttribute MiniHomeFree free){
		service.miniHomeRegisterFree(session, free);
		return "redirect:freeList?pageNo=1";
	}
	
	//업데이트 뷰
	@RequestMapping(value="/{homeId}/freeUpdate/{freeNo2}",method = RequestMethod.GET)
	public String updateStart(HttpSession session,@PathVariable String homeId,@PathVariable int freeNo2,Model model){
		model.addAttribute("mini", service.miniHomeSelectFreeView(session, freeNo2, homeId));
		return "mini/update";
	}
	
	//업데이트 처리
	@RequestMapping(value="/{homeId}/freeUpdate/{freeNo2}",method = RequestMethod.POST)
	public String updateEnd(HttpSession session,@ModelAttribute MiniHomeFree free, @PathVariable int freeNo2){
		service.miniHomeUpdateFree(session, free);
		return "redirect:../freeView/"+freeNo2;
	}
	
	//삭제
	@RequestMapping(value="/{userId}/freeDelete/{freeNo}",method = RequestMethod.POST)
	public String delete(HttpSession session, @PathVariable int freeNo,@PathVariable String userId){
		service.miniHomeDeleteFree(session, freeNo, userId);
		return "redirect:/palette/miniHome/"+userId+"/freeList?pageNo=1";
	}
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
