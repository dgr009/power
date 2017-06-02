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
public class MainService {
	
	@Autowired
	private MainDao dao;
	
	//메인 자유게시판 페이징
	public HashMap<String, Object> MainFreeBoardList(int pageNo){
		int mainFreeBoardCnt = dao.mainFreeBoardCnt();
		Pagination pagination = PagingUtil.setPageMaker(pageNo, mainFreeBoardCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.mainFreeBoardList(pagination.getStartArticle(),pagination.getEndArticle()));
		return map;
	}
	//메인 자유게시판 작성
	public int mainFreeBoardRegister(MainFreeBoard mainFreeBoard){
		return dao.mainFreeBoardInsert(mainFreeBoard);
	}
	//메인 자유게시판 수정
	public int mainFreeBoardUpdate(MainFreeBoard mainFreeBoard){
		return dao.mainFreeBoardUpdate(mainFreeBoard);
	}
	//메인 자유게시판 삭제
	public int mainFreeBoardDalete(int mainArticleNo){
	return	dao.mainFreeBoardDelete(mainArticleNo);
	}
	//메인 자유게시판 뷰
	@Transactional
	public Map<String,Object> mainFreeBoardView(int mainArticleNo){
		dao.mainFreeBoardHitsCnt(mainArticleNo);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("home", dao.mainFreeBoardView(mainArticleNo));
		map.put("reple", dao.mainFreeRepleAllCnt(mainArticleNo));
		System.out.println("찍어봐시발년아"+map.get("reple").toString());
		return map;
		
	}
	
	//메인 자유게시판 모든 댓글 조회
	public List<MainFreeReple> MainFreeRepleAllCnt(int mainArticleNo){
		return dao.mainFreeRepleAllCnt(mainArticleNo);
	}
	//메인 자유게시판 댓글 생성
	@Transactional
	public String MainFreeRepleInsert(MainFreeReple mainFreeReple){
		dao.incrementFreeRepleCnt(mainFreeReple.getMainArticleNo());
		dao.mainFreeBoardRepleInsert(mainFreeReple);
		int result = dao.mainRepleCnt(mainFreeReple.getMainFreeRepleNo());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("free",dao.mainFreeBoardView(mainFreeReple.getMainArticleNo()));
		map.put("reple",dao.mainFreeRepleAllCnt(mainFreeReple.getMainArticleNo()));
		map.put("cnt",result);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);
	}
	//메인 자유게시판 댓글 수정
	@Transactional
	public String MainFreeRepleUpdate(MainFreeReple mainFreeReple){
		dao.mainFreeBoardRepleUpdate(mainFreeReple);
		int result = dao.mainRepleCnt(mainFreeReple.getMainFreeRepleNo());
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("free", dao.mainFreeBoardView(mainFreeReple.getMainArticleNo()));
		map.put("reple", dao.mainFreeRepleAllCnt(mainFreeReple.getMainArticleNo()));
		map.put("cnt", result);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);
	}
	
	//자유게시판 댓글 삭제
	@Transactional
	public String mainFreeRepleDelete(int mainArticleNo, int mainFreeRepleNo){
		dao.decrementMainFreeRepleCnt(mainArticleNo);
		dao.mainFreeBoardRepleDelete(mainFreeRepleNo);
		int result = dao.mainRepleCnt(mainArticleNo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("free", dao.mainFreeBoardView(mainArticleNo));
		map.put("reple", dao.mainFreeRepleAllCnt(mainArticleNo));
		map.put("cnt", result);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(map);
		
	}
	//자유게시판 댓글 모두삭제
	public void mainFreeRepleAllDelete(int mainArticleNo){
		dao.mainFreeBoardRepleAllDelete(mainArticleNo);
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
