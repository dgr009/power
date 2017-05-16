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
		return dao.mainFreeBoardView(mainArticleNo);
		
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
	@Transactional
	public void MainFreeRepleInsert(int mainFreeRepleNo,MainFreeReple mainFreeReple){
		dao.incrementFreeRepleCnt(mainFreeRepleNo);
		dao.mainFreeBoardRepleInsert(mainFreeReple);
	}
	//메인 자유게시판 댓글 수정
	public void MainFreeRepleUpdate(MainFreeReple mainFreeReple){
		dao.mainFreeBoardRepleUpdate(mainFreeReple);
	}
	//자유게시판 댓글 삭제
	@Transactional
	public void mainFreeRepleDelete(int mainArticleNo, int mainFreeRepleNo){
		dao.decrementMainFreeRepleCnt(mainArticleNo);
		dao.mainFreeBoardRepleDelete(mainFreeRepleNo);
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
	
	/*---------------------------공지 게시판 ------------------------------*/
	
	//메인 공지게시판 페이징
	public HashMap<String, Object> MainNoticeBoardList(int pageNo){
		int mainNoticeCnt = dao.mainNoticeCnt();
		Pagination pagination = PagingUtil.setPageMaker(pageNo, mainNoticeCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.mainNoticeBoardList(pagination.getStartArticle(),pagination.getEndArticle()));
		return map;
	}
	//메인 공지게시판 작성
	public void mainNoticeInsert(MainNoticeBoard mainNoticeArticleBoard){
		dao.mainNoticeBoardInsert(mainNoticeArticleBoard);
	}
	//메인 공지게시판 수정
	public void mainNoticeBoardUpdate(MainNoticeBoard mainNoticeArticleBoard){
		dao.mainNoticeBoardUpdate(mainNoticeArticleBoard);
	}
	//메인 공지게시판 삭제
	public void mainNoticeBoardDalete(int mainNoticeArticleNo){
		dao.mainNoticeBoardDelete(mainNoticeArticleNo);
	}
	//메인 공지게시판 뷰
	@Transactional
	public MainNoticeBoard mainNoticeBoardView(int mainNoticeArticleNo){
		dao.mainNoticeBoardHitsCnt(mainNoticeArticleNo);
		return dao.mainNoticeBoardView(mainNoticeArticleNo);
			
	}
	/*-------------------------고객센터 게시판 ------------------------------*/
	//메인 고객센터 게시판 페이징
	public HashMap<String, Object> MainServiceCenterList(int pageNo){
		int mainServiceCenterCnt = dao.mainServiceCenterCnt();
		Pagination pagination = PagingUtil.setPageMaker(pageNo, mainServiceCenterCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.mainServiceCenterList(pagination.getStartArticle(),pagination.getEndArticle()));
		return map;
	}
	//메인 고객센터 게시판 작성
	public void mainServiceCenterInsert(ServiceCenter serviceCenter){
		dao.mainServiceCenterInsert(serviceCenter);
	}
	//메인 고객센터 게시판 수정
	public void mainServiceCenterUpdate(ServiceCenter serviceCenter){
		dao.mainServiceCenterUpdate(serviceCenter);
	}
	//메인 고객센 게시판 삭제
	public void mainServiceCenterDelete(int faqNo){
		dao.mainServiceCenterDelete(faqNo);
	}
	//메인 고객센터 게시판 뷰
	public ServiceCenter mainServiceCenterView(int faqNo){
		return dao.mainServiceCenterView(faqNo);
	}	
	/*-------------------------메인 기능 ------------------------------*/
	
	//검색창에 상품이름으로 검색해서 상품보기
	public HashMap<String, Object> mainSearchItem(int pageNo,String itemName){
		Pagination pagination = PagingUtil.setPageMaker(pageNo, mainServiceCenterCnt);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list", dao.mainSeartchItem(pagination.getStartArticle(),itemName));
		return map;
	}
	
}
