package com.icia.api.controller;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.service.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/main")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private MainService service;

	// 자유게시판 작성
	@RequestMapping(value = "/freeboard/register", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> create(@RequestBody MainFreeBoard mainFreeBoard) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.mainFreeBoardRegister(mainFreeBoard);
		if (result == 1) {
			return new ResponseEntity<String>(mainFreeBoard.toString(), HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("작성 실패", HttpStatus.BAD_REQUEST);
		}
	}
	// 자유게시판 수정
	@RequestMapping(value = "/freeboard/update/{mainFreeArticleNo}", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> update(@RequestBody MainFreeBoard mainFreeBoard)throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.mainFreeBoardUpdate(mainFreeBoard);
		if (result == 1) {
			return new ResponseEntity<String>(mainFreeBoard.toString(), HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);
		}

	}
	
	// 회원 토큰으로 정보 얻기
	@RequestMapping(value = "/freeboard/view/{mainArticleNo}", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String read(@PathVariable int mainArticleNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		MainFreeBoard result = service.mainFreeBoardView(mainArticleNo);
		return new Gson().toJson(result);
	}

}
