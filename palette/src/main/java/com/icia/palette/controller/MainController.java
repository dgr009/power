package com.icia.palette.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.icia.palette.service.MainService;
import com.icia.palette.service.ProductService;
import com.icia.palette.service.UserService;
import com.icia.palette.vo.MainFreeBoard;
import com.icia.palette.vo.Users;

@Controller
public class MainController {
	@Autowired
	private ProductService service;
	@Autowired
	private UserService service1;
	@Autowired
	private MainService service2;

	// 메인으로 가기
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String goMain(Model model) {
		model.addAttribute("list", service1.getItemList());
		return "main/main";

	}

	// 로그인 페이지로
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() {
		return "main/login";
	}
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginEnd(HttpSession session, @RequestParam String userId, 
							@RequestParam String userPwd, Model model)
			throws UnsupportedEncodingException {
		int result = service1.login(userId, userPwd, session);
		if (result == 1) {
			Users user = service1.userInfo(session);
			model.addAttribute("user", user);
			if (user.getEnabled().equals("0")) {
				service1.logout(session);
				return "users/usersReverse";
			}
		}
		String destination = (String) session.getAttribute("destination");
		// String destination1=URLEncoder.encode(destination, "UTF-8");
		if (destination != null)
			return "redirect:" + destination;
		return "redirect:/main";
	}

	// 상품및홈페이지 검색하기
	@RequestMapping(value = "/main/search", method = RequestMethod.GET)
	public String search(@RequestParam String search, Model model) {
		model.addAttribute("result", service1.search(search));
		model.addAttribute("search", search);
		return "main/search";
	}

	// 메인 자유게시판 업데이트 뷰
	@RequestMapping(value = "/main/freeboard/update/{mainArticleNo}", method = RequestMethod.GET)
	public String updateStart(HttpSession session, @PathVariable int mainArticleNo, Model model) {
		model.addAttribute("main", service2.mainFreeBoardView(session, mainArticleNo));
		return "main/mainFreeBoardUpdate";
	}

	// 메인자유게시판 업데이트 처리
	@RequestMapping(value = "/main/freeboard/update/{mainArticleNo}", method = RequestMethod.POST)
	public String updateEnd(HttpSession session, @ModelAttribute MainFreeBoard free, @PathVariable int mainArticleNo) {
		service2.mainFreeUpdate(session, free, mainArticleNo);
		;
		System.out.println(session + " ====" + free + "===== " + mainArticleNo);
		return "redirect:/main/freeboard/list?pageNo=1";
	}

	// 메인자유게시판 작성페이지로
	@RequestMapping(value = "/main/freeboard/register", method = RequestMethod.GET)
	public String freeBoardRegisterStart(HttpSession session, Model model) {
		String userId = service2.getUserId(session);
		model.addAttribute("userId", userId);
		return "main/mainFreeBoardRegister";
	}

	// 메인자유게시판 작성
	@RequestMapping(value = "/main/freeboard/register", method = RequestMethod.POST)
	public String freeBoardRegisterEnd(@ModelAttribute MainFreeBoard free) {
		String result = service2.mainFreeBoardRegister(free);
		System.out.println(result);
		return "redirect:list?pageNo=1";
	}

	// 메인자유게시판 삭제
	@RequestMapping(value = "/main/freeboard/delete/{mainArticleNo}", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String delete(HttpSession session, @PathVariable int mainArticleNo, Model model) {
		service2.mainFreeBoardDelete(mainArticleNo);
		return "redirect:/main/freeboard/list?pageNo=1";
	}

	// 메인자유게시판 뷰
	@RequestMapping(value = "/main/freeboard/view/{mainArticleNo}", method = RequestMethod.GET)
	public String userInfoStart(HttpSession session, @PathVariable int mainArticleNo, Model model) {
		model.addAttribute("main", service2.mainFreeBoardView(session, mainArticleNo));
		return "main/mainFreeBoardView";
	}

	// 메인자유게시판 리스트
	@RequestMapping(value = "/main/freeboard/list", method = RequestMethod.GET)
	public String userInfo(Model model, @RequestParam(defaultValue = "1") int pageNo) {
		model.addAttribute("main", service2.mainFreeBoardList(pageNo));
		return "main/mainFreeBoardList";
	}

}
