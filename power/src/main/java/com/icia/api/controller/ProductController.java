package com.icia.api.controller;

import java.awt.*;
import java.util.*;
import java.util.List;

import javax.annotation.*;
import javax.servlet.*;
import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;

import com.fasterxml.jackson.databind.annotation.*;
import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

	@RestController
	@RequestMapping("/miniHome")
public class ProductController {
		private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	@Autowired
	private ServletContext ctx;
	@Autowired
	private productService service;
	@Resource(name="path")
	private String path;
	
	@RequestMapping(value="/productRegister/{userid}")
	public String productRegisterReady(@PathVariable String userid){
		return new Gson().toJson(service.productRegisterReady(userid));
	}
	//상품등록시종류값
	@RequestMapping(value="/admin/kindList", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productRegisterEnd(@RequestBody String userId){
		 return 	service.productRegisterReady(userId);
	}
	//상품등록
	@RequestMapping(value="/admin/productRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String>  productRegisterEnd(@RequestBody Item item){
	service.productRegister(item);
		 return new ResponseEntity<String>("success",HttpStatus.OK);//성공은 200
	}
	//상품등록리스트
	@RequestMapping(value="/admin/productList", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productList(@RequestBody Map<String, Object> map){
		int pageNo=(Integer) map.get("pageNo");
		String userId=(String) map.get("userId");
		System.out.println("여기한번찍어봐라"+service.selectItemListByKind(pageNo, userId));
		 return service.selectItemListByKind(pageNo, userId);
	}
	//상품삭제하기
	@RequestMapping(value="/admin/productDelete", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productDelete(@RequestBody int itemNo){
		 service.deleteItem(itemNo);
		 return null;
	}
	//상품주문한회원리스트
	@RequestMapping(value="/admin/productOrderList", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productOrderList(@RequestBody Map<String, Object> map){
		int pageNo=(Integer) map.get("pageNo");
		int itemNo=(Integer)map.get("itemNo");
		 return service.orderList(itemNo,pageNo);
	}
	//상품정보보기
	@RequestMapping(value="/productMain", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  product(@RequestBody Map<String, Object> map){
		 return service.selectItemDetail(map);
	}
	// 회원 장바구니 추가
	@RequestMapping(value = "/basket", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String basketInsert(@RequestParam String userId, @RequestParam String itemNo) {
	System.out.println(itemNo);
		int item=Integer.parseInt(itemNo);
		System.out.println("시방새야"+item);
		int result = service.insertBasket(item, userId);
			return result + "";
	}
	//카테고리받기
	@RequestMapping(value="/productKind", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productKind(@RequestBody String userId){
		 return service.selectKind(userId);
	}
	//상품배송번호입력
	@RequestMapping(value = "/deliveryInsert", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void deliveryInsert(@RequestBody Map<String, Object> map) {
	 service.insertBasket(map);
	}
	//주문하기
	@RequestMapping(value = "/productOrder", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void productOrder(@RequestBody OrderStatement o) {
	 service.productOrder(o);
	}
	//미니홈피메인 상품이미지
	@RequestMapping(value = "/mainImg", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String getMain(@RequestBody String userId) {
	return service.getMain(userId);
		
	}
	//미니홈피카테고리로 검색
	@RequestMapping(value = "/productSelectKind", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String productSelectKind(@RequestBody Map<String, Object> map) {
	return service.productSelectKind(map);
		
	}
	//이름으로 상품검색
	@RequestMapping(value = "/productSearch", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String productSearch(@RequestBody Map<String, Object> map) {
	return service.productSearch(map);
		
	}
	//상품업데이트
	@RequestMapping(value = "/productUpdate", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void productUpdate(@RequestBody List<Map<String, Object>> itemList) {
	 service.productUpdate(itemList);;
	}
	//문의게시판 리스트
	@RequestMapping(value = "/inquiryList", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String inquiryList(@RequestBody Map<String, Object> map) {
	return service.inquiryList(map);	
	}
	//문의게시판 작성
	@RequestMapping(value = "/inquiryRegister", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void inquiryRegister(@RequestBody InquiryBoard i) {
	 service.insertInquiry(i);
	}
	//문의게시판 보기
	@RequestMapping(value = "/inquiryView", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String productSearch(@RequestBody int inquiryNo) {
	return service.inquiryView(inquiryNo);
	}
	//문의게시판 삭제
	@RequestMapping(value = "/inquiryDelete", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void inquiryDelete(@RequestBody int inquiryNo) {
	 service.deleteInquiry(inquiryNo);
	}
	//문의게시판 업데이트
		@RequestMapping(value = "/inquiryUpdate", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public void inquiryDelete(@RequestBody InquiryBoard i) {
		 service.updateInquiry(i);
		}
		//홈피주인 문의게시판관리리스트
		@RequestMapping(value = "/adminInquiryList", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public String adminInquiryList(@RequestBody Map<String, Object> map) {
			return service.adminInquiryList(map);	
		}
		//문의게시판리플작성
				@RequestMapping(value = "/inquiryRepleRegister", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
				public void inquiryRepleRegister(@RequestBody InquiryReple i) {
				 service.insertInquiryReple(i);
				}
	
	
	
	
}
