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
	//제품등록전 제품종류가져오기
	@RequestMapping(value="/{userId}/admin/register",method=RequestMethod.GET)
	public String productRegister(@PathVariable String userId,Model model){
		model.addAttribute("result",service.productRegisterReady(userId));
		return "products/ProductRegister";
	}
	@RequestMapping(value="/{userid}/admin/productUpdate",method=RequestMethod.GET)
	public String productUpdate(@PathVariable String userid){
		return "products/ProductUpdate";
	}
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
		service.productRegister(item);
		return "redirect:/miniHome/dd/admin/registerList";
	}
	
	@RequestMapping(value = "/dd/admin/registerList", method = RequestMethod.GET)
	public String productRegisterList() {
	
		return "products/ProductRegisterList";
	}
	
	
}
