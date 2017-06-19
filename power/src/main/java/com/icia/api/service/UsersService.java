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
	public Map<String, Object> tradeList(String userId, int pageNo) {
		int cnt = dao.tradeListCnt(userId);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("tradeList", dao.tradeList(pagination.getStartArticle(), pagination.getEndArticle(), userId));
		return map;
	}

	// 회원 비활성화
	public int deleteUser(String userId) {
		return dao.userDelete(userId);
	}

	// 회원 활성화
	public int reverseUser(String userId) {
		return dao.userReverse(userId);
	}

	// 회원 주문 내역 보기
	public Map<String, Object> userOrderList(String userId, int pageNo) {
		int cnt = dao.orderListCnt(userId);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.orderList(pagination.getStartArticle(), pagination.getEndArticle(), userId));
		return map;
	}

	// 회원 주문 내역에서 주문 취소하기
	@Transactional
	public int userOrderDelete(int orderNo) {
		dao.itemInvenUp(orderNo);
		dao.orderPointUp(orderNo);
		dao.ownerPointDown(orderNo);
		return dao.orderDelete(orderNo);

	}

	// 회원 즐겨찾기 보기
	public Map<String, Object> userBookmarkList(String userId, int pageNo) {
		int cnt = dao.bookmarkListCnt(userId);
		Pagination pagination = PagingUtil5.setPageMaker(pageNo, cnt);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.bookmarkList(userId, pagination.getStartArticle(), pagination.getEndArticle()));
		map.put("cnt", cnt);
		return map;
	}

	// 회원 즐겨찾기 추가
	public int bookmark(String orderId, String ownerId) {
		return dao.bookmark(orderId, ownerId);
	}

	// 회원 즐겨찾기 제거
	public int bookmarkDelete(String orderId, String ownerId) {
		return dao.bookmarkDelete(orderId, ownerId);
	}

	// 장바구니 조회하기
	public Map<String, Object> userBasketList(String userId, int pageNo) {
		int cnt = dao.basketListCnt(userId);
		Pagination pagination = PagingUtil5.setPageMaker(pageNo, cnt);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.basketList(userId, pagination.getStartArticle(), pagination.getEndArticle()));
		map.put("cnt", cnt);
		return map;
	}

	// 장바구니 삭제하기
	public int userBasketDelete(String userId, int itemNo) {
		return dao.basketDelete(userId, itemNo);
	}

	// 홈페이지 만들기
	@Transactional
	public int homeRegister(MiniHome home) {
		dao.userIsHomeOk(home.getUserId());
		return dao.homeRegister(home);
	}

	// 홈페이지 태그 만들기
	public int homeTagRegister(String userId, String bigKind, String smallKind) {
		String[] big = bigKind.split(",");
		String[] smalls = smallKind.split("\n");
		for (int i = 0; i < big.length; i++) {
			dao.bigTagRegister(userId, big[i]);
			String[] small = smalls[i].split(",");
			for (String strS : small) {
				dao.smallTagRegister(userId, big[i], strS);
			}
		}
		return 1;
	}

	// 홈페이지 수정 정보가져오기
	public Map<String, Object> getHomeInfo(String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("home", dao.getHomeInfo(userId));
		map.put("bigKind", dao.getBigTag(userId));
		map.put("smallKind", dao.getSmallTag(userId));
		return map;
	}

	// 홈페이지 수정 하기
	public int homeUpdate(MiniHome home) {
		return dao.homeUpdate(home);
	}

	// 홈페이지 태그 수정하기
	@Transactional
	public int homeTagUpdate(String userId, String bigKind, String smallKind) {
		String[] big = bigKind.split(",");
		String[] smalls = smallKind.split("\n");

		dao.deleteBigTag(userId);
		dao.deleteSmallTag(userId);
		for (int i = 0; i < big.length; i++) {
			System.out.print(big[i] + " big : ");
			dao.bigTagRegister(userId, big[i]);
			String[] small = smalls[i].split(",");
			for (String strS : small) {
				System.out.print(strS + "-s ");
				dao.smallTagRegister(userId, big[i], strS);
			}
			System.out.println("");
		}

		return 1;
	}

	// 주문 확정 하기( 판매자 등급 조정)
	@Transactional
	public void userOrderComplete(int orderNo) {
		dao.orderComplete(orderNo);
		String result = dao.getOwnerGrade(orderNo);
		int totalPoint = dao.getTotalSellPoint(orderNo);
		if (result.equals("bronze")) {
			if (totalPoint > 300000)
				dao.ownerSilverGradeUp(orderNo);
			else if (totalPoint > 1000000)
				dao.ownerGoldGradeUp(orderNo);
		} else if (result.equals("silver")) {
			if (totalPoint > 1000000)
				dao.ownerGoldGradeUp(orderNo);
		}
	}

	// 랭킹 5명 가져오기
	public List<MiniHome> getRankSide() {
		return dao.getRankSide();
	}

	// 즐겨찾기 확인하기
	public int bookmarkCheck(String orderId, String ownerId) {
		return dao.bookmarkCheck(orderId, ownerId);
	}

	// 리뷰 작성하기
	public int insertReview(ItemReview review, int orderNo) {
		return dao.insertReview(review, orderNo);
	}
	
	//메인 랭킹, 아이템 리스트 가져오기
	@Transactional
	public Map<String,Object> mainList(){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("recent1", dao.selectItemListOrderByDate1());
		map.put("recent2", dao.selectItemListOrderByDate2());
		map.put("inven", dao.selectItemListOrderByInven());
		map.put("score", dao.selectItemListOrderByScore());
		map.put("rank", dao.getRankSide());
		return map;
	}
	//메인 검색해서 아이템,홈페이지리스트가져오기
	@Transactional
	public Map<String, Object> search(String search){
	Map<String, Object> result=new HashMap<String, Object>();
	result.put("itemListCnt", dao.selectItemByNameCnt(search));
	result.put("homePageCnt", dao.selectHomeByNameCnt(search));
	result.put("itemList", dao.selectItemByName(search));
	result.put("homePage", dao.selectHomeByName(search));
		return result;
	}

	// 토큰으로 홈 이미지 얻어오기
	public String getHomeImgByToken(String token) {
		String userId = null;
		if (TokenUtils.isValid(token)) {
			String role = TokenUtils.get(token, "ROLE");
			System.out.println(role);
			if (role.equals("ROLE_USER")) {
				userId = TokenUtils.get(token, "userId");
			}
		}
		return dao.getHomeImg(userId);
	}

	public int updateMailUser(Users user) {
		return dao.userMailUpdate(user);
	}

	public int updatePhoneUser(Users user) {
		return dao.userPhoneUpdate(user);
	}

	public int updateAddressUser(Users user) {
		return dao.userAddressUpdate(user);
	}

	public int updatePwdUser(Users user) {
		return dao.userPwdUpdate(user);
	}
	
}
