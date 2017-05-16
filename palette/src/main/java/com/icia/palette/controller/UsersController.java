package com.icia.palette.controller;

import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping("/users")
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	@Autowired
	private UserService service;

	@RequestMapping(value = "/home")
	public String home() {
		return "maintest";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginStart() {
		return "users/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginEnd(HttpSession session, @RequestParam String userId, @RequestParam String userPwd,
			Model model) {
		int result = service.login(userId, userPwd, session);
		if (result == 1) {
			Users user = service.userInfo(session, userId);
			model.addAttribute("user", user);
			if (user.getEnabled().equals("0")) {
				service.logout(session);
				return "users/usersReverse";
			}
		}
		return "maintest";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		service.logout(session);
		return "maintest";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertStart() {
		return "users/insert";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertEnd(@ModelAttribute Users user) {
		service.insert(user);
		return "maintest";
	}

	@RequestMapping(value = "/info/{userId}", method = RequestMethod.GET)
	public String userInfoStart(HttpSession session, @PathVariable String userId, Model model) {
		model.addAttribute("user", service.userInfo(session, userId));
		return "users/info";
	}

	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findIdStart() {
		return "users/findId";
	}

	@RequestMapping(value = "/findPwd", method = RequestMethod.GET)
	public String findPwdStart() {
		return "users/findPwd";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateStart(HttpSession session, Model model) {
		String userId = service.getUserIdByToken(session);
		model.addAttribute("user", service.userInfo(session, userId));
		return "users/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateEnd(HttpSession session, @ModelAttribute Users user) {
		service.updateUser(session, user);
		return "maintest";
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
		return "maintest";
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
		return "maintest";
	}

	// 포인트 환급하기 페이지
	@RequestMapping(value = "/tradeList", method = RequestMethod.GET)
	public String tradeList(HttpSession session, Model model) {
		model.addAttribute("tradeList", service.tradeList(session));
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

		return "maintest";
	}

	// 회원 비활성화(탈퇴)
	@RequestMapping(value = "/reverse/{userId}", method = RequestMethod.POST)
	public String deleteEnd(HttpSession session, @PathVariable String userId) {
		service.reverseUser(userId);
		return "maintest";
	}
}
