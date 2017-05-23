package com.icia.api.service;

import java.sql.Date;
import java.text.*;
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
	public String productRegisterReady(String userid) {
		HashMap<String,Object> result=new HashMap<String, Object>();
		System.out.println("api서버 서비스");
		result.put("kind", dao.productRegisterReady(userid));
		return new Gson().toJson(result);
	}
	//상품등록하기
	@Transactional
	public void productRegister(Item i){
		ArrayList<ItemImg> imgList=(ArrayList)i.getItemImgList();
		dao.insertItem(i);
		int result=i.getItemNo();
		for (ItemImg itemImg : imgList) {
			itemImg.setItemNo(result);
			System.out.println("몬소리냐"+i.getItemNo());
			
			dao.insertItemImg(itemImg);
		}
		for (String itemOption:i.getOptionName()) {
			ItemOption o=new ItemOption();
			o.setItemNo(i.getItemNo());
			o.setOptionName(itemOption);
			dao.insertOption(o);
		}
	}

	//등록상품삭제
	public void deleteItem(int itemNo){
		dao.deleteItem(itemNo);
	}
		
	//
	//상품신청리스트
	@Transactional
		public String orderList(int itemNo,int pageNo){
			HashMap<String, Object> map=new HashMap<String, Object>();
			map.put("itemNo", itemNo);
			Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectOrderListCnt(itemNo));
			map.put("start", p.getStartArticle());
			map.put("end", p.getEndArticle());
			List<ApplicantList> r=dao.orderList(map);
			HashMap<String, Object> result=new HashMap<String, Object>();
			result.put("result", r);
			result.put("pagination", p);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
			return gson.toJson(result);	
		}
		//등록상품조회(리스트)
		@Transactional
		public String selectItemListByKind(int pageNo,String userId){
			HashMap<String, Object> map=new HashMap<String, Object>();
			HashMap<String, Object> map1=new HashMap<String, Object>();
			map.put("userId", userId);
			Pagination p=PagingUtil.setPageMaker(pageNo, dao.selectItemListByKindCnt(map));
			map1.put("start", p.getStartArticle());
			map1.put("end", p.getEndArticle());
			map1.put("userId", userId);
			HashMap<String, Object> result=new HashMap<String, Object>();
			List<ItemList> r=dao.selectItemListByKind1(map1);
			result.put("result", r);
			result.put("pagination", p);
			System.out.println("api서버"+result);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
			return gson.toJson(result);	
		}
		//제품상세정보보기
		@Transactional
		public String selectItemDetail(int itemNo){
			Item item=dao.selectItemDetail(itemNo);
			List<ItemImg> imgList=dao.selectItemImg(itemNo);
			List<ItemOption> itemOption=dao.selectProductOption(itemNo);
			HashMap<String,  Object> result=new HashMap<String, Object>();
			result.put("item", item);
			result.put("itemImg", imgList);
			result.put("itemOption", itemOption);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			return gson.toJson(result);	
			
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
	@Transactional
	public int insertBasket(int itemNo,String userId){
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("itemNo", itemNo);
		map.put("userId", userId);
		int result= dao.selectBasket(map);
		if(result==1) return 0; 
		return dao.insertBasket(map);
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
	public void productOrder(OrderStatement o){
		HashMap<String, Object> map=new HashMap<String, Object>();
		HashMap<String, Object> map1=new HashMap<String, Object>();
		HashMap<String, Object> map2=new HashMap<String, Object>();
		map.put("orderPrice",o.getOrderPrice());
		map.put("userId", o.getUserId());
		String ownerId=dao.getOwnerId(o.getItemNo());
		dao.orderUserPoint(map);
		map1.put("orderPrice", o.getOrderPrice());
		map1.put("userId", ownerId);
		dao.orderOwnerPoint(map1);
		dao.insertOrderStatement(o);
		map2.put("itemNo", o.getItemNo());
		map2.put("orderSize",o.getOrderSize());
		dao.updateItemInven(map2);
	}

	//카테고리메뉴가져오기
	public String selectKind(String userId){
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("bigKind", dao.selectbigKind(userId));
		result.put("smallKind",dao.selectSmallKind(userId));
		return new Gson().toJson(result);
	}
	//배송하기
	@Transactional
	public void insertBasket(Map<String, Object> map) {
		dao.insertDelivery((HashMap<String, Object>) map);
		System.out.println("여기지임마");
		int orderNo=(Integer)map.get("orderNo");
		System.out.println(orderNo);
		dao.updateOrderStatement(orderNo);
		
	}
	//등록상품변경
	@Transactional
	public void productUpdate(List<Map<String, Object>> itemList) {
		for (Map<String, Object> map : itemList) {
			dao.updateOption(map);
			System.out.println("야야야야");
			dao.updateItemImg(map);
			dao.updateItem(map);
		}

	}
	//등록상품변경
	/*@Transactional
	public void productUpdate(Item i,ArrayList<ItemOption> optionList,ArrayList<ItemImg> imgList){
		dao.updateItem(i);
		for (ItemImg itemImg : imgList) {
			itemImg.setItemNo(i.getItemNo());
			dao.updateItemImg(itemImg);
		}
		for (ItemOption itemOption : optionList) {
			itemOption.setItemNo(i.getItemNo());
			dao.updateOption(itemOption);
		}*/
	//미니홈피메인 이미지파일
	@Transactional
	public String getMain(String userId) {
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("recent", dao.selectItemListOrderByDate(userId));
		result.put("inven", dao.selectItemListOrderByInven(userId));
		//result.put("score", dao.selectItemListOrderByScore(userId));
		return new Gson().toJson(result);
	}
	
	//미니홈피카테고리로 검색하기
	@Transactional
	public String productSelectKind(Map<String, Object> map) {
	Map<String, Object> result=new HashMap<String, Object>();
	int pageNo=(Integer) map.get("pageNo");
	Pagination p=PagingUtil2.setPageMaker(pageNo, dao.productSelectKindCnt(map));
	System.out.println("여기한번찍어봐 수민아 개수야"+dao.productSelectKindCnt(map));
	map.put("start", p.getStartArticle());
	map.put("end", p.getEndArticle());
	List<ItemList> list= dao.selectItemListByKind2(map);
	result.put("result", list);
	result.put("pagination", p);
	System.out.println("찍어봐임마"+result.get("result").toString());
		return new Gson().toJson(result);
	}
	//이름으로 상품검색
	@Transactional
	public String productSearch(Map<String, Object> map) {
		Map<String, Object> result=new HashMap<String, Object>();
		int pageNo=(Integer) map.get("pageNo");
		Pagination p=PagingUtil2.setPageMaker(pageNo, dao.productSearchCnt(map));
		System.out.println("여기한번찍어봐 수민아 개수야"+dao.productSearchCnt(map));
		map.put("start", p.getStartArticle());
		map.put("end", p.getEndArticle());
		List<ItemList> list= dao.selectItemByName(map);
		result.put("result", list);
		result.put("pagination", p);
		System.out.println("찍어봐임마"+result.get("result").toString());
			return new Gson().toJson(result);
		}
	
	
	
}
