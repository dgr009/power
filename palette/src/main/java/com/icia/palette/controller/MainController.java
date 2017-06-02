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
	
	//메인 자유게시판 업데이트 뷰
	@RequestMapping(value="/freeboard/update/{mainArticleNo}",method = RequestMethod.GET)
	public String updateStart(HttpSession session,@PathVariable int mainArticleNo,Model model){
		model.addAttribute("main", service.mainFreeBoardView(session, mainArticleNo));
		return "main/mainFreeBoardUpdate";
	}
		
	//메인자유게시판 업데이트 처리
	@RequestMapping(value="/freeboard/update/{mainArticleNo}",method = RequestMethod.POST)
	public String updateEnd(HttpSession session,@ModelAttribute MainFreeBoard free,@PathVariable int mainArticleNo){
		service.mainFreeUpdate(session, free,mainArticleNo);;
		System.out.println(session+" ===="+free+"===== "+mainArticleNo);
		return "redirect:/main/freeboard/list?pageNo=1";
	}
	
	
	//메인자유게시판 작성페이지로
	@RequestMapping(value="/freeboard/register",method=RequestMethod.GET)
	public String freeBoardRegisterStart(HttpSession session,Model model){
		String userId = service.getUserId(session);
		model.addAttribute("userId", userId);
		return "main/mainFreeBoardRegister";	
	}
	//메인자유게시판 작성
	@RequestMapping(value="/freeboard/register",method=RequestMethod.POST)
	public String freeBoardRegisterEnd(@ModelAttribute MainFreeBoard free){
		String result = service.mainFreeBoardRegister(free);
		System.out.println(result);
		return "redirect:list?pageNo=1";	
	}
	//메인게시판 삭제
	@RequestMapping(value="/freeboard/delete/{mainArticleNo}",method = {RequestMethod.GET, RequestMethod.POST})
	public String delete(HttpSession session,@PathVariable int mainArticleNo,Model model){
		service.mainFreeBoardDelete(mainArticleNo);
		return "redirect:/main/freeboard/list?pageNo=1";
	}
	
	//자유게시판 뷰
	@RequestMapping(value="/freeboard/view/{mainArticleNo}",method = RequestMethod.GET)
	public String userInfoStart(HttpSession session,@PathVariable int mainArticleNo,Model model){
		model.addAttribute("main", service.mainFreeBoardView(session, mainArticleNo));
		return "main/mainFreeBoardView";
	}
	//자유게시판 리스트
	@RequestMapping(value="/freeboard/list",method = RequestMethod.GET)
	public String userInfo(Model model,@RequestParam int pageNo){
		model.addAttribute("main", service.mainFreeBoardList(pageNo));
		return "main/mainFreeBoardList";
	}

}
