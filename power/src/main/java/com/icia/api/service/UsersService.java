package com.icia.api.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import com.google.gson.*;
import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class UsersService {

	@Autowired
	private UsersDao dao;

	// 회원 가입
	public int insertUser(Users user) {
		return dao.insertUser(user);
	}

	// 아이디 중복확인
	public int hasUserId(String userId) {
		return dao.hasUserId(userId);
	}

	// 이메일 중복확인
	public int hasUserMail(String userMail) {
		return dao.hasUserMail(userMail);
	}

	// 아이디 찾기
	public String findId(String userName, String userMail) {
		return dao.findId(userName, userMail);
	}

	// 비밀번호 찾기
	public String findPwd(String userId, String userName, String userMail) {
		return dao.findPwd(userId, userName, userMail);
	}

	// 로그인시 아이디와 비밀번호 토큰 발급해주기
	public String userLogin(Users user) {
		Users realUser = dao.userLogin(user);
		// 로그인에 실패하면 null이 돌아와 바로 비교하면 Null Pointer Exception
		if (realUser != null) {
			return TokenUtils.getToken(realUser);
		} else {
			return null;
		}
	}

	// 회원 토큰 권환 조회후 정보 주기
	public Users read(String userId, String token) {
		Users realUser = new Users();
		if (TokenUtils.isValid(token)) {
			String role = TokenUtils.get(token, "ROLE");
			System.out.println(role);
			if (!role.equals("ROLE_USER"))
				realUser = new Users("권한 부족");
			else
				realUser = dao.userInfo(userId);
		} else
			realUser = new Users("토큰 인증 실패");
		return realUser;
	}

	// 회원 정보 수정
	public int updateUser(Users user) {
		return dao.userUpdate(user);
	}

	// 회원 포인트 충전
	@Transactional
	public int chargePoint(Map<String, Object> map) {
		int result = dao.chargePoint((String) map.get("userId"), (Integer) map.get("tradePoint"));
		dao.chargePointState((String) map.get("userId"), (Integer) map.get("tradePoint"));
		return result;
	}

	// 회원 포인트 환급
	@Transactional
	public int refundPoint(Map<String, Object> map) {
		int result = dao.refundPoint((String) map.get("userId"), (Integer) map.get("tradePoint"));
		dao.refundPointState((String) map.get("userId"), (Integer) map.get("tradePoint"));
		return result;
	}

	// 토큰으로 userId 값 가져오기
	public String getUserIdByToken(String token) {
		String userId = null;
		if (TokenUtils.isValid(token)) {
			String role = TokenUtils.get(token, "ROLE");
			System.out.println(role);
			if (role.equals("ROLE_USER")) {
				userId = TokenUtils.get(token, "userId");
			}
		}
		return userId;
	}

	// 회원 충전 환급 내역 확인하기
	public Map<String,Object> tradeList(String userId) {		
		List<PointStatement> list = dao.tradeList(userId);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
}
