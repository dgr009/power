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
	public void mainFreeBoard(MainFreeBoard mainFreeBoard,HttpServletRequest req){
		HttpSession session = req.getSession();
		Users user=(Users)session.getAttribute("userId");
		dao.mainFreeBoardInsert(mainFreeBoard);
	}
	//메인 자유게시판 수정
	public void mainFreeBoardUpdate(MainFreeBoard mainFreeBoard){
		dao.mainFreeBoardUpdate(mainFreeBoard);
	}
	//메인 자유게시판 삭제
	public void mainFreeBoardDalete(int mainArticleNo){
		dao.mainFreeBoardDelete(mainArticleNo);
	}
	//메인 자유게시판 뷰
	@Transactional
	public MainFreeBoard mainFreeBoardView(int mainArticleNo){
		dao.mainFreeBoardHitsCnt(mainArticleNo);
		return dao.mainFreeBoardViw(mainArticleNo);
		
	}
	//메인 자유게시판 댓글하나 조회
	public MainFreeReple mainFreeRepleOne(int mainFreeRepleNo){
		return dao.MainFreeRepleOne(mainFreeRepleNo);
	}
	
	//메인 자유게시판 모든 댓글 조회
	public List<MainFreeReple> MainFreeRepleAllCnt(int mainArticleNo){
		return dao.MainFreeRepleAllCnt(mainArticleNo);
	}
	//메인 자유게시판 댓글 생성
	public void MainFreeRepleInsert(int mainArticleNo,MainFreeReple mainFreeReple){
		dao.incrementFreeRepleCnt(mainArticleNo);
		dao.mainFreeBoardRepleInsert(mainFreeReple);
	}
	
}
