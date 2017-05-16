package com.icia.api.controller;

import java.awt.*;
import java.util.*;
import java.util.List;

import javax.annotation.*;
import javax.servlet.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;

import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

	@RestController
	@RequestMapping("/miniHome")
public class ProductController {
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
	@RequestMapping(value="/admin/productRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String>  productRegisterEnd(@ModelAttribute Item item,MultipartHttpServletRequest req){
		 ArrayList<ItemImg> list=new ArrayList<ItemImg>();
		 Iterator<String> it=req.getFileNames();
		 while(it.hasNext()){
			 String fileName=it.next();
			 MultipartFile mf=req.getFile(fileName);
			fileName= UploadUtils2.storeAndGetFileName(mf, ctx ,path);
			 list.add(new ItemImg(fileName));
		 }
		 service.productRegister(item, null, list);
		 
		 return new ResponseEntity<String>("success",HttpStatus.OK);//성공은 200
	}
}
