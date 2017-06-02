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
	public int mainFreeBoardUpdate(MainFreeBoard mainFreeBoard){
		return tpl.update("api.dao.MainFreeBoardDao.mainFreeBoardUpdate",mainFreeBoard);
	}
	//자유게시판 삭제하기
	public int mainFreeBoardDelete(int mainArticleNo){
		return tpl.delete("api.dao.MainFreeBoardDao.mainFreeBoardDelete",mainArticleNo);
	}
	//자유게시판 댓글 생성
	public void mainFreeBoardRepleInsert(MainFreeReple mainFreeReple){
		tpl.insert("api.dao.MainFreeBoardDao.mainFreeBoardRepleInsert",mainFreeReple);
	}
	//자유게시판 댓글 개수를 1증가
	public void incrementFreeRepleCnt(int mainArticleNo){
		tpl.update("api.dao.MainFreeBoardDao.incrementMainFreeRepleCnt",mainArticleNo);
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
		tpl.update("api.dao.MainFreeBoardDao.decrementMainFreeRepleCnt",mainFreeRepleNo);
	}
	//자유게시판 댓글 개수를 1증가
	public void incrementMainFreeRepleCnt(int mainFreeRepleNo){
		tpl.update("api.dao.MainFreeBoardDao.incrementMainFreeRepleCnt",mainFreeRepleNo);
	}
	//자유게시판 전체 댓글 보기
	public List<MainFreeReple> mainFreeRepleAllCnt(int mainArticleNo){
		return tpl.selectList("api.dao.MainFreeBoardDao.mainFreeRepleAllCnt",mainArticleNo);
	}
	public int mainRepleCnt(int mainFreeRepleNo){
		return tpl.selectOne("api.dao.MainFreeBoardDao.mainRepleCnt",mainFreeRepleNo);
	}
	
}
