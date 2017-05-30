package com.icia.api.controller;

import java.util.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/users")
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private UsersService service;

	// 회원 가입
	@RequestMapping(value = "/register", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> usersRegisterEnd(@RequestBody Users user) throws BindException {
		logger.info(user.toString());
		;
		int result = service.insertUser(user);
		if (result == 1)
			return new ResponseEntity<String>(user.toString(), HttpStatus.OK);
		else
			return new ResponseEntity<String>("가입 실패", HttpStatus.BAD_REQUEST);

	}

	// 아이디 중복 확인 ( 아이디 존재할경우 1이상 리턴)
	@RequestMapping(value = "/hasId", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String usersHasId(@RequestParam String userId) {
		if (service.hasUserId(userId) == 0)
			return service.hasUserId(userId) + "";
		else
			return service.hasUserId(userId) + "";
	}

	// 이메일 중복 확인 (이메일 존재할경우 1이상 리턴)
	@RequestMapping(value = "/hasMail", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String usersHasMail(@RequestParam String userMail) {
		int result = service.hasUserMail(userMail);
		if (result == 0)
			return result + "";
		else
			return result + "";
	}

	// 회원 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public String login(@RequestBody Users user) throws BindException {
		String token = service.userLogin(user);
		if (token == null)
			return "로그인 실패";
		else
			return token;
	}

	// 회원 토큰으로 정보 얻기
	@RequestMapping(value = "/info", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String read(@RequestHeader("token") String token) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		String userId = service.getUserIdByToken(token);
		Users user = service.read(userId, token);
		return new Gson().toJson(user);
	}

	// 회원 아이디 찾기
	@RequestMapping(value = "/findId", method = RequestMethod.POST)
	public String usersFindId(@RequestParam String userName, @RequestParam String userMail) {
		String result = service.findId(userName, userMail);
		if (result == null)
			return "0";
		else
			return result;
	}

	// 회원 비밀번호 찾기
	@RequestMapping(value = "/findPwd", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String usersFindPwd(@RequestParam String userId, @RequestParam String userName,
			@RequestParam String userMail) {
		String result = service.findPwd(userId, userName, userMail);
		if (result == null)
			return "0";
		else
			return result;
	}

	// 회원 정보 수정
	@RequestMapping(value = "/update", method = RequestMethod.PUT, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> usersUpdateEnd(@RequestBody Users user) throws BindException {
		int result = service.updateUser(user);
		if (result == 1)
			return new ResponseEntity<String>("수정 성공 ", HttpStatus.OK);
		else
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);

	}

	// 회원 포인트 충전
	@RequestMapping(value = "/chargePoint", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> chargePointEnd(@RequestBody Map<String, Object> map) throws BindException {
		int result = service.chargePoint(map);
		if (result == 1)
			return new ResponseEntity<String>("충전 성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("충전 실패", HttpStatus.BAD_REQUEST);

	}

	// 회원 포인트 환급
	@RequestMapping(value = "/refundPoint", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> refundPointEnd(@RequestBody Map<String, Object> map) throws BindException {
		int result = service.refundPoint(map);
		if (result == 1)
			return new ResponseEntity<String>("충전 성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("충전 실패", HttpStatus.BAD_REQUEST);

	}

	// 회원 토큰으로 정보 얻기
	@RequestMapping(value = "/getUserId", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String getUserIdByToken(@RequestHeader("token") String token) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		System.out.println("Power Controller Token : " + token);
		String userId = service.getUserIdByToken(token);
		return userId;
	}

	// 회원 포인트 충전 환급 내역 보기
	@RequestMapping(value = "/tradeList", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String tradeList(@RequestHeader("token") String token, @RequestParam int pageNo) {
		String userId = service.getUserIdByToken(token);
		Map<String, Object> map = service.tradeList(userId, pageNo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		return gson.toJson(map);

	}

	// 회원 탈퇴 비활성화
	@RequestMapping(value = "/delete", method = RequestMethod.PUT, produces = "text/html;charset=utf-8")
	public ResponseEntity<String> usersDeleteEnd(@RequestHeader("token") String token) {
		String userId = service.getUserIdByToken(token);
		System.out.println("비활성화 아이디 :  " + userId);
		int result = service.deleteUser(userId);

		if (result == 1)
			return new ResponseEntity<String>("수정 성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);

	}

	// 회원 탈퇴 활성화
	@RequestMapping(value = "/reverse/{userId}", method = RequestMethod.PUT, produces = "text/html;charset=utf-8")
	public ResponseEntity<String> usersReverseEnd(@PathVariable String userId) {
		System.out.println("활성화 아이디 :  " + userId);
		int result = service.reverseUser(userId);

		if (result == 1)
			return new ResponseEntity<String>("수정 성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);

	}

	// 회원 주문 내역 보기
	@RequestMapping(value = "/orderList", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String orderList(@RequestHeader("token") String token, @RequestParam(defaultValue = "1") int pageNo) {
		String userId = service.getUserIdByToken(token);
		Map<String, Object> map = service.userOrderList(userId, pageNo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		return gson.toJson(map);
	}

	// 회원 주문 내역에서 주문 취소하기
	@RequestMapping(value = "/orderDelete", method = RequestMethod.DELETE, produces = "text/html;charset=utf-8")
	public ResponseEntity<String> orderDelete(@RequestParam int orderNo) {
		int result = service.userOrderDelete(orderNo);
		if (result == 1)
			return new ResponseEntity<String>("수정 성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);
	}

	// 회원 즐겨찾기 보기
	@RequestMapping(value = "/bookmarkList", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String bookmarkList(@RequestHeader("token") String token, @RequestParam(defaultValue = "1") int pageNo) {
		String userId = service.getUserIdByToken(token);
		Map<String, Object> map = service.userBookmarkList(userId, pageNo);
		return new Gson().toJson(map);
	}

	// 회원 즐겨찾기 추가
	@RequestMapping(value = "/bookmark", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String bookmark(@RequestParam String orderId, @RequestParam String ownerId) {
		int result = service.bookmark(orderId, ownerId);
		if (result == 1)
			return result + "";
		else
			return result + "";
	}

	// 회원 즐겨찾기 삭제
	@RequestMapping(value = "/bookmarkDelete", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String bookmarkDelete(@RequestParam String orderId, @RequestParam String ownerId) {
		int result = service.bookmarkDelete(orderId, ownerId);
		if (result == 1)
			return result + "";
		else
			return result + "";
	}

	// 회원 즐겨찾기 확인하기
	@RequestMapping(value = "/bookmarkCheck", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String bookmarkCheck(@RequestParam String orderId, @RequestParam String ownerId) {
		int result = service.bookmarkCheck(orderId, ownerId);
		if (result == 1)
			return result + "";
		else
			return result + "";
	}

	// 회원 장바구니 보기
	@RequestMapping(value = "/basketList", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String basketList(@RequestHeader("token") String token, @RequestParam(defaultValue = "1") int pageNo) {
		String userId = service.getUserIdByToken(token);
		Map<String, Object> map = service.userBasketList(userId, pageNo);
		return new Gson().toJson(map);
	}

	// 회원 장바구니 취소하기
	@RequestMapping(value = "/basketDelete", method = RequestMethod.DELETE, produces = "text/html;charset=utf-8")
	public ResponseEntity<String> basketDelete(@RequestHeader("token") String token, @RequestParam int itemNo) {
		String userId = service.getUserIdByToken(token);
		int result = service.userBasketDelete(userId, itemNo);
		if (result == 1)
			return new ResponseEntity<String>("수정 성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);
	}

	// 홈페이지 만들기
	@RequestMapping(value = "/homeRegister", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> usersHomeRegisterEnd(@RequestBody MiniHome home) throws BindException {
		logger.info(home.toString());
		int result = service.homeRegister(home);
		if (result == 1)
			return new ResponseEntity<String>("성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("제작 실패", HttpStatus.BAD_REQUEST);

	}

	// 홈페이지 태그만들기
	@RequestMapping(value = "/homeTagRegister", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public ResponseEntity<String> usersHomeTagRegister(@RequestParam String userId, @RequestParam String bigKind,
			@RequestParam String smallKind) {
		System.out.println("BIG KIND : " + bigKind + " \nSMALL KIND : " + smallKind);
		int result = service.homeTagRegister(userId, bigKind, smallKind);
		if (result == 1)
			return new ResponseEntity<String>("성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("제작 실패", HttpStatus.BAD_REQUEST);

	}

	// 홈페이지 수정 정보 가져오기
	@RequestMapping(value = "/homeUpdate", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String usersHomeUpdateStart(@RequestHeader("token") String token) {
		String userId = service.getUserIdByToken(token);
		Map<String, Object> map = service.getHomeInfo(userId);
		return new Gson().toJson(map);
	}

	// 홈페이지 수정하기
	@RequestMapping(value = "/homeUpdate", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> usersHomeUpdateEnd(@RequestBody MiniHome home) throws BindException {
		logger.info(home.toString());
		int result = service.homeUpdate(home);
		if (result == 1)
			return new ResponseEntity<String>("성공", HttpStatus.OK);
		else
			return new ResponseEntity<String>("제작 실패", HttpStatus.BAD_REQUEST);

	}

	// 홈페이지 태그 수정하기
	@RequestMapping(value = "/homeTagUpdate", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String usersHomeTagUpdate(@RequestParam String userId, @RequestParam String bigKind,
			@RequestParam String smallKind) {
		System.out.println("BIG KIND : " + bigKind + " \nSMALL KIND : " + smallKind);
		int result = service.homeTagUpdate(userId, bigKind, smallKind);
		if (result == 1)
			return "성공";
		else
			return "제작 실패";

	}

	// 회원 주문 내역에서 주문 확정하기
	@RequestMapping(value = "/orderComplete", method = RequestMethod.PUT, produces = "text/html;charset=utf-8")
	public ResponseEntity<String> orderComplete(@RequestParam int orderNo) {
		service.userOrderComplete(orderNo);
		return new ResponseEntity<String>("수정 성공", HttpStatus.OK);
	}

	// 회원 메인 리스트 가져오기
	@RequestMapping(value = "/main", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String mamamain() {
		Map<String,Object> map = service.mainList();
		return new Gson().toJson(map);
	}

	// 아이템 리뷰작성하기
	@RequestMapping(value = "/review", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String insertReview(@RequestParam String orderNo,@RequestParam String reviewScore,@RequestParam String reviewContent) {
		System.out.println("-------------------");
		System.out.println("contro : "+ reviewContent);
		System.out.println("-------------------");
		System.out.println(orderNo);
		ItemReview review = new ItemReview();
		review.setReviewContent(reviewContent);
		review.setReviewScore(Integer.parseInt(reviewScore));
		int result = service.insertReview(review, Integer.parseInt(orderNo));
		if (result == 1)
			return "성공";
		else
			return "실패";

	}
	//검색해서 홈페이지,상품가져오기
	@RequestMapping(value = "/mainSearch", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public String mainSearch(@RequestBody Map<String, Object> map1) {
		System.out.println("안되지??api서버");
		String search=(String) map1.get("search");
		
		Map<String, Object> map = service.search(search);
		return new Gson().toJson(map);
	}
	
}
