package com.icia.api.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;

@RestController
@RequestMapping("/admin")
public class RevenueController {
	@Autowired
	private RevenueService service;

	
	// 관리자 매출내역 보기
	@RequestMapping(value = "/revenueList", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public String tradeList(@RequestBody Map<String, Object> map) {
		Map<String, Object> maps = service.selectRevenueList(map,(Integer)map.get("pageNo"));
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		return gson.toJson(maps);

	}
}
