package com.icia.api.controller;

import java.util.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.google.gson.*;
import com.icia.api.dao.*;
import com.icia.api.service.*;
import com.icia.api.vo.*;

@RestController
@RequestMapping("/miniHome")
public class MiniHomeController {
	private static final Logger logger = LoggerFactory.getLogger(MiniHomeController.class);
	
	@Autowired
	private MiniHomeBoardService service;	
	
	@Autowired
	private MiniHomeService service2;
	
	@Autowired
	private MiniHomeBoardDao dao;	
	
	//자유게시판 뷰
	@RequestMapping(value="/{userId}/freeView/{freeNo}", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String read(@RequestHeader("token") String token, @PathVariable String userId, @PathVariable int freeNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(service.miniHomeSelectFreeView(freeNo));
	}
	
	//공지게시판 뷰
	@RequestMapping(value="/{userId}/noticeView/{noticeArticleNo}", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String readNotice(@RequestHeader("token") String token, @PathVariable String userId, @PathVariable int noticeArticleNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(service.miniHomeSelectNoticeView(noticeArticleNo));
	}
	
	//자유게시판 리스트
	@RequestMapping(value="/{userId}/freeList", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String list(@RequestHeader("token") String token, @PathVariable String userId, @RequestParam int pageNo) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		Map<String,Object> free = service.miniHomeSelectFreeList(userId, pageNo);	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(free);
	}
	//공지게시판 리스트
	@RequestMapping(value="/{userId}/noticeList", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String noticeList(@RequestHeader("token") String token, @PathVariable String userId, @RequestParam int pageNo) {
		Map<String,Object> notice = service.miniHomeSelectNoticeList(userId, pageNo);	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(notice);
	}
	
	//자유게시판 작성
	@RequestMapping(value="/{userId}/freeRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String create(@RequestHeader("token") String token, @RequestBody MiniHomeFree free) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.miniHomeRegisterFree(free);
//		System.out.println(free.getFreeNo());
//		System.out.println(new Gson().toJson(free.getFreeNo()));
		return new Gson().toJson(result);	//추가된 게시글 번호를 알기 위해
	}

	//공지게시판 작성
	@RequestMapping(value="/{userId}/noticeRegister", method=RequestMethod.POST, produces="text/html;charset=utf-8", consumes="application/json")
	public String createNotice(@RequestHeader("token") String token, @RequestBody MiniHomeNotice notice) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.miniHomeRegisterNotice(notice);
		return new Gson().toJson(notice.getNoticeArticleNo());	//추가된 게시글 번호를 알기 위해
	
	}
	
	//회원 토큰으로 정보 얻기
	@RequestMapping(value="/getUserInfo", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	public String getUserIdByToken(@RequestHeader("token") String token) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		System.out.println("Power Controller Token : " + token);
		String userId = service.getUserIdByToken(token);
		return new Gson().toJson(userId);
	}
	
	//자유게시판 수정
	@RequestMapping(value="/{userId}/freeUpdate/{freeNo}", method=RequestMethod.PUT, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> update(@RequestHeader("token") String token, @RequestBody MiniHomeFree free) throws BindException {
		System.out.println("-=-==-=-=-=-=-=-=-=--=--=="+free.toString());
		int result = service.miniHomeUpdateFree(free);
			
		if(result==1){
			return new ResponseEntity<String>(free.toString(),HttpStatus.OK);
		}else{
			return new ResponseEntity<String>("수정 실패",HttpStatus.BAD_REQUEST);
		}
	}
	//공지게시판 수정
	@RequestMapping(value="/{userId}/noticeUpdate/{noticeArticleNo}", method=RequestMethod.PUT, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> noticeUpdate(@RequestHeader("token") String token, @RequestBody MiniHomeNotice notice) throws BindException {
		int result = service.miniHomeUpdateNotice(notice);
			
		if(result==1){
			return new ResponseEntity<String>(notice.toString(),HttpStatus.OK);
		}else{
			return new ResponseEntity<String>("수정 실패",HttpStatus.BAD_REQUEST);
		}
	}
	
	//자유게시판 삭제
	@RequestMapping(value="/{userId}/freeDelete/{freeNo}", method=RequestMethod.DELETE, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> delete(@RequestHeader("token") String token, @PathVariable int freeNo, @PathVariable String userId) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.miniHomeDeleteFree(freeNo);
			
		if(result==1){
			return new ResponseEntity<String>(HttpStatus.OK);
			
		}else{
			return new ResponseEntity<String>("실패",HttpStatus.BAD_REQUEST);
			
		}
	}
	
	//공지게시판 삭제
	@RequestMapping(value="/{userId}/noticeDelete/{noticeArticleNo}", method=RequestMethod.DELETE, produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> deleteNotice(@RequestHeader("token") String token, @PathVariable int noticeArticleNo) throws BindException {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)
		int result = service.miniHomeDeleteNotice(noticeArticleNo);
			
		if(result==1){
			return new ResponseEntity<String>(HttpStatus.OK);
			
		}else{
			return new ResponseEntity<String>("실패",HttpStatus.BAD_REQUEST);
			
		}
	}	
	//자유 덧글 추가
	@RequestMapping(value="/{userId}/freeRepleRegister/{freeNo}", method=RequestMethod.POST)
	public String insertReple(@ModelAttribute MiniHomeFreeReple reple,@PathVariable int freeNo){
		reple.setFreeNo(freeNo);
		reple.setFreeRepleName(reple.getFreeRepleName());
		return service.miniHomeRegisterFreeReple(reple);
	}
	
	//자유 덧글 삭제
	@RequestMapping(value="/{userId}/freeRepleDelete/{freeRepleNo}", method=RequestMethod.POST)
	public String deleteReple(@RequestParam int freeNo,@PathVariable int freeRepleNo){
		return service.miniHomeDeleteFreeReple(freeNo, freeRepleNo);
	}
	
	//자유 덧글 수정
	@RequestMapping(value="/{userId}/freeRepleUpdate/{freeRepleNo2}", method=RequestMethod.POST)
	public String updateReple(@ModelAttribute MiniHomeFreeReple reple,@RequestParam String freeRepleContent,@PathVariable int freeRepleNo2, @RequestParam int freeNo){
		System.out.println("=========================="+reple);
		System.out.println("=========================="+freeRepleNo2);
		System.out.println("=========================="+freeRepleContent);
		System.out.println("=========================="+freeNo);
		reple.setFreeRepleNo(freeRepleNo2);
		return service.miniHomeUpdateFreeReple(reple);
	}
	//회원 정보 보기 
	@RequestMapping(value="/{userId}/Info", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String miniHomeSelectSellerInformation(@RequestHeader("token") String token, @PathVariable String userId) {
		// 500오류 (406 not acceptable이 발생하면 @RestController가 Users를 변환못하는 오류)	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(service2.miniHomeSelectSellerInformation(userId));
	}
	
	//홈페이지 결제
	@RequestMapping(value="/{userId}/pay", method=RequestMethod.POST, 
					produces="text/html;charset=utf-8", consumes="application/json")
	public ResponseEntity<String> homePay(@RequestHeader("token") String token,
			@PathVariable String userId) throws BindException {
		int result = service2.miniHomePay(userId);	// 회원 포인트 차감, 홈페이지 활성화, 기록 생성
		if(result==1){
			return new ResponseEntity<String>(HttpStatus.OK);
		}else{
			return new ResponseEntity<String>("실패",HttpStatus.BAD_REQUEST);
			
		}
	}
	
	
	//이용내역 리스트
	@RequestMapping(value="/payList", method=RequestMethod.GET, produces="text/html;charset=utf-8")
	public String payList(@RequestHeader("token") String token, @RequestParam int pageNo) {
		String userId = service.getUserIdByToken(token);
		Map<String,Object> active = service2.selectActiveList(userId, pageNo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(active);
	}	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
}
