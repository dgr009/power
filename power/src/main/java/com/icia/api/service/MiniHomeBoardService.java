package com.icia.api.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class MiniHomeBoardService {
	@Autowired
	private MiniHomeBoardDao dao;
	
	//(개인)공지게시판 작성
	public void miniHomeRegisterNotice(MiniHomeNotice notice,HttpServletRequest req){
		HttpSession session = req.getSession();
		Users user=(Users)session.getAttribute("userId");
		
		dao.miniHomeRegisterNotice(notice);
	}
	
	//(개인)공지게시판 수정
	public void miniHomeUpdateNotice(MiniHomeNotice notice){
		dao.miniHomeUpdateNotice(notice);	
	}
	
	//(개인)공지게시판 삭제
	public void miniHomeDeleteNotice(int noticeArticleNo){
		dao.miniHomeDeleteNotice(noticeArticleNo);	
	}
	
	//(개인)공지게시판 리스트
	public HashMap<String,Object> getBoardList(String userId,int pageNo) {
		int cnt = dao.miniHomeNumberOfNotice(userId);
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.miniHomeSelectNoticeList(userId, pagination.getEndArticle(), pagination.getStartArticle()));
		return map;
	}	

	//(개인)공지게시판 뷰
	public MiniHomeNotice miniHomeSelectNoticeView(int noticeArticleNo){
		return dao.miniHomeSelectNoticeView(noticeArticleNo);
	}
	
	//(개인)자유게시판 작성
	public void miniHomeRegisterFree(MiniHomeFree free){
		dao.miniHomeRegisterFree(free);
	}
	
	//(개인)자유게시판 수정
	public void miniHomeUpdateFree(MiniHomeFree free){
		dao.miniHomeUpdateFree(free);
	}
	
	//(개인)자유게시판 삭제
	public void miniHomeDeleteFree(int freeNo){
		dao.miniHomeDeleteFree(freeNo);
	}
	
	//(개인)자유게시판 리스트 
	public HashMap<String,Object> miniHomeSelectFreeList(String userId, int pageNo){
		int cnt = dao.miniHomeNumberOfFree(userId);//자유게시판 총 게시글 수
		Pagination pagination = PagingUtil.setPageMaker(pageNo, cnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.miniHomeSelectFreeList(pagination.getStartArticle(), pagination.getEndArticle(), userId));
		return map;
	}
	
	//(개인)자유게시판 뷰
	@Transactional
	public MiniHomeFree miniHomeSelectFreeView(int freeNo){
		dao.miniHomeFreeIncreaseHits(freeNo);//(개인)자유게시판 조회수 증가
		return dao.miniHomeSelectFreeView(freeNo);
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
	public void miniHomeRegisterFreeReple(int freeNo, MiniHomeFreeReple reple){	
		dao.miniHomeIncreaseFreeRepleCnt(freeNo);//자유게시판 댓글 수 증가
		dao.miniHomeRegisterFreeReple(reple);
	}
	
	//자유게시판 댓글 수정
	public void miniHomeUpdateFreeReple(MiniHomeFreeReple reple){
		dao.miniHomeUpdateFreeReple(reple);
	}
	
	//자유게시판 댓글 삭제
	@Transactional
	public void miniHomeDeleteFreeReple(int freeNo, int freeRepleNo){
		dao.miniHomeDecreaseFreeRepleCnt(freeNo);//자유게시판 댓글 수 감소
		dao.miniHomeDeleteFreeReple(freeRepleNo);
	}

	//자유게시판 댓글 전체삭제
	public void miniHomeDeleteAllFreeReple(int freeNo){
		dao.miniHomeDeleteAllFreeReple(freeNo);
	}
	
	
	
	
	
	
	
	
	


	
	
}
