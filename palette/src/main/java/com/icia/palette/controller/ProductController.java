package com.icia.palette.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.awt.List;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.icia.palette.service.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping(value="/miniHome")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private ServletContext ctx;
	@Resource(name="path")
	private String path;
	@Autowired
	private ProductService service;
	//미니홈페이지 메인
	@RequestMapping(value="/{userId}/main",method=RequestMethod.GET)
	public String miniMain(@PathVariable String userId,Model model){
		model.addAttribute("kind", service.productKind(userId));
		return "products/homepageMain";
	}
	//상품등록창으로
	@RequestMapping(value="/{userId}/admin/register",method=RequestMethod.GET)
	public String productRegister(@PathVariable String userId,Model model){
		model.addAttribute("result",service.productRegisterReady(userId));
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductRegister";
	}
	//상품수정하기
	@RequestMapping(value="/{userid}/admin/productUpdate",method=RequestMethod.GET)
	public String productUpdate(@PathVariable String userid){
		return "products/ProductUpdate";
	}
	//상품등록하기
	@RequestMapping(value = "/{userId}/admin/register", method = RequestMethod.POST)
	public String productRegister(@ModelAttribute Item item,@PathVariable String userId, MultipartHttpServletRequest req) throws IOException {
		item.setUserId(userId);
		 ArrayList<com.icia.palette.vo.ItemImg> list=new ArrayList<com.icia.palette.vo.ItemImg>();
		 java.util.List<MultipartFile> mw=req.getFiles("imgName");
		
		for (int i=0;i<mw.size();i++) {
			MultipartFile f=mw.get(i);
		String fileName= com.icia.palette.util.UploadUtils2.storeAndGetFileName(f, ctx ,path);
		 list.add(new com.icia.palette.vo.ItemImg(fileName));
		 }
		item.setItemImgList(list);
		System.out.println("메인에서 이름"+item.getItemName());
		service.productRegister(item);
		String a="redirect:/miniHome/"+userId+"/admin/registerList";
		return a;
	}
	
	//상품등록리스트
	@RequestMapping(value = "/{userId}/admin/registerList", method = RequestMethod.GET)
	public String productRegisterList(@PathVariable String userId,@RequestParam(defaultValue = "1") int pageNo,Model model) {
		model.addAttribute("result", service.productRegisterList(userId,pageNo));
		model.addAttribute("userId", userId);
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductRegisterList";
	}
	//상품삭제하기
	@RequestMapping(value = "/{userId}/admin/productDelete", method = RequestMethod.GET)
	public String productDelete(@RequestParam int itemNo,@PathVariable String userId) {
		service.productDelete(itemNo);
		String a="redirect:/miniHome/"+userId+"/admin/registerList";
		return a;
	}
	//상품주문자리스트
	@RequestMapping(value = "/{userId}/admin/productOrderList", method = RequestMethod.GET)
	public String productOrderList(@PathVariable String userId,Model model,@RequestParam int itemNo,@RequestParam(defaultValue="1") int pageNo ) {
		model.addAttribute("result", service.productOrderList(itemNo,pageNo));
		model.addAttribute("itemNo",itemNo);
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductOrderList";
	}
	//상품보기
	@RequestMapping(value = "/{userId}/productMain", method = RequestMethod.GET)
	public String productMain(@PathVariable String userId,Model model,@RequestParam int itemNo) {
		
		model.addAttribute("result", service.productMain(itemNo));
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductMain";
	}
	
	
}
