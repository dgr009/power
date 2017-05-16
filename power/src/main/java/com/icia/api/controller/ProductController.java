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
	@RequestMapping(value="/admin/productRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String>  productRegisterEnd(@ModelAttribute Item item){
		System.out.println("시발년아");
		System.out.println("아이템"+item.getItemName());

		//service.productRegister(item, null, list);
		 
		 return new ResponseEntity<String>("success",HttpStatus.OK);//성공은 200
	}
}
