package com.icia.api.controller;

import java.util.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
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
	//회원 토큰으로 정보 얻기
	@RequestMapping(value="/getUserInfo", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String getUserIdByToken(@RequestHeader("token") String token) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		System.out.println("Power Controller Token : " + token);
		String userId = service.getUserIdByToken(token);
		return new Gson().toJson(userId);
	}
	// 자유게시판 작성 원본
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
	@RequestMapping(value = "/freeboard/update/{mainFreeArticleNo}", method = RequestMethod.PUT, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> update(@RequestBody MainFreeBoard mainFreeBoard)throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.mainFreeBoardUpdate(mainFreeBoard);
		if (result == 1) {
			return new ResponseEntity<String>(mainFreeBoard.toString(), HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);
		}

	}
	
	// 자유게시판 상세 보기
	@RequestMapping(value = "/freeboard/view/{mainArticleNo}", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String mainArticleView(@PathVariable int mainArticleNo) {
		Map<String,Object> map = service.mainFreeBoardView(mainArticleNo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);	
	}
	//자유게시판 리스트
	@RequestMapping(value="/freeboard/list", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String list(@RequestParam int pageNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		Map<String,Object> free = service.MainFreeBoardList(pageNo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(free);	
	}
	//자유게시판 삭제
	@RequestMapping(value="/freeboard/delete/{mainArticleNo}", method=RequestMethod.DELETE,produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> delete(@PathVariable int mainArticleNo) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.mainFreeBoardDalete(mainArticleNo);;
			
		if(result==1){
			return new ResponseEntity<String>(HttpStatus.OK);
			
		}else{
			return new ResponseEntity<String>("가입 실패",HttpStatus.BAD_REQUEST);
			
		}
	}
	//자유 덧글 추가
		@RequestMapping(value="/mainFreeRepleRegister/{mainArticleNo}", method=RequestMethod.POST)
		public String insertReple(@ModelAttribute MainFreeReple reple,@PathVariable int mainArticleNo){
			reple.setMainArticleNo(mainArticleNo);
			reple.setMainFreeRepleName(reple.getMainFreeRepleName());
			String result = service.MainFreeRepleInsert(reple);
			System.out.println(result);
			return result;
		}
		
		//자유 덧글 삭제
		@RequestMapping(value="/mainFreeRepleDelete/{mainFreeRepleNo}", method=RequestMethod.POST)
		public String deleteReple(@RequestParam int mainArticleNo,@PathVariable int mainFreeRepleNo){
			return service.mainFreeRepleDelete(mainArticleNo, mainFreeRepleNo);
		}
		
		//자유 덧글 수정
		@RequestMapping(value="/mainFreeRepleUpdate/{mainFreeRepleNo2}", method=RequestMethod.POST)
		public String updateReple(@ModelAttribute MainFreeReple reple,@RequestParam String mainFreeRepleContent,@RequestParam int mainArticleNo,@PathVariable int mainFreeRepleNo2){
			System.out.println("=========================="+reple);
			System.out.println("=========================="+mainFreeRepleContent);
			System.out.println("=========================="+mainArticleNo);
			
			reple.setMainFreeRepleNo(mainFreeRepleNo2);
			String result = service.MainFreeRepleUpdate(reple);
			System.out.println(result);
			return result;
		}
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	//공지 게시판생성
	@RequestMapping(value = "/noticeboard/register", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> noticeCreate(@RequestBody MainNoticeBoard mainNoticeBoard) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.mainNoticeBoardInsert(mainNoticeBoard);
		
		if (result == 1) {
			return new ResponseEntity<String>(mainNoticeBoard.toString(), HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("작성 실패", HttpStatus.BAD_REQUEST);
		}
	}/*
	// 공지게시판 수정
	@RequestMapping(value = "/freeboard/update/{mainFreeArticleNo}", method = RequestMethod.POST, produces = "text/html;charset=utf-8", consumes = "application/json")
	public ResponseEntity<String> noticeUpdate(@RequestBody MainFreeBoard mainFreeBoard)throws BindException {
	// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.mainFreeBoardUpdate(mainFreeBoard);
		if (result == 1) {
			return new ResponseEntity<String>(mainFreeBoard.toString(), HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("수정 실패", HttpStatus.BAD_REQUEST);
		}

	}
	
		
		// 공지게시판 상세 보기
		@RequestMapping(value = "/noticeboard/view/{mainNoticeArticleNo}", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
		public String noticeView(@PathVariable int mainNoticeArticleNo) {
			MainNoticeBoard result= service.mainNoticeBoardView(mainNoticeArticleNo);
			return new Gson().toJson(result);
		}
		//공지게시판 리스트
		@RequestMapping(value="/noticeboard/list", method=RequestMethod.GET, produces="text/html;charset=utf-8")
		public String noticeList(@RequestParam int pageNo) {
			// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
			Map<String,Object> free = service.MainNoticeBoardList(pageNo);
			return new Gson().toJson(free);
		}
		//공지게시판 삭제
		@RequestMapping(value="/noticeboard/delete/{mainArticle}", method=RequestMethod.DELETE, produces="text/html;charset=utf-8", consumes="application/json")
		public ResponseEntity<String> noticeDelete(@RequestHeader("token") String token, @PathVariable int mainNoticeArticleNo, @PathVariable String userId) throws BindException {
			// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
			int result = service.mainNoticeBoardDalete(mainNoticeArticleNo);;
				
			if(result==1){
				return new ResponseEntity<String>(HttpStatus.OK);
				
			}else{
				return new ResponseEntity<String>("가입 실패",HttpStatus.BAD_REQUEST);
				
			}
		}*/
	
	
}
