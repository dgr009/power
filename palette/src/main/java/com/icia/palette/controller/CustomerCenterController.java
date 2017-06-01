package com.icia.palette.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping(value="/main")
public class CustomerCenterController {

	@Autowired
	private CustomerCenterService service;
	
	//고객센터 글작성페이지로
	@RequestMapping(value="/customerCenter/register",method=RequestMethod.GET)
	public String customerCenterRegister(){
		return "main/CustomerCenterRegister";
	}
	//고객센터 글작성
	@RequestMapping(value="/customerCenter/register",method=RequestMethod.POST)
	public String customerCenterRegisterEnd(@ModelAttribute CustomerCenter c){
	service.customerCenterRegister(c);
		return "redirect:/main/customerCenter/list";
	}
	//고객센터 리스트로
	@RequestMapping(value="/customerCenter/list",method=RequestMethod.GET)
	public String customerCenterList(@RequestParam(defaultValue="1") int pageNo,Model model){
	model.addAttribute("result", service.customerCenterList(pageNo));
		return "main/CustomerCenterList";
	}
	//고객센터 글수정페이지로
	@RequestMapping(value="/customerCenter/update/{faqNo}",method=RequestMethod.GET)
	public String customerCenterUpdate(@PathVariable int faqNo,Model model){
	model.addAttribute("result", service.customerCenterUpdate(faqNo));
		return "main/CustomerCenterUpdate";
	}
	//고객센터 글수정하기
	@RequestMapping(value="/customerCenter/update",method=RequestMethod.POST)
	public String customerCenterUpdateEnd(@ModelAttribute CustomerCenter c){
		service.customerCenterUpdateEnd(c);
		return "redirect:/main/customerCenter/list";
}
	//고객센터 글보기
	@RequestMapping(value="/customerCenter/view/{faqNo}",method=RequestMethod.GET)
	public String customerCenterView(@PathVariable int faqNo,Model model){
		model.addAttribute("result", service.customerCenterView(faqNo));
		return "main/CustomerCenterView";
}

	//고객센터 글삭제하기
	@RequestMapping(value="/customerCenter/delete",method=RequestMethod.POST)
	public String customerCenterUpdateEnd(@RequestParam int  faqNo){
		service.customerCenterDelete(faqNo);
		return "redirect:/main/customerCenter/list";
}
	//공지사항 작성페이지로
		@RequestMapping(value="/notice/register",method=RequestMethod.GET)
		public String noticeRegister(){
			return "main/MainNoticeRegister";
		}
		//공지사항 글작성
		@RequestMapping(value="/notice/register",method=RequestMethod.POST)
		public String noticeRegisterEnd(@ModelAttribute MainNotice m){
		service.noticeRegister(m);
			return "redirect:/main/notice/list";
		}
		//공지사항 리스트로
		@RequestMapping(value="/notice/list",method=RequestMethod.GET)
		public String noticeList(@RequestParam(defaultValue="1") int pageNo,Model model){
		model.addAttribute("result", service.noticeList(pageNo));
			return "main/MainNoticeList";
		}
		//공지사항 글수정페이지로
		@RequestMapping(value="/notice/update/{mainNoticeArticleNo}",method=RequestMethod.GET)
		public String noticeUpdate(@PathVariable int mainNoticeArticleNo,Model model){
		model.addAttribute("result", service.noticeupdateStart(mainNoticeArticleNo));
			return "main/MainNoticeUpdate";
		}
		//공지사항 글수정하기
		@RequestMapping(value="/notice/update",method=RequestMethod.POST)
		public String noticeUpdateEnd(@ModelAttribute MainNotice m){
			service.noticeUpdate(m);
			return "redirect:/main/notice/list";
	}
		//공지사항 글보기
		@RequestMapping(value="/notice/view/{mainNoticeArticleNo}",method=RequestMethod.GET)
		public String noticeArticleView(@PathVariable int mainNoticeArticleNo,Model model){
			model.addAttribute("result", service.noticeView(mainNoticeArticleNo));
			return "main/MainNoticeView";
	}

		//공지사항 글삭제하기
		@RequestMapping(value="/notice/delete",method=RequestMethod.POST)
		public String noticeDelete(@RequestParam int  mainNoticeArticleNo){
			service.noticeDelete(mainNoticeArticleNo);
			return "redirect:/main/notice/list";
	}

	
}
