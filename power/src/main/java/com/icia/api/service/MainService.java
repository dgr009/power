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
		int mainItemCnt = dao.mainItemCnt();
		Pagination pagination = PagingUtil.setPageMaker(pageNo, mainItemCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagination", pagination);
		map.put("list",dao.mainSeartchItem(pagination.getStartArticle(),pagination.getEndArticle(),itemName));
		return map;
	}
	
	
	//최신상품 등록순
		public HashMap<String, Object> mainNewItem(int pageNo){
			int mainItemCnt = dao.mainItemCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainItemCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainNewItem(pagination.getStartArticle(),pagination.getEndArticle()));
			return map;
		}
		
		
		//베스트 상품 리스트
		public HashMap<String, Object> mainBestItem(int pageNo,String itemName){
			int mainItemCnt = dao.mainItemCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainItemCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainBestItem(pagination.getStartArticle(),pagination.getEndArticle()));
			return map;
		}
		
		
		//마감임박 상품 갖고오기(남은 재고순)
		public HashMap<String, Object> mainClosingItem(int pageNo){
			int mainItemCnt = dao.mainItemCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainItemCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainBestItem(pagination.getStartArticle(),pagination.getEndArticle()));
			return map;
		}
		
		
		//최신개설 홈페이지 갖고오기
		public HashMap<String, Object> mainNewMiniHome(int pageNo){
			int mainItemCnt = dao.mainItemCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainItemCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainNewMiniHome(pagination.getStartArticle(),pagination.getEndArticle()));
			return map;
		}
		//개인 홈페이지 아이디로 검색
		public HashMap<String, Object> mainUserIdSearch(int pageNo,String userId){
			int mainHomeCnt = dao.mainHomeCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainHomeCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainUserIdSearch(pagination.getStartArticle(),pagination.getEndArticle(),userId));
			return map;
		}		
		//개인 홈페이지 제목으로 검색
		public HashMap<String, Object> mainUserTitleSearch(int pageNo,String userTitle){
			int mainHomeCnt = dao.mainHomeCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainHomeCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainUserTitleSearch(pagination.getStartArticle(),pagination.getEndArticle(),userTitle));
			return map;
		}		
		//카테고리별 리스트 상품조회
		public HashMap<String, Object> mainCategoryList(int pageNo){
			int mainCategoryCnt = dao.mainCategoryCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainCategoryCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainCategoryList(pagination.getStartArticle(),pagination.getEndArticle()));
			return map;
		}
		//인기 홈페이지 제목으로 검색
		public HashMap<String, Object> mainRankingHome(int pageNo){
			int mainHomeCnt = dao.mainHomeCnt();
			Pagination pagination = PagingUtil.setPageMaker(pageNo, mainHomeCnt);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pagination", pagination);
			map.put("list",dao.mainRankingHome(pagination.getStartArticle(),pagination.getEndArticle()));
			return map;
		}
}
