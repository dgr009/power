package com.icia.palette.controller;

import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.dao.*;
import com.icia.palette.service.*;
import com.icia.palette.vo.*;
@Controller
@RequestMapping("/miniHome")
public class MiniHomeController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@Autowired
	private MiniHomeBoardService service;
	
	@Autowired
	private MiniHomeService service2;
	@Autowired
	private ProductService service1;
	//자유게시판 뷰
	@RequestMapping(value="/{userId}/freeView/{freeNo}",method = RequestMethod.GET)
	public String userInfoStart(HttpSession session,@PathVariable String userId,@PathVariable int freeNo,Model model){
		model.addAttribute("mini", service.miniHomeSelectFreeView(session, freeNo, userId));
		model.addAttribute("kind", service1.productKind(userId));
		return "mini/freeView";
	}
	//공지 뷰
	@RequestMapping(value="/{userId}/noticeView/{noticeArticleNo}",method = RequestMethod.GET)
	public String noticeView(HttpSession session,@PathVariable String userId,@PathVariable int noticeArticleNo ,Model model){
		model.addAttribute("kind", service1.productKind(userId));
		model.addAttribute("mini", service.miniHomeSelectNoticeView(session, noticeArticleNo, userId));
		return "mini/noticeView";
	}
	
	//자유 리스트
	@RequestMapping(value="/{userId}/freeList",method = RequestMethod.GET)
	public String userInfo(HttpSession session,@PathVariable String userId,Model model,@RequestParam(defaultValue="1") int pageNo){
		model.addAttribute("kind", service1.productKind(userId));
		model.addAttribute("mini2", service.miniHomeSelectFreeList(session,userId,pageNo));
		return "mini/freeList";
	}
	//공지 리스트
	@RequestMapping(value="/{userId}/noticeList",method = RequestMethod.GET)
	public String noticeList(HttpSession session,@PathVariable String userId,Model model,@RequestParam(defaultValue="1") int pageNo){
		model.addAttribute("kind", service1.productKind(userId));
		model.addAttribute("mini2", service.miniHomeSelectNoticeList(session, userId, pageNo));
		return "mini/noticeList";
	}
	//이용권 구매 리스트
	@RequestMapping(value="/payList",method = RequestMethod.GET)
	public String payList(HttpSession session,Model model,@RequestParam(defaultValue="1") int pageNo){
		model.addAttribute("mini2", service2.payList(session, pageNo));
		return "mini/payList";
	}
	//자유게시판 추가 시작
	@RequestMapping(value="/{homeId}/freeRegister",method = RequestMethod.GET)
	public String InsertStart(HttpSession session,@PathVariable String homeId, Model model){
		model.addAttribute("kind", service1.productKind(homeId));
		model.addAttribute("homeId", homeId);
		System.out.println("controller userId : "+service.getUserIdByToken(session));
		model.addAttribute("userId", service.getUserIdByToken(session));
		return "mini/freeRegister";
	}
	
	//추가 끝
	@RequestMapping(value="/{homeId}/freeRegister",method = RequestMethod.POST)
	public String InsertEnd(HttpSession session,@ModelAttribute MiniHomeFree free){
		System.out.println("시바박삽재갑재가ㅐㅂㅈ " + free.getUserId());
		String result = service.miniHomeRegisterFree(session, free);
		//return 값으로 freeNo를 넘겼으므로 result안에 들어있다
		return "mini/freeList";
	}
	
	//공지게시판 추가 시작
	@RequestMapping(value="/{homeId}/noticeRegister",method = RequestMethod.GET)
	public String InsertNoticeStart(HttpSession session,@PathVariable String homeId, Model model){
		model.addAttribute("homeId", homeId);
		model.addAttribute("kind", service1.productKind(homeId));
		System.out.println("controller userId : "+service.getUserIdByToken(session));
		model.addAttribute("userId", service.getUserIdByToken(session));
		return "mini/noticeRegister";
	}
	
	//공지게시판 추가 끝
	@RequestMapping(value="/{homeId}/noticeRegister",method = RequestMethod.POST)
	public String InsertNoticeEnd(HttpSession session,@ModelAttribute MiniHomeNotice notice){
		String result = service.miniHomeRegisterNotice(session, notice);
		return "redirect:noticeView/"+result;
	}
	
	//업데이트 뷰
	@RequestMapping(value="/{homeId}/freeUpdate/{freeNo2}",method = RequestMethod.GET)
	public String updateStart(HttpSession session,@PathVariable String homeId,@PathVariable int freeNo2,Model model){
		model.addAttribute("kind", service1.productKind(homeId));
		model.addAttribute("mini", service.miniHomeSelectFreeView(session, freeNo2, homeId));
		return "mini/freeUpdate";
	}
	
	//업데이트 처리
	@RequestMapping(value="/{homeId}/freeUpdate/{freeNo2}",method = RequestMethod.POST)
	public String updateEnd(HttpSession session,@ModelAttribute MiniHomeFree free, @PathVariable int freeNo2){
		service.miniHomeUpdateFree(session, free);
		return "redirect:../freeView/"+freeNo2;
	}
	
	//공지 업데이트 뷰
	@RequestMapping(value="/{homeId}/noticeUpdate/{noticeArticleNo2}",method = RequestMethod.GET)
	public String noticeUpdateStart(HttpSession session,@PathVariable String homeId,@PathVariable int noticeArticleNo2,Model model){
		model.addAttribute("kind", service1.productKind(homeId));
		model.addAttribute("mini", service.miniHomeSelectNoticeView(session, noticeArticleNo2, homeId));
		return "mini/noticeUpdate";
	}
	
	//공지 업데이트 처리
	@RequestMapping(value="/{homeId}/noticeUpdate/{noticeArticleNo2}",method = RequestMethod.POST)
	public String noticeUpdateEnd(HttpSession session,@ModelAttribute MiniHomeNotice notice, @PathVariable int noticeArticleNo2){
		service.miniHomeUpdateNotice(session, notice);
		return "redirect:../noticeView/"+noticeArticleNo2;
	}
	
	//자유게시판 삭제
	@RequestMapping(value="/{userId}/freeDelete/{freeNo}",method = RequestMethod.POST)
	public String delete(HttpSession session, @PathVariable int freeNo,@PathVariable String userId){
		service.miniHomeDeleteFree(session, freeNo, userId);
		return "redirect:../miniHome/"+userId+"/freeList?pageNo=1";
	}
	//공지게시판 삭제
	@RequestMapping(value="/{userId}/noticeDelete/{noticeArticleNo}",method = RequestMethod.POST)
	public String deleteNotice(HttpSession session, @PathVariable int noticeArticleNo,@RequestParam String userId){
		System.out.println("================================"+noticeArticleNo);
		System.out.println("================================"+userId);
		service.miniHomeDeleteNotice(session, noticeArticleNo, userId);
		System.out.println("여긱ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ");
		return "redirect:/miniHome/"+userId+"/noticeList?pageNo=1";
	}
	//판매자 정보 조회+홈페이지
	@RequestMapping(value="/{userId}/Info",method = RequestMethod.GET)
	public String miniHomeSelectSellerInformation(HttpSession session,@PathVariable String userId,Model model){
		model.addAttribute("kind", service1.productKind(userId));
		model.addAttribute("mini", service2.miniHomeSelectSellerInformation(session, userId));
		return "mini/sellerInfo";
	}
	
	//결제 시작
	@RequestMapping(value="/{homeId}/admin/pay",method = RequestMethod.GET)
	public String payStart(HttpSession session,@PathVariable String homeId, Model model){
		model.addAttribute("kind", service1.productKind(homeId));
		model.addAttribute("homeId", homeId);
		model.addAttribute("userId", service.getUserIdByToken(session));
		return "mini/homePay";
	}
	//결제 처리
	@RequestMapping(value="/{homeId}/pay",method = RequestMethod.POST)
	public String payEnd(HttpSession session,@RequestParam String userId){
		service2.homePay(session, userId);
		return "users/close";
	}

	

	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
