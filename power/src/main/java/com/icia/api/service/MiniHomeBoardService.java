package com.icia.api.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import com.google.gson.*;
import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class MiniHomeBoardService {
	@Autowired
	private MiniHomeBoardDao dao;
	
	//(개인)공지게시판 작성
	public int miniHomeRegisterNotice(MiniHomeNotice notice){
		 return dao.miniHomeRegisterNotice(notice);
	}
	
	//(개인)공지게시판 수정
	public int miniHomeUpdateNotice(MiniHomeNotice notice){
		return dao.miniHomeUpdateNotice(notice);	
	}
	
	//(개인)자유게시판 작성
	public int miniHomeRegisterFree(MiniHomeFree free){
		 return dao.miniHomeRegisterFree(free);
	}
	
	//(개인)자유게시판 수정
	public int miniHomeUpdateFree(MiniHomeFree free){
		return dao.miniHomeUpdateFree(free);
	}
	
	//(개인)자유게시판 삭제
	public int miniHomeDeleteFree(int freeNo){
		return dao.miniHomeDeleteFree(freeNo);
	}
	//(개인)공지게시판 삭제
	public int miniHomeDeleteNotice(int noticeArticleNo){
		return dao.miniHomeDeleteNotice(noticeArticleNo);
	}
	
	//(개인)자유게시판 리스트 
	public HashMap<String,Object> miniHomeSelectFreeList(String userId, int pageNo){
		int cnt = dao.miniHomeNumberOfFree(userId);//자유게시판 총 게시글 수
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		System.out.println("----------ㅇㅇㅇ--------"+pagination);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.miniHomeSelectFreeList(pagination.getStartArticle(), pagination.getEndArticle(), userId));
		return map;
	}
	
	//(개인)공지게시판 리스트
	public HashMap<String,Object> miniHomeSelectNoticeList(String userId,int pageNo) {
		int cnt = dao.miniHomeNumberOfNotice(userId);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.miniHomeSelectNoticeList(userId, pagination.getEndArticle(), pagination.getStartArticle()));
		return map;
	}	
	
	//(개인)자유게시판 뷰
	@Transactional
	public HashMap<String,Object> miniHomeSelectFreeView(int freeNo){
		dao.miniHomeFreeIncreaseHits(freeNo);//(개인)자유게시판 조회수 증가	
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("free", dao.miniHomeSelectFreeView(freeNo));
		map.put("reple", dao.miniHomeSelectAllFreeReple(freeNo));
		
		return map;
	}
	//(개인)공지게시판 뷰
	public MiniHomeNotice miniHomeSelectNoticeView(int noticeArticleNo){
		return dao.miniHomeSelectNoticeView(noticeArticleNo);
	}
	
	//(개인)자유게시판 댓글 하나 조회
	public MiniHomeFreeReple miniHomeSelectOneFreeReple(int freeRepleNo){
		return dao.miniHomeSelectOneFreeReple(freeRepleNo);
	}
	
	//(개인)자유게시판 모든 댓글 조회
	public List<MiniHomeFreeReple> miniHomeSelectAllFreeReple(int freeNo){
		return dao.miniHomeSelectAllFreeReple(freeNo);
	}
	
	//자유게시판 댓글 추가
	@Transactional
	public String miniHomeRegisterFreeReple(MiniHomeFreeReple reple){	
		dao.miniHomeIncreaseFreeRepleCnt(reple.getFreeNo());//자유게시판 댓글 수 증가
		dao.miniHomeRegisterFreeReple(reple);
		int result = dao.miniHomeRepleCnt(reple.getFreeNo());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("free", dao.miniHomeSelectFreeView(reple.getFreeNo()));
		map.put("reple", dao.miniHomeSelectAllFreeReple(reple.getFreeNo()));
		map.put("cnt", result);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);
	}
	
	//자유게시판 댓글 수정
	public String miniHomeUpdateFreeReple(MiniHomeFreeReple reple){
		dao.miniHomeUpdateFreeReple(reple);
		int result = dao.miniHomeRepleCnt(reple.getFreeNo());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("free", dao.miniHomeSelectFreeView(reple.getFreeNo()));
		map.put("reple", dao.miniHomeSelectAllFreeReple(reple.getFreeNo()));
		map.put("cnt", result);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);
	}
	
	//자유게시판 댓글 삭제
	@Transactional
	public String miniHomeDeleteFreeReple(int freeNo, int freeRepleNo){
		dao.miniHomeDecreaseFreeRepleCnt(freeNo);//자유게시판 댓글 수 감소
		dao.miniHomeDeleteFreeReple(freeRepleNo);// 댓글 삭제
		int result = dao.miniHomeRepleCnt(freeNo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("free", dao.miniHomeSelectFreeView(freeNo));
		map.put("reple", dao.miniHomeSelectAllFreeReple(freeNo));
		map.put("cnt", result);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);
	}

	//자유게시판 댓글 전체삭제
	public void miniHomeDeleteAllFreeReple(int freeNo){
		dao.miniHomeDeleteAllFreeReple(freeNo);
	}

	
	// 토큰으로  userId 값 가져오기
	public String getUserIdByToken(String token) {
		String userId = null;
		if(TokenUtils.isValid(token)) {
			String role = TokenUtils.get(token, "ROLE");
			System.out.println(role);
			if(role.equals("ROLE_USER")){
				userId = TokenUtils.get(token, "userId");
			}
		}
		return userId;
	}
	
	
	
	
	
	
	
	
	


	
	
}
