package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class UsersDao {
	// api.dao.UsersDao
	@Autowired
	private SqlSessionTemplate tpl;

	// 회원가입
	public int insertUser(Users user) {
		return tpl.insert("api.dao.UsersDao.usersRegister", user);
	}

	// 아이디 중복확인
	public int hasUserId(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersHasId", userId);
	}

	// 이메일 중복확인
	public int hasUserMail(String userMail) {
		return tpl.selectOne("api.dao.UsersDao.usersHasMail", userMail);
	}

	// 아이디 찾기
	public String findId(String userName, String userMail) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userName", userName);
		map.put("userMail", userMail);
		return tpl.selectOne("api.dao.UsersDao.usersFindId", map);
	}

	// 비밀번호 찾기
	public String findPwd(String userId, String userName, String userMail) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("userName", userName);
		map.put("userMail", userMail);
		return tpl.selectOne("api.dao.UsersDao.usersFindPwd", map);
	}

	// 로그인
	public Users userLogin(Users user) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", user.getUserId());
		map.put("userPwd", user.getUserPwd());
		return tpl.selectOne("api.dao.UsersDao.usersLogin", map);
	}

	// 북마크(즐겨찾기) 추가
	public int bookmark(String orderId, String ownerId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("orderId", orderId);
		map.put("ownerId", ownerId);
		return tpl.insert("api.dao.UsersDao.usersBookmark", map);
	}

	// 북마크(즐겨찾기) 해제
	public int bookmarkDelete(String orderId, String ownerId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("orderId", orderId);
		map.put("ownerId", ownerId);
		return tpl.delete("api.dao.UsersDao.usersBookmarkDelete", map);
	}

	// 북마크(즐겨찾기) 목록
	public List<BookmarkList> bookmarkList(String orderId, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("orderId", orderId);
		return tpl.selectList("api.dao.UsersDao.usersBookmarkList", map);
	}

	// 주문내역보기
	public List<OrderList> orderList(int start, int end, String orderId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("orderId", orderId);
		return tpl.selectList("api.dao.UsersDao.usersOrderList", map);
	}

	// 주문 취소하기
	public int orderDelete(int orderNo) {
		return tpl.delete("api.dao.UsersDao.usersOrderDelete", orderNo);
	}

	// 포인트 충전하기
	public int chargePoint(String userId, int tradePoint) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		return tpl.update("api.dao.UsersDao.usersChargePoint", map);
	}

	// 포인트 충전내역 추가하기
	public int chargePointState(String userId, int tradePoint) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		return tpl.insert("api.dao.UsersDao.usersChargePointState", map);
	}

	// 포인트 환급하기
	public int refundPoint(String userId, int tradePoint) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		return tpl.update("api.dao.UsersDao.usersRefundPoint", map);
	}

	// 포인트 환급내역 추가하기
	public int refundPointState(String userId, int tradePoint) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("tradePoint", tradePoint);
		return tpl.insert("api.dao.UsersDao.usersRefundPointState", map);
	}

	// 포인트 내역확인
	public List<TradeStatement> tradeList(int start, int end, String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("userId", userId);
		return tpl.selectList("api.dao.UsersDao.usersTradeList", map);
	}

	// 개인 회원 정보 보기
	public Users userInfo(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersInfo", userId);
	}

	// 개인 회원 정보 변경
	public int userUpdate(Users user) {
		return tpl.update("api.dao.UsersDao.usersUpdate", user);
	}

	// 개인 회원 비활성화
	public int userDelete(String userId) {
		return tpl.update("api.dao.UsersDao.usersDelete", userId);
	}

	// 개인 회원 비활성화
	public int userReverse(String userId) {
		return tpl.update("api.dao.UsersDao.usersReverse", userId);
	}

	// 장바구니 리스트
	public List<Basket> basketList(String userId, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("userId", userId);
		return tpl.selectList("api.dao.UsersDao.usersBasketList", map);
	}

	// 장바구니 상품 삭제하기
	public int basketDelete(String userId, int itemNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("itemNo", itemNo);
		return tpl.delete("api.dao.UsersDao.usersBasketDelete", map);
	}

	// 회원 주문 내역 총 개수
	public int orderListCnt(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersOrderListCnt", userId);
	}

	// 회원 즐겨찾기 총 개수
	public int bookmarkListCnt(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersBookmarkListCnt", userId);
	}

	// 장바구니 총 개수
	public int basketListCnt(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersBasketListCnt", userId);
	}

	// 홈페이지 개설
	public int homeRegister(MiniHome home) {
		return tpl.insert("api.dao.UsersDao.usersHomeRegister", home);
	}

	// 회원 홈페이지 개설함 업데이트
	public int userIsHomeOk(String userId) {
		return tpl.update("api.dao.UsersDao.usersIsHomeOk", userId);
	}

	// 충전환급내역 총 개수
	public int tradeListCnt(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersTradeListCnt", userId);
	}
	
	// 
	public int bigTagRegister(String userId, String bigTag) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("bigTag", bigTag);
		return tpl.insert("api.dao.UsersDao.usersBigTagRegister", map);
	}

	public int smallTagRegister(String userId, String bigTag, String smallTag) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("bigTag", bigTag);
		map.put("smallTag", smallTag);
		return tpl.insert("api.dao.UsersDao.usersSmallTagRegister", map);
	}

	// 홈페이지 정보 가져오기
	public MiniHome getHomeInfo(String userId) {
		return tpl.selectOne("api.dao.UsersDao.usersGetHomeInfo", userId);
	}

	// 큰태그 가져오기
	public List<BigKind> getBigTag(String userId) {
		return tpl.selectList("api.dao.ProductDao.selectBigKind", userId);
	}

	// 작은태그 가져오기
	public List<SmallKind> getSmallTag(String userId) {
		return tpl.selectList("api.dao.ProductDao.selectSmallKind", userId);
	}

	// 홈페이지 수정
	public int homeUpdate(MiniHome home) {
		return tpl.update("api.dao.UsersDao.usersHomeUpdate", home);
	}

	// 큰태그 지우기
	public int deleteBigTag(String userId) {
		return tpl.delete("api.dao.UsersDao.usersDeleteBigTag", userId);

	}

	// 작은 태그 지우기
	public int deleteSmallTag(String userId) {
		return tpl.delete("api.dao.UsersDao.usersDeleteSmallTag", userId);

	}

	// 주문 취소시 인벤(재고) 증가
	public int itemInvenUp(int orderNo) {
		return tpl.update("api.dao.UsersDao.usersItemInvenUp", orderNo);

	}

	// 주문취소 주문자 포인트 증가
	public void orderPointUp(int orderNo) {
		tpl.update("api.dao.UsersDao.orderPointUp", orderNo);
	}

	// 주문취소 판매자 포인트 감소
	public void ownerPointDown(int orderNo) {
		tpl.update("api.dao.UsersDao.ownerPointDown", orderNo);
	}

	// 주문 확정 하기
	public int orderComplete(int orderNo) {
		return tpl.update("api.dao.UsersDao.orderComplete", orderNo);
	}

	// 회원 등급 가져오기
	public String getOwnerGrade(int orderNo) {
		return tpl.selectOne("api.dao.UsersDao.selectOwnerGrade", orderNo);
	}

	// 회원등급 실버로 승급
	public void ownerSilverGradeUp(int orderNo) {
		tpl.update("api.dao.UsersDao.ownerSilverGradeUp", orderNo);
	}

	// 회원등급 골드로 승급
	public void ownerGoldGradeUp(int orderNo) {
		tpl.update("api.dao.UsersDao.ownerGoldGradeUp", orderNo);
	}

	// 회원 총 판매량 가져오기
	public int getTotalSellPoint(int orderNo) {
		return tpl.selectOne("api.dao.UsersDao.getTotalSellPoint", orderNo);
	}

	// 랭크 가져오기
	public List<MiniHome> getRankSide() {
		return tpl.selectList("api.dao.UsersDao.getRankSide");
	}

	// 즐겨찾기 확인하기
	public int bookmarkCheck(String orderId, String ownerId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderId", orderId);
		map.put("ownerId", ownerId);
		return tpl.selectOne("api.dao.UsersDao.getBookmark", map);
	}

	// 리뷰 작성 하기
	public int insertReview(ItemReview review, int orderNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reviewContent", review.getReviewContent());
		map.put("reviewScore", review.getReviewScore());
		map.put("orderNo", orderNo);
		System.out.println("-------------------");
		System.out.println("dao : "+ review);
		System.out.println("-------------------");
		return tpl.insert("api.dao.UsersDao.insertReview", map);
	}
	
	// 최신 상품 첫번쨰 줄 가져오기
	public List<ItemList> selectItemListOrderByDate1(){
		return tpl.selectList("api.dao.UsersDao.selectItemListOrderByDate1");
	}
	
	// 최신 상품 두번째 줄 가져오기
	public List<ItemList> selectItemListOrderByDate2(){
		return tpl.selectList("api.dao.UsersDao.selectItemListOrderByDate2");
	}
	
	// 마감임박 상품 가져오기
	public List<ItemList> selectItemListOrderByInven(){
		return tpl.selectList("api.dao.UsersDao.selectItemListOrderByInven");
	}
	
	// 베스트 상품 가져오기
	public List<ItemList> selectItemListOrderByScore(){
		return tpl.selectList("api.dao.UsersDao.selectItemListOrderByScore");
	}
	
	// 상품 검색 개수 가져오기
	
	// 홈페이지 검색 개수 가져오기
	
	// 상품 검색 가져오기
	
	// 홈페이지 검색 개수 가져오기
	
	
	
	
}
