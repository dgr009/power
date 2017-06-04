package com.icia.palette.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.icia.palette.service.*;

@Controller
public class MainController {
	@Autowired
	private ProductService service;
	@Autowired
	private UserService service1;
	
	//메인으로 가기
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String goMain(Model model){
		model.addAttribute("list", service1.getItemList());
		return "main/main";
		
	}
	@RequestMapping(value="/main/loginlogin",method=RequestMethod.GET)
	public String test2(){
		return "main/login";
	}
	//상품및홈페이지 검색하기
	@RequestMapping(value="/main/search",method=RequestMethod.GET)
	public String search(@RequestParam String search,Model model){
		model.addAttribute("result", service1.search(search));
		model.addAttribute("search", search);
		return "main/search";
	}
	
	//유저 정보 테스트
	@RequestMapping(value="/main/infoinfo",method=RequestMethod.GET)
	public String test3(){
		return "main/usersInfo";
	}
	
	//테스트
	@RequestMapping(value="/main/book",method=RequestMethod.GET)
	public String test4(){
		return "main/bookmark";
	}
	
	//테스트
	@RequestMapping(value="/main/search2",method=RequestMethod.GET)
	public String test5(){
		return "main/search2";
	}
	
	//테스트
	@RequestMapping(value="/main/main",method=RequestMethod.GET)
	public String test6(){
		return "mini/Main";
	}
	
	//테스트
	@RequestMapping(value="/main/shopping",method=RequestMethod.GET)
	public String test7(){
		return "main/shoppingBasket";
	}
	//테스트
		@RequestMapping(value="/main/order",method=RequestMethod.GET)
		public String test8(){
			return "main/orderList";
		}
		
		//테스트
		@RequestMapping(value="/main/trade",method=RequestMethod.GET)
		public String test9(){
			return "main/tradeList";
		}
}
