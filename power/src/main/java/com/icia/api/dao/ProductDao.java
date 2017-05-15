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
	public List<String> productRegisterReady(String userid) {
		return tpl.selectList("api.dao.ProductDao.", userid);
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
	public void updateItem(Item i){
		tpl.update("api.dao.ProductDao.updateItem", i);
	}
	//상품옵션변경하기
	public void updateOption(ItemOption i){
		tpl.update("api.dao.ProductDao.updateOption", i);
	}
	//상품사진변경하기
	public void updateItemImg(ItemImg img){
		tpl.update("api.dao.ProductDao.updateItemImg", img);
	}
	//등록상품삭제하기
	public void deleteItem(int itemNo){
		tpl.delete("api.dao.ProductDao.deleteItem", itemNo);
	}
	//배송하기
	public void insertDelivery(Delivery d){
		tpl.insert("api.dao.ProductDao.insertDelivery", d);
	}
	//상품주문상태변경
	public void updateOrderStatement(int orderNo){
		tpl.update("api.dao.ProductDao.updateOrderStatement",orderNo);
	}
	//이름으로검색 개수
	public int selectItemByNameCnt(HashMap<String, Object> map){
		return tpl.selectOne("api.dao.ProductDao.selectItemByNameCnt", map);
	}
	//이름으로검색 //홈피주인이름,상품이름 입력
	public List<ItemList> selectItemByName(HashMap<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectItemByName", map);
	}
	
	//상품신청리스트
	public List<ApplicantList> orderList(int itemNo){
		return tpl.selectList("api.dao.ProductDao.orderList", itemNo);
	}
	//제품상세정보보기
	public Item selectItemDetail(int itemNo){
		return tpl.selectOne("api.dao.ProductDao.selectItemDetail", itemNo);
	}
	//이미지리스트가져오기
		public List<ItemImg> selectItemImg(int itemNo){
			return tpl.selectList("api.dao.ProductDao.selectItemImg", itemNo);
		}
	//상품문의작성
	public void insertInquiry(InquiryBoard i){
		tpl.insert("api.dao.ProductDao.insertInquiry", i);
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
	public List<InquiryBoard> selectInquiry(HashMap< String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectInquiry", map);
	}
	//상품문의페이지 개수
	public int selectInquiryCnt(int item_no){
		return tpl.selectOne("api.dao.ProductDao.selectInquiryCnt",item_no);
	}
	//상품문의 댓글가져오기
	public List<InquiryReple> selectInquiryReple(int inquiryNo){
		return tpl.selectList("api.dao.ProductDao.selectInquiryReple", inquiryNo);
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
	public List<ItemReview> selectReview(HashMap<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectReview"	,map);
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
	public void insertBasket(HashMap<String, Object> map){
	tpl.insert("api.dao.ProductDao.insertBasket", map);
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
	//카테고리별 상품조회(리스트)
	public List<ItemList> selectItemListByKind(HashMap<String, Object> map){
		return tpl.selectList("api.dao.ProductDao.selectItemListByKind", map);
	}
	//미니홈메인 상품등록순 9개
	public List<ItemList> selectItemListOrderByDate(String userId){
		return tpl.selectList("api.dao.ProductDao.selectListOrderByDate", userId);
	}
	//미니홈메인 상품재고순 9개
	public List<ItemList> selectItemListOrderByInven(String userId){
		return tpl.selectList("api.dao.ProductDao.selectListOrderByInven", userId);
	}
	//미니홈메인 베스트상품순 9개
	public List<ItemList> selectItemListOrderByScore(String userId){
		return tpl.selectList("api.dao.ProductDao.selectListOrderByScore", userId);
	}
	

	
	
}
