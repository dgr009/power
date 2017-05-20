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
	@RequestMapping(value="/admin/kindList", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productRegisterEnd(@RequestBody String userId){
		 return 	service.productRegisterReady(userId);
	}
	@RequestMapping(value="/admin/productRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String>  productRegisterEnd(@RequestBody Item item){
	service.productRegister(item);
		 return new ResponseEntity<String>("success",HttpStatus.OK);//성공은 200
	}
	@RequestMapping(value="/admin/productList", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productList(@RequestBody Map<String, Object> map){
		int pageNo=(Integer) map.get("pageNo");
		String userId=(String) map.get("userId");
		System.out.println("여기한번찍어봐라"+service.selectItemListByKind(pageNo, userId));
		 return service.selectItemListByKind(pageNo, userId);
	}
	@RequestMapping(value="/admin/productDelete", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productDelete(@RequestBody int itemNo){
		 service.deleteItem(itemNo);
		 return null;
	}
	@RequestMapping(value="/admin/productOrderList", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  productOrderList(@RequestBody Map<String, Object> map){
		int pageNo=(Integer) map.get("pageNo");
		int itemNo=(Integer)map.get("itemNo");
		 return service.orderList(itemNo,pageNo);
	}
	@RequestMapping(value="/productMain", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String  product(@RequestBody int itemNo){
		 return service.selectItemDetail(itemNo);
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
}
