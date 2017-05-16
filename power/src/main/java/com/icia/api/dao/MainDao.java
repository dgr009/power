package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class MainDao {
//api.dao.MainDao
	@Autowired
	private SqlSessionTemplate tpl;
	/*---------------------------자유 게시판 ------------------------------*/
	
	//자유게시판 전체개수
	public int mainFreeBoardCnt(){
		return tpl.selectOne("api.dao.MainFreeBoardDao.mainFreeBoardCnt");
	}
	//자유게시판 페이징
	public List<MainFreeBoardList> mainFreeBoardList(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainFreeBoardDao.mainFreeBoardList",map);
	}
	//자유게시판 상세보기 
	public MainFreeBoard mainFreeBoardView(int mainArticleNo){
		return tpl.selectOne("api.dao.MainFreeBoardDao.mainFreeBoardView",mainArticleNo);
	}
	//자유게시판 조회수 증가
	public void mainFreeBoardHitsCnt(int mainArticleNo){
		tpl.update("api.dao.MainFreeBoardDao.mainFreeBoardHitsCnt",mainArticleNo);
	}
	//자유게시판 생성하기 dddd
	public int mainFreeBoardInsert(MainFreeBoard mainFreeBoard){
		return tpl.insert("api.dao.MainFreeBoardDao.mainFreeBoardInsert",mainFreeBoard);
	}
	//자유게시판 수정하기
	public void mainFreeBoardUpdate(MainFreeBoard mainFreeBoard){
		tpl.update("api.dao.MainFreeBoardDao.mainFreeBoardUpdate",mainFreeBoard);
	}
	//자유게시판 삭제하기
	public void mainFreeBoardDelete(int mainArticleNo){
		tpl.delete("api.dao.MainFreeBoardDao.mainFreeBoardDelete",mainArticleNo);
	}
	//자유게시판 댓글 생성
	public void mainFreeBoardRepleInsert(MainFreeReple mainFreeReple){
		tpl.insert("api.dao.MainFreeBoardDao.mainFreeBoardRepleInsert",mainFreeReple);
	}
	//자유게시판 댓글 개수를 1증가
	public void incrementFreeRepleCnt(int mainArticleNo){
		tpl.update("api.dao.MainFreeBoardDao.incrementFreeRepleCnt",mainArticleNo);
	}
	
	//자유게시판 댓글 수정
	public void mainFreeBoardRepleUpdate(MainFreeReple mainFreeReple){
		tpl.update("api.dao.MainFreeBoardDao.mainFreeBoardRepleUpdate",mainFreeReple);
	}
	//자유게시판 댓글 삭제
	public void mainFreeBoardRepleDelete(int mainFreeRepleNo){
		tpl.delete("api.dao.MainFreeBoardDao.mainFreeBoardRepleDelete",mainFreeRepleNo);
	}
	//자유게시판 댓글 모두 삭제
	public void mainFreeBoardRepleAllDelete(int mainArticleNo){
		tpl.delete("dai.dao.MainFreeBoardDao.mainFreeBoardAllDelete",mainArticleNo);
	}
	//자유게시판 댓글 개수를 1감소
	public void decrementMainFreeRepleCnt(int mainFreeRepleNo){
		tpl.update("api.dao.MainFreeBoardDao.decrementFreeRepleCnt",mainFreeRepleNo);
	}
	//자유게시판 댓글 개수를 1증가
	public void incrementMainFreeRepleCnt(int mainFreeRepleNo){
		tpl.update("api.dao.MainFreeBoardDao.incrementMainFreeRepleCnt",mainFreeRepleNo);
	}
	//자유게시판 전체 댓글 보기
	public List<MainFreeReple> MainFreeRepleAllCnt(int mainArticleNo){
		return tpl.selectOne("api.dao.MainFreeBoardDao.MainFreeRepleAllCnt",mainArticleNo);
	}
	//자유게시판 댓글 하나보기
	public MainFreeReple MainFreeRepleOne(int mainFreeRepleNo){
		return tpl.selectOne("api.dao.MainFreeBoardDao.MainFreeRepleOne",mainFreeRepleNo);
	}
	
	/*---------------------------공지 게시판 ------------------------------*/
	//공지게시판 전체개수
	public int mainNoticeCnt(){
		return tpl.selectOne("api.dao.MainNoticeDao.mainNoticeCnt");
	}
	//공지게시판 페이징
	public List<MainNoticeBoard> mainNoticeBoardList(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainNoticeDao.mainNoticeBoardList",map);
	}
	
	//공지게시판 상세보기
	public MainNoticeBoard mainNoticeBoardView(int mainNoticeArticleNo){
		return tpl.selectOne("api.dao.MainNoticeDao.mainFreeBoardView",mainNoticeArticleNo);
	}
	//공지게시판 생성하기
	public void mainNoticeBoardInsert(MainNoticeBoard mainNoticeBoard){
		tpl.insert("api.dao.MainNoticeDao.mainFreeBoardInsert",mainNoticeBoard);
	}
	//공지게시판 수정하기
	public void mainNoticeBoardUpdate(MainNoticeBoard mainNoticeBoard){
		tpl.update("api.dao.MainNoticeDao.mainFreeBoardUpdate",mainNoticeBoard);
	}
	//공지게시판 삭제하기
	public void mainNoticeBoardDelete(int mainNoticeArticleNo){
		tpl.delete("api.dao.MainNoticeDao.mainFreeBoardDelete",mainNoticeArticleNo);
	}	
	//공지게시판 조회수 증가
	public void mainNoticeBoardHitsCnt(int mainNoticeArticleNo){
		tpl.update("api.dao.MainNoticeBoardDao.mainNoticeBoardHitsCnt",mainNoticeArticleNo);
	}
	/*-------------------------고객센터 게시판 ------------------------------*/
	//고객센터 게시판 전체개수
	public int mainServiceCenterCnt(){
		return tpl.selectOne("api.dao.MainServiceCenter.mainServiceCenterCount");
	}
	//고객센터 게시판 페이징
	public List<ServiceCenter> mainServiceCenterList(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainServiceCenter.mainServiceCenterList",map);
	}
	//고객센터 게시판 상세보기
	public ServiceCenter mainServiceCenterView(int faqNo){
		return tpl.selectOne("api.dao.MainServiceCenter.mainServiceCenterView",faqNo);
	}
	//고객센터 게시판 생성하기
	public void mainServiceCenterInsert(ServiceCenter serviceCenter){
		tpl.insert("api.dao.MainServiceCenter.mainServiceCenterInsert",serviceCenter);
	}
	//고객센터 게시판 수정하기
	public void mainServiceCenterUpdate(ServiceCenter serviceCenter){
		tpl.update("api.dao.MainServiceCenter.mainServiceCenterUpdate",serviceCenter);
	}
	//고객센터 게시판 삭제하기
	public void mainServiceCenterDelete(int faqNo){
		tpl.delete("api.dao.MainServiceCenter.mainServiceCenterDelete",faqNo);
	}
	/*---------------------------메인 기능 ------------------------------*/
	//검색창에 상품이름으로 검색해서 상품보기
		//페이징
		public List<MainItem> mainSeartchItem(int start,int end,String itemName){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("itemName",itemName);
			return tpl.selectList("api.dao.MainFunctionDao.mainSearchItem",map);
		}
		//아이탬 게시판 전체개수
		public int mainItemCnt(){
			return tpl.selectOne("api.dao.MainFunctionDao.mainItemCnt");
		}
		//최신상품 등록순
		public List<MainItem> mainNewItem(int start,int end){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			return tpl.selectList("api.dao.MainFunctionDao.mainNewItem",map);
		}
		//베스트 상품 갖고오기
		public List<MainBestItem> mainBestItem(int start,int end){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			return tpl.selectList("api.dao.MainFunctionDao.mainBestItem",map);
		}
		
		//마감임박 상품 갖고오기(남은 재고순으로)
		public List<MainItem> mainClosingItem(int start,int end){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			return tpl.selectList("api.dao.MainFunctionDao.mainClosingItem",map);
		}
		//홈페이지  전체개수
		public int mainHomeCnt(){
			return tpl.selectOne("api.dao.MainFunctionDao.mainHomeCnt");
		}
		//최신개설 홈페이지 갖고오기
		public List<MainMiniHomePage> mainNewMiniHome(int start,int end){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			return tpl.selectList("api.dao.MainFunctionDao.mainNewMinihome",map);
		}
		//개인 홈페이지(아이디로) 검색
		public List<MainMiniHomePage> mainUserIdSearch(int start,int end,String userId){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("userId",userId);
			return tpl.selectList("api.dao.MainFunctionDao.mainUserIdSearch",map);
		}
		//개인 홈페이지(제목으로) 검색
		public List<MainMiniHomePage> mainUserTitleSearch(int start,int end,String homeTitle){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("homeTitle",homeTitle);
			return tpl.selectList("api.dao.MainFunctionDao.mainUserTitleSearch",map);
		}
		//홈페이지  전체개수
		public int mainCategoryCnt(){
			return tpl.selectOne("api.dao.MainFunctionDao.mainCategoryCnt");
		}
		//카테고리별상품조회(리스트)
		public List<MainCategoryList> mainCategoryList(int start,int end){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			return tpl.selectList("api.dao.MainFunctionDao.mainCategoryList",map);
		}
		//인기홈페이지(리스트)
			public List<MainMiniHomePage> mainRankingHome(int start,int end){
				HashMap<String,Object> map = new HashMap<String, Object>();
				map.put("start", start);
				map.put("end", end);
				return tpl.selectList("api.dao.MainFunctionDao.mainRankingHome",map);
			}
}
