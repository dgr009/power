package com.icia.palette.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.awt.List;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.icia.palette.service.*;
import com.icia.palette.vo.Item;

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
	@RequestMapping(value="/dd/admin/register",method=RequestMethod.GET)
	public String productRegister(){
		
		return "products/ProductRegister";
	}
	@RequestMapping(value="/{userid}/admin/productUpdate",method=RequestMethod.GET)
	public String productUpdate(@PathVariable String userid){
		return "products/ProductUpdate";
	}
	@RequestMapping(value = "/dd/admin/register", method = RequestMethod.POST)
	public String productRegister(@ModelAttribute Item item, MultipartHttpServletRequest req) throws IOException {
		System.out.println("아이템이름은"+item.getItemName());
		
		 ArrayList<com.icia.palette.vo.ItemImg> list=new ArrayList<com.icia.palette.vo.ItemImg>();
		 java.util.List<MultipartFile> mw=req.getFiles("imgName");
		
		for (int i=0;i<mw.size();i++) {
			MultipartFile f=mw.get(i);
		String fileName= com.icia.palette.util.UploadUtils2.storeAndGetFileName(f, ctx ,path);
		System.out.println("파일네임들"+fileName);
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
