package com.icia.palette.controller;

import java.io.*;

import javax.annotation.*;
import javax.servlet.*;
import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;

import com.icia.palette.service.*;
import com.icia.palette.util.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping("/users")
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	@Autowired
	private ServletContext ctx;
	@Resource(name = "homePath")
	private String path;
	@Autowired
	private UserService service;

	// 메인홈으로
	@RequestMapping(value = "/home")
	public String home() {
		return "maintest";
	}

	// 로그인페이지로
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginStart() {
		return "users/usersLogin";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginEnd(HttpSession session, @RequestParam String userId, @RequestParam String userPwd,
			Model model) {
		int result = service.login(userId, userPwd, session);
		if (result == 1) {
			Users user = service.userInfo(session);
			model.addAttribute("user", user);
			if (user.getEnabled().equals("0")) {
				service.logout(session);
				return "users/usersReverse";
			}
		}
		return "redirect:/users/main";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		service.logout(session);
		return "redirect:/users/main";
	}

	// 회원가입페이지로
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertStart() {
		return "users/usersRegister";
	}

	// 회원가입완료
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertEnd(@ModelAttribute Users user) {
		service.insert(user);
		return "redirect:/users/main";
	}

	// 회원 정보 보기
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String userInfoStart(HttpSession session, Model model) {
		model.addAttribute("user", service.userInfo(session));
		return "users/info";
	}

	// 회원아이디 찾기 페이지로
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findIdStart() {
		return "users/findId";
	}

	// 회원 비밀번호 찾기 페이지로
	@RequestMapping(value = "/findPwd", method = RequestMethod.GET)
	public String findPwdStart() {
		return "users/findPwd";
	}

	// 회원 정보수정하기 페이지로
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateStart(HttpSession session, Model model) {
		String userId = service.getUserIdByToken(session);
		model.addAttribute("user", service.userInfo(session));
		return "users/usersUpdate";
	}

	// 회원 정보수정하기
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateEnd(HttpSession session, @ModelAttribute Users user) {
		service.updateUser(session, user);
		return "redirect:/users/main";
	}

	// 포인트 충전하기 페이지
	@RequestMapping(value = "/chargePoint", method = RequestMethod.GET)
	public String chargePointStart(HttpSession session) {
		return "users/chargePoint";
	}

	// 포인트 충전하기
	@RequestMapping(value = "/chargePoint", method = RequestMethod.POST)
	public String chargePointEnd(HttpSession session, @RequestParam int tradePoint) {
		String userId = service.getUserIdByToken(session);
		service.chargePoint(session, userId, tradePoint);
		return "redirect:/users/main";
	}

	// 포인트 환급하기 페이지
	@RequestMapping(value = "/refundPoint", method = RequestMethod.GET)
	public String refundPointStart(HttpSession session) {
		return "users/refundPoint";
	}

	// 포인트 환급하기
	@RequestMapping(value = "/refundPoint", method = RequestMethod.POST)
	public String refundPointEnd(HttpSession session, @RequestParam int tradePoint) {
		String userId = service.getUserIdByToken(session);
		service.refundPoint(session, userId, tradePoint);
		return "redirect:/users/main";
	}

	// 포인트 충전 환급 조회
	@RequestMapping(value = "/tradeList", method = RequestMethod.GET)
	public String tradeList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		model.addAttribute("result", service.tradeList(session, pageNo));
		return "users/tradeList";
	}

	// 회원 비활성화(탈퇴) 페이지
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteStart() {
		return "users/usersDelete";
	}

	// 회원 비활성화(탈퇴)
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteEnd(HttpSession session) {
		service.deleteUser(session);
		service.logout(session);

		return "redirect:/users/main";
	}

	// 회원 활성화
	@RequestMapping(value = "/reverse/{userId}", method = RequestMethod.POST)
	public String deleteEnd(HttpSession session, @PathVariable String userId) {
		service.reverseUser(userId);
		return "redirect:/users/main";
	}

	// 회원 주문내역 조회 페이지
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public String orderList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		model.addAttribute("result", service.userOrderList(session, pageNo));
		return "users/orderStatement";
	}

	// 회원 주문 취소
	@RequestMapping(value = "/orderDelete", method = RequestMethod.GET)
	public String orderDelete(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo,
			@RequestParam int orderNo) {
		service.deleteOrder(orderNo);
		model.addAttribute("result", service.userOrderList(session, pageNo));
		return "users/orderStatement";
	}

	// 회원 즐겨찾기 조회
	@RequestMapping(value = "/bookmarkList", method = RequestMethod.GET)
	public String bookMarkList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		model.addAttribute("result", service.userBookmarkList(session, pageNo));
		return "users/bookmarkList";
	}

	// 북마크 테스트페이지로
	@RequestMapping(value = "/bookmark", method = RequestMethod.GET)
	public String deleteEnd() {
		return "users/bookmarktest";
	}

	// 장바구니 조회
	@RequestMapping(value = "/basketList", method = RequestMethod.GET)
	public String basketList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		model.addAttribute("result", service.userBasketList(session, pageNo));
		return "users/basketList";
	}

	// 회원 장바구니 취소하기
	@RequestMapping(value = "/basketDelete", method = RequestMethod.GET)
	public String basketDelete(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo,
			@RequestParam int itemNo) {
		service.deleteBasket(session, itemNo);
		model.addAttribute("result", service.userBasketList(session, pageNo));
		return "users/basketList";
	}

	// 회원 미니홈페이지 개설하기 페이지로
	@RequestMapping(value = "/homeRegister", method = RequestMethod.GET)
	public String homeRegisterStart() {
		return "users/homeRegister";
	}

	// 회원 미니홈페이지 개설하기
	@RequestMapping(value = "/homeRegister", method = RequestMethod.POST)
	public String homeRegisterEnd(HttpSession session, @ModelAttribute MiniHome home, MultipartFile file)
			throws IOException {
		String fileName = UploadUtils2.storeAndGetFileName(file, ctx, path);
		home.setHomeImg(fileName);
		service.homeRegister(home, session);
		return "redirect:/users/main";
	}

	// 회원 미니홈페이지 수정하기 페이지로
	@RequestMapping(value = "/homeUpdate", method = RequestMethod.GET)
	public String homeUpdateStart(HttpSession session, Model model) {
		model.addAttribute("result", service.getHomeInfo(session));
		return "users/homeUpdate";
	}
	
	// 회원 미니홈페이지 수정하기
		@RequestMapping(value = "/homeUpdate", method = RequestMethod.POST)
		public String homeUpdateEnd(HttpSession session, @ModelAttribute MiniHome home, MultipartFile file)
				throws IOException {
			if(file!=null){
				String fileName = UploadUtils2.storeAndGetFileName(file, ctx, path);
				home.setHomeImg(fileName);
			}
			service.homeUpdate(home, session);
			return "redirect:/users/main";
		}

	// 메인으로
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String ma() {
		return "main/main";
	}

	//홈페이지 비활성화
	@RequestMapping(value = "/homeDelete", method = RequestMethod.GET)
	public String homeDeleteStart() {
		return "users/homeDelete";
	}
	
}
