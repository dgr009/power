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
	//삭제
	@RequestMapping(value="/{userId}/freeboard/delete/{mainArticleNo}",method = RequestMethod.POST)
	public String delete(HttpSession session,@PathVariable int mainArticleNo){
		String userId = service.getUserId(session);
		service.miniHomeDeleteFree(session, mainArticleNo, userId);
		return "redirect:/main/"+userId+"/mainfreeBoardList?pageNo=1";
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
	//팔레컨 - 팔레서 - 파워컨 - 파워서 -파워디에 - 파워서 - 파워 컨 - 팔레서- 팔레 컨 - 뷰
	
	
	/*업데이트 작성페이지로
	@RequestMapping(value="/freeboard/update{",method = RequestMethod.GET)
	public String freeBoardUpdateStart(HttpSession session,@PathVariable int mainArticleNo,Model model){
		String userid = service.getUserId(session);
		model.addAttribute("userId",userId);
		return "mini/update";
	}*/
		
	/*/업데이트 처리
	@RequestMapping(value="/{userId}/freeUpdate/{freeNo}",method = RequestMethod.POST)
	public String updateEnd(HttpSession session,@ModelAttribute MiniHomeFree free, @PathVariable int freeNo){
		service.miniHomeUpdateFree(session, free);
		return "redirect:freeView/"+freeNo;
	}*/
	
	//공지게시판 작성페이지로
	@RequestMapping(value="/noticeboard/register",method=RequestMethod.GET)
	public String noticeBoardRegisterStart(){
		return "main/mainNoticeBoardRegister";	
	}
	//공지게시판 작성
	@RequestMapping(value="/noticeboard/register",method=RequestMethod.POST)
	public String noticeBoardRegisterEnd(@ModelAttribute MainNoticeBoard notice){
		String result = service.mainNoticeBoardRegister(notice);
		System.out.println(result);
		return "main/mainNoticeBoardRegister";	
	}
	/*/삭제
	@RequestMapping(value="/noticeboard/delete/{mainNoticeArticleNo}",method = RequestMethod.POST)
	public String noticeDelete(@PathVariable int mainArticleNo){
		service.mainNoticeBoardDelete(mainArticleNo);
		return "redirect:/main/mainNoticeBoardList?pageNo=1";
	}*/
	//자유게시판 뷰
	@RequestMapping(value="/noticeboard/view/{mainNoticeArticleNo}",method = RequestMethod.GET)
	public String noticeView(@PathVariable int mainArticleNo,Model model){
		model.addAttribute("main", service.mainNoticeBoardView( mainArticleNo));
		return "main/mainNoticeBoardView";
	}
	//자유게시판 리스트
	@RequestMapping(value="/noticeboard/list",method = RequestMethod.GET)
	public String noticeList(Model model,@RequestParam int pageNo){
		model.addAttribute("main", service.mainNoticeBoardList(pageNo));
		return "main/mainNoticeBoardList";
	}
	
}
