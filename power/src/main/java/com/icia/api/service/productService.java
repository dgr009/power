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
public class productService {
	@Autowired
	private ProductDao dao;
	//제품등록시 종류가져오기
	public List<String> productRegisterReady(String userid) {
		return dao.productRegisterReady(userid);
	}
	//상품등록하기
	@Transactional
	public void productRegister(Item i,ArrayList<ItemOption> optionList,ArrayList<ItemImg> imgList){
		dao.insertItem(i);
		for (ItemImg itemImg : imgList) {
			itemImg.setItemNO(i.getItemNo());
			dao.insertItemImg(itemImg);
		}
		for (ItemOption itemOption : optionList) {
			itemOption.setItemNo(i.getItemNo());
			dao.insertOption(itemOption);
		}
	}
	//등록상품변경
	@Transactional
	public void productUpdate(Item i,ArrayList<ItemOption> optionList,ArrayList<ItemImg> imgList){
		dao.updateItem(i);
		for (ItemImg itemImg : imgList) {
			itemImg.setItemNO(i.getItemNo());
			dao.updateItemImg(itemImg);
		}
		for (ItemOption itemOption : optionList) {
			itemOption.setItemNo(i.getItemNo());
			dao.updateOption(itemOption);
		}
	}//등록상품삭제
	public void deleteItem(int itemNo){
		dao.deleteItem(itemNo);
	}
	//배송하기 클릭
	@Transactional
	public void insertDelivery(Delivery d,int orderNo){
		dao.insertDelivery(d);
		dao.updateOrderStatement(orderNo);
	}
	//이름으로검색
	@Transactional
		public String selectItemByName(String userId,String itemName,int pageNo){
		 HashMap<String, Object> map=new HashMap<String, Object>();
		 map.put("userId",userId);
		 map.put("itemName", itemName);
		 Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectItemByNameCnt(map));
		map.put("start", p.getStartArticle());
		map.put("end", p.getEndArticle());
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.selectItemByName(map));
		result.put("pagination", p);
		 return new Gson().toJson(result);
		}
		
	//
	//상품신청리스트
		public List<ApplicantList> orderList(int itemNo){
			return dao.orderList(itemNo);
		}
	//제품상세정보보기
		@Transactional
		public Item selectItemDetail(int itemNo){
			Item item=dao.selectItemDetail(itemNo);
			item.setItemImgList((ArrayList<ItemImg>) dao.selectItemImg(itemNo));
			return item;
		}
	//상품문의작성
	public void insertInquiry(InquiryBoard i){
		dao.insertInquiry(i);
	}
	//상품문의수정
	public void updateInquiry(InquiryBoard i){
		dao.updateInquiry(i);
	}
	//상품문의삭제
	public void deleteInquiry(int inquiryNo){
		dao.deleteInquiry(inquiryNo);
	}
	//상품문의 페이지로
	@Transactional
	public String selectInquiry(int itemNo,int pageNo){
		HashMap<String, Object> map=new HashMap<String, Object>();
		Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectInquiryCnt(itemNo));
		map.put("start", p.getStartArticle());
		map.put("end", p.getEndArticle());
		map.put("itemNo", itemNo);
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.selectInquiry(map));
		result.put("pagination", p);
		return new Gson().toJson(result);	
	}
	//상품문의 리플 다가져오기
	public String selectInquiryReple(int inquiryNo){
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.selectInquiryReple(inquiryNo));
		return new Gson().toJson(result);
	}
	//상품문의 댓글작성
	public void insertInquiryReple(InquiryReple i){
		dao.insertInquiryReple(i);
	}
	//상품문의 댓글수정
	public void updateInquiryReple(InquiryReple i){
		dao.updateInquiryReple(i);
	}
	//상품문의 댓글삭제
	public void deleteInquiryReple(int inquiryRepleNo){
		dao.deleteInquiryReple(inquiryRepleNo);
	}
	//상품평가작성
	public void insertReview(ItemReview i){
		dao.insertReview(i);
	}
	//상품평가수정
	public void updateReview(ItemReview i){
		dao.updateReview(i);
	}
	//상품평가삭제
	public void deleteReview(int reviewNo){
		dao.deleteReview(reviewNo);
	}
	//상품평가 리스트
	@Transactional
	public String selectReview(int itemNo,int pageNo){
		HashMap<String, Object> map=new HashMap<String, Object>();
		Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectReviewCnt(itemNo));
		map.put("start", p.getStartArticle());
		map.put("end", p.getEndArticle());
		map.put("itemNo", itemNo);
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.selectReview(map));
		result.put("pagination", p);
		return new Gson().toJson(result);	
	}
	//상품평가 댓글가져오기
	public String selectReviewReple(int reviewNo){
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.selectReviewReple(reviewNo));
		return new Gson().toJson(result);
	}
	//상품평가댓글작성
	public void insertReviewReple(ItemReviewReple i){
		dao.insertReviewReple(i);
	}
	//상품평가 댓글수정
	public void updateReviewReple(ItemReviewReple i){
		dao.updateReviewReple(i);
	}
	//상품평가 댓글삭제
	public void deleteReviewReple(int reviewRepleNo){
		dao.deleteReviewReple(reviewRepleNo);
	}
	//장바구니담기
	public void insertBasket(int itemNo,String userId){
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("itemNo", itemNo);
		map.put("userId", userId);
		dao.insertBasket(map);
	}
	//배송리스트
	@Transactional
	public String deliveryList(String userId,int pageNo){
		HashMap<String, Object> map=new HashMap<String, Object>();
		Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectDeliveryListCnt(userId));
		map.put("start", p.getStartArticle());
		map.put("end", p.getEndArticle());
		map.put("itemNo", userId);
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.deliveryList(map));
		result.put("pagination", p);
		return new Gson().toJson(result);	
	}
	//주문하기
	@Transactional
	public void productOrder(OrderStatement o,String ownerId){
		HashMap<String, Object> map=new HashMap<String, Object>();
		HashMap<String, Object> map1=new HashMap<String, Object>();
		HashMap<String, Object> map2=new HashMap<String, Object>();
		map.put("orderPrice",o.getOrderPrice());
		map.put("userId", o.getUserId());
		dao.orderUserPoint(map);
		map1.put("orderPrice", o.getOrderPrice());
		map1.put("userId", ownerId);
		dao.orderOwnerPoint(map1);
		dao.insertOrderStatement(o);
		map2.put("itemNo", o.getItemNo());
		map2.put("orderSize",o.getOrderSize());
		dao.updateItemInven(map2);
	}
	//카테고리별 상품조회(리스트)
	public String selectItemListByKind(int pageNo,String userId,String smallKind){
		HashMap<String, Object> map=new HashMap<String, Object>();
		HashMap<String, Object> map1=new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("smallKind", smallKind);
		Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectItemListByKindCnt(map));
		map1.put("start", p.getStartArticle());
		map1.put("end", p.getEndArticle());
		map1.put("userId", userId);
		map1.put("smallKind", smallKind);
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.selectItemListByKind(map1));
		result.put("pagination", p);
		return new Gson().toJson(result);	
	}
	
	

}
