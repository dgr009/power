package com.icia.palette.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.client.*;

import com.google.gson.*;
import com.icia.palette.vo.*;

@Service
public class UserService {

	// 회원 로그인
	public int login(String userId, String userPwd, HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HashMap<String, String> map = new HashMap<String, String>();
		System.out.println("아이디 비번 : " + userId + " " + userPwd);
		map.put("userId", userId);
		map.put("userPwd", userPwd);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		System.out.println("회원 로그인 api가기 직전"+requestEntity);
		String result = tpl
				.exchange("http://localhost:8087/api/users/login", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		
		System.out.println(result);
		if (result.equals("로그인 실패")) {
			return 0;
		} else {
			session.setAttribute("token", result);
			Users user = userInfo(session);
			session.setAttribute("user", user);
			return 1;
		}

	}

	// 회원 로그아웃
	public void logout(HttpSession session) {
		session.removeAttribute("token");
		session.removeAttribute("user");
	}

	// 회원 가입
	public void insert(Users user) {
		RestTemplate tpl = new RestTemplate();
		System.out.println("Service User" + user);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(user), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/register", HttpMethod.POST, requestEntity, String.class)
				.getBody();

		System.out.println(result);
	}

	// 회원 정보보기
	public Users userInfo(HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		System.out.println(requestEntity);
		String result = tpl.exchange("http://localhost:8087/api/users/info", HttpMethod.GET, requestEntity,
				String.class).getBody();
		Users user = new Gson().fromJson(result, Users.class);
		System.out.println("userInfo : " + user);

		return user;
	}

	// 회원 정보 수정
	public void updateUser(HttpSession session, Users user) {
		RestTemplate tpl = new RestTemplate();
		System.out.println("Service User" + user);
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(user), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/update", HttpMethod.PUT, requestEntity, String.class)
				.getBody();

		System.out.println(result);
		if (!result.equals("수정 실패")){
			session.removeAttribute("token");
			session.removeAttribute("user");
		}
	}

	// 포인트 충전하기
	public void chargePoint(HttpSession session, String userId, int tradePoint) {
		RestTemplate tpl = new RestTemplate();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(userId);
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		System.out.println("Service Map : " + map);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/chargePoint", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		System.out.println(result);
		if(result.equals("충전 성공")){
			session.setAttribute("user", userInfo(session));
		}
	}

	// 포인트 환급하기
	public void refundPoint(HttpSession session, String userId, int tradePoint) {
		RestTemplate tpl = new RestTemplate();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(userId);
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		System.out.println("Service Map : " + map);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(map), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/refundPoint", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		System.out.println(result);
		if(result.equals("충전 성공")){
			session.setAttribute("user", userInfo(session));
		}

	}

	// 유저 아이디 토큰으로 받아오기
	public String getUserIdByToken(HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/getUserId", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		return result;
	}

	// 포인트 충전 환급 내역 보기
	public Map<String,Object> tradeList(HttpSession session,int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/users/tradeList?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}

	//유저 비활성화(탈퇴)
	public String deleteUser(HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String) session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/delete", HttpMethod.PUT, requestEntity, String.class)
				.getBody();

		System.out.println(result);
		return result;
	}

	//회원 활성화
	public String reverseUser(String userId) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/users/reverse/{userId}", HttpMethod.PUT, requestEntity,String.class,userId).getBody();

		System.out.println(result);
		return result;
	}

	//회원 주문내역 조회
	public Map<String,Object> userOrderList(HttpSession session, int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result=tpl.exchange("http://localhost:8087/api/users/orderList?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}

	//주문내역에서 주문 취소하기
	public String deleteOrder(int orderNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/users/orderDelete?orderNo="+orderNo, HttpMethod.DELETE, requestEntity, String.class).getBody();
		return result;
	}

	//즐겨찾기 조회
	public Map<String,Object> userBookmarkList(HttpSession session, int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result=tpl.exchange("http://localhost:8087/api/users/bookmarkList?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}

	//장바구니 리스트
	public Map<String,Object> userBasketList(HttpSession session, int pageNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result=tpl.exchange("http://localhost:8087/api/users/basketList?pageNo="+pageNo, HttpMethod.GET, requestEntity, String.class).getBody();
		Map<String,Object> map = new Gson().fromJson(result, Map.class);
		return map;
	}

	//장바구니 취소하기
	public String deleteBasket(HttpSession session,int itemNo) {
		RestTemplate tpl = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("token", (String)session.getAttribute("token"));
		HttpEntity requestEntity = new HttpEntity(headers);
		String result = tpl.exchange("http://localhost:8087/api/users/basketDelete?itemNo="+itemNo, HttpMethod.DELETE, requestEntity, String.class).getBody();
		return result;
		
	}

	//홈페이지 만들기
	public void homeRegister(MiniHome home,HttpSession session) {
		RestTemplate tpl = new RestTemplate();
		System.out.println("Service User" + home);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity requestEntity = new HttpEntity(new Gson().toJson(home), headers);
		String result = tpl
				.exchange("http://localhost:8087/api/users/homeRegister", HttpMethod.POST, requestEntity, String.class)
				.getBody();
		System.out.println(result);
		if(!result.equals("가입 실패")){
			session.setAttribute("user", userInfo(session));
		}
	}

}
