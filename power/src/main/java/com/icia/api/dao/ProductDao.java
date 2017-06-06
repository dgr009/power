package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate tpl;
//제품등록에서 제품종류가져오기
	public List<SmallKind> productRegisterReady(String id) {
		int a=id.length();
		String userid=id.substring(1, a-1);
		return tpl.selectList("api.dao.ProductDao.productRegisterReady", userid);
	}
	//제품등록하기
	public void insertItem(Item item){
		tpl.insert("api.dao.ProductDao.insertItem", item);
	}
	//옵션등록하기
	public void insertOption(ItemOption i){
		tpl.insert("api.dao.ProductDao.insertOption", i);
	}
	//사진등록하기
	public void insertItemImg(ItemImg img){
		tpl.insert("api.dao.ProductDao.insertItemImg", img);
	}
	//상품정보변경
	public void updateItem(Map<String, Object> map){
		tpl.update("api.dao.ProductDao.updateItem", map);
	}
	//상품옵션변경하기
	public void updateOption(Map<String, Object> map){
		tpl.update("api.dao.ProductDao.updateOption", map);
	}
	//상품사진변경하기
	public void updateItemImg(Map<String, Object> map){
		tpl.update("api.dao.ProductDao.updateItemImg", map);
	}
	//등록상품삭제하기
	public void deleteItem(int itemNo){
		tpl.delete("api.dao.ProductDao.deleteItem", itemNo);
	}
	//배송하기
	public void insertDelivery(HashMap<String, Object> map){
		tpl.insert("api.dao.ProductDao.insertDelivery", map);
	}
	//상품주문상태변경
	public void updateOrderStatement(int orderNo){
		tpl.update("api.dao.ProductDao.updateOrderStatement",orderNo);
	}
	//제품상세정보보기
	public Item selectItemDetail(Map<String, Object> map){
		return tpl.selectOne("api.dao.ProductDao.selectItemDetail", map);
	}
	//이미지리스트가져오기
		public List<ItemImg> selectItemImg(int itemNo){
			return tpl.selectList("api.dao.ProductDao.selectItemImg", itemNo);
		}
	//상품문의작성
	public void insertInquiry(InquiryBoard i){
		tpl.insert("api.dao.ProductDao.insertInquiry", i);
	}
	//상품문의글보기 
	public InquiryBoard selectInquiryView(Map<String, Object> map){
	return tpl.selectOne("api.dao.ProductDao.selectInquiryView", map);
	}
	//상품문의수정
	public void updateInquiry(InquiryBoard i){
		tpl.update("api.dao.ProductDao.updateInquiry", i);
	}
	//상품문의삭제
	public void deleteInquiry(int inquiryNo){
		tpl.delete("api.dao.ProductDao.deleteInquiry", inquiryNo);
	}
	//상품문의페이지
	public List<InquiryBoard> selectInquiry(Map< String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectInquiry", map);
	}
	//상품문의페이지 개수
	public int selectInquiryCnt(Map<String, Object> map){
		return tpl.selectOne("api.dao.ProductDao.selectInquiryCnt",map);
	}
	//상품문의 댓글가져오기
	public List<InquiryReple> selectInquiryReple(Map<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectInquiryReple", map);
	}
	//상품문의 댓글작성
	public void insertInquiryReple(InquiryReple i){
		tpl.insert("api.dao.ProductDao.insertInquiryReple", i);
	}
	//상품문의 댓글수정
	public void updateInquiryReple(InquiryReple i){
		tpl.update("api.dao.ProductDao.updateInquiryReple", i);
	}
	//상품 댓글삭제
	public void deleteInquiryReple(int inquiryRepleNo){
		tpl.delete("api.dao.ProductDao.deleteInquiryReple", inquiryRepleNo);
	}
	//상품평가작성
	public void insertReview(ItemReview i){
		tpl.insert("api.dao.ProductDao.insertReview", i);
	}
	//상품평가수정
	public void updateReview(ItemReview i){
		tpl.update("api.dao.ProductDao.updateReview", i);
	}
	//상품평가삭제
	public void deleteReview(int reviewNo){
		tpl.delete("api.dao.ProductDao.deleteReview", reviewNo);
	}
	//상품평가리스트
	public List<ItemReview> selectReview(int itemNo){
		return tpl.selectList("api.dao.ProductDao.selectReview"	,itemNo);
	}
	//상품평가리스트개수
	public int selectReviewCnt(int itemNo){
		return tpl.selectOne("api.dao.ProductDao.selectReviewCnt", itemNo);
	}
	//상품평가 댓글가져오기
	public List<ItemReviewReple> selectReviewReple(int reviewNo){
		return tpl.selectList("api.dao.ProductDao.selectReviewReple", reviewNo);
	}
	//상품평가댓글작성
	public void insertReviewReple(ItemReviewReple i){
		tpl.insert("api.dao.ProductDao.insertReviewReple", i);
	}
	//상품평가댓글수정
	public void updateReviewReple(ItemReviewReple i){
		tpl.update("api.dao.ProductDao.updateReviewReple", i);
	}
	//상품평가댓글삭제
	public void deleteReviewReple(int reviewRepleNo){
		tpl.delete("api.dao.ProductDao.deleteReviewReple", reviewRepleNo);
	}
	//장바구니담기
	public int insertBasket(HashMap<String, Object> map){
	return tpl.insert("api.dao.ProductDao.insertBasket", map);
	}
	//배송리스트개수
	public int selectDeliveryListCnt(String userId) {
		return tpl.selectOne("api.dao.ProductDao.selectDeliveryCnt", userId);
	}
	//배송리스트
	public List<DeliveryList> deliveryList(HashMap<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.deliveryList", map);
	}
	//주문하기!!!!
	//회원포인트차감
	public void orderUserPoint(HashMap<String, Object> map){
	 tpl.update("api.dao.ProductDao.orderUserPoint", map);
	}
	//주인포인트증가
	public void orderOwnerPoint(HashMap<String, Object> map){
		tpl.update("api.dao.ProductDao.orderOwnerPoint", map);
	}
	//주문내역입력
	public void insertOrderStatement(OrderStatement o){
		tpl.insert("api.dao.ProductDao.insertOrderStatement", o);
	}
	//상품재고차감
	public void updateItemInven(HashMap<String, Object> map){
		tpl.update("api.dao.ProductDao.updateItemInven", map);
	}
	//카테고리별 상품리스트 개수
	public int selectItemListByKindCnt(HashMap<String, Object> map){
		return tpl.selectOne("api.dao.ProductDao.selectItemListByKindCnt",map);
	}
	//이름으로 상품검색 개수
	public int productSearchCnt(Map<String, Object> map) {
		return tpl.selectOne("api.dao.ProductDao.productSearchCnt", map);
	}
	//이름으로검색 //홈피주인이름,상품이름 입력
	public List<ItemList> selectItemByName(Map<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectItemByName", map);
	}
	//카테고리별상품리스트개수
	public int productSelectKindCnt(Map<String, Object> map) {
		return tpl.selectOne("api.dao.ProductDao.productSelectKindCnt", map);
	}
	//카테고리별 상품조회리스트
	public List<ItemList> selectItemListByKind2(Map<String, Object> map){
		System.out.println("디비카테고리");
		return tpl.selectList("api.dao.ProductDao.selectItemListByKind", map);
	}
	
	//등록 상품조회(리스트)
	public List<ItemList> selectItemListByKind1(Map<String, Object> map){
		System.out.println("디비카테고리");
		return tpl.selectList("api.dao.ProductDao.selectItemListByKind1", map);
	}
	//미니홈메인 상품등록순 9개
	public List<ItemList> selectItemListOrderByDate(String id){
		int a=id.length();
		String userId=id.substring(1, a-1);
		return tpl.selectList("api.dao.ProductDao.selectItemListOrderByDate", userId);
	}
	//미니홈메인 상품재고순 9개
	public List<ItemList> selectItemListOrderByInven(String id){
		int a=id.length();
		String userId=id.substring(1, a-1);
		return tpl.selectList("api.dao.ProductDao.selectItemListOrderByInven", userId);
	}
	//미니홈메인 베스트상품순 9개
	public List<ItemList> selectItemListOrderByScore(String id){
		int a=id.length();
		String userId=id.substring(1, a-1);
		return tpl.selectList("api.dao.ProductDao.selectItemListOrderByScore", userId);
	}
	//주문회원리스트 개수
	public int selectOrderListCnt(int itemNo) {
		return tpl.selectOne("api.dao.ProductDao.selectOrderListCnt", itemNo);
		
	}
	//상품신청리스트
	public List<ApplicantList> orderList(HashMap<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.orderList", map);
	}
	//상품옵션가져오기
	public List<ItemOption> selectProductOption(int itemNo) {
		return tpl.selectList("api.dao.ProductDao.selectProductOption", itemNo);
	
	}
	//장바구니 담겻는지 확인
	public int selectBasket(HashMap<String, Object> map) {
		return tpl.selectOne("api.dao.ProductDao.selectBasket", map);
	}
//작은종류가져오기
	public List<SmallKind> selectSmallKind(String Id) {
		int d=Id.length();
		String userId=Id.substring(1, d-1);
		return tpl.selectList("api.dao.ProductDao.selectSmallKind", userId);
	}
	//큰종류가져오기
	public List<BigKind> selectbigKind(String Id) {
		int d=Id.length();
		String userId=Id.substring(1, d-1);
		return tpl.selectList("api.dao.ProductDao.selectBigKind", userId);
	
	}
	//오너가져오기
	public String getOwnerId(int itemNo) {
		return tpl.selectOne("api.dao.ProductDao.getOwnerId", itemNo);
	}
	//미니홈피 이미지,타이틀,회원등급가져오기
	public MiniHome selectMiniHome(String id) {
		int a=id.length();
		String userId=id.substring(1, a-1);
		return tpl.selectOne("api.dao.ProductDao.getHome", userId);
	}
	//홈피주인 문의게시물 개수확인
	public int adminInquiryCnt(String userId) {
		return tpl.selectOne("api.dao.ProductDao.adminInquiryCnt",userId);
	}
	//홈피주인 문의게시물
	public List<InquiryBoard> adminInquiryList(Map<String,Object> map){
		return tpl.selectList("api.dao.ProductDao.adminInquiryList", map);
	}
	//문의게시글 개수증가
	public void incrementInquiryCnt(int inquiryNo) {
		tpl.update("api.dao.ProductDao.incrementInquiryCnt", inquiryNo);
	}
	

	
	
}
