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

	/*
	// 관리자 매출내역 보기
	@RequestMapping(value = "/tradeList", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String tradeList(@RequestHeader("token") String token, @RequestParam int pageNo) {
		String userId = service.getUserIdByToken(token);
		Map<String, Object> map = service.tradeList(userId, pageNo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		return gson.toJson(map);

	}*/
}
