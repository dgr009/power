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
	
}
