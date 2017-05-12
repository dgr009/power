package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class MiniHomeBoardDao {
	
	@Autowired
	private SqlSessionTemplate tpl;
	
	//(개인)공지게시판 작성
	public void miniHomeRegisterNotice(MiniHomeNotice notice){
		tpl.insert("api.dao.MiniHomeBoardDao.miniHomeRegisterNotice",notice);
	}
	//(개인)공지게시판 수정
	public void miniHomeUpdateNotice(MiniHomeNotice notice){
		tpl.update("api.dao.MiniHomeBoardDao.miniHomeUpdateNotice",notice);
	}
	//(개인)공지게시판 삭제
	public void miniHomeDeleteNotice(int noticeArticleNo){
		tpl.delete("api.dao.MiniHomeBoardDao.miniHomeDeleteNotice",noticeArticleNo);
	}
	//(개인)공지게시판 리스트
	public List<MiniHomeNotice> miniHomeSelectNoticeList(String userId, int end,int start){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("end", end);
		map.put("start", start);		
		return tpl.selectList("api.dao.MiniHomeBoardDao.miniHomeSelectNoticeList",map);
	}
	//(개인)공지게시판 뷰
	public MiniHomeNotice miniHomeSelectNoticeView(int noticeArticleNo){
		return tpl.selectOne("api.dao.MiniHomeBoardDao.miniHomeSelectNoticeView",noticeArticleNo);
	}
	//(개인)공지게시판 총 게시글 수
	public int miniHomeNumberOfNotice(String userId){
		return tpl.selectOne("api.dao.MiniHomeBoardDao.miniHomeNumberOfNotice",userId);
	}
	//(개인)자유게시판 작성
	public void miniHomeRegisterFree(MiniHomeFree free){
		tpl.insert("api.dao.MiniHomeBoardDao.miniHomeRegisterFree",free);
	}
	//(개인)자유게시판 수정
	public void miniHomeUpdateFree(MiniHomeFree free){
		tpl.insert("api.dao.MiniHomeBoardDao.miniHomeUpdateFree",free);
	} 
	//(개인)자유게시판 삭제
	public void miniHomeDeleteFree(int freeNo){
		tpl.insert("api.dao.MiniHomeBoardDao.miniHomeDeleteFree",freeNo);
	} 
	//(개인)자유게시판 리스트
	public List<MiniHomeFree> miniHomeSelectFreeList(int start, int end, String userId){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("userId", userId);
		return tpl.selectList("api.dao.MiniHomeBoardDao.miniHomeSelectFreeList",map);
	}
	//(개인)자유게시판 뷰
	public MiniHomeFree	miniHomeSelectFreeView(int freeNo){
		return tpl.selectOne("api.dao.MiniHomeBoardDao.miniHomeSelectFreeView",freeNo);
	}
	//(개인)자유게시판 총 게시글 수
	public int miniHomeNumberOfFree(String userId){
		return tpl.selectOne("api.dao.MiniHomeBoardDao.miniHomeNumberOfFree",userId);
	}
	//(개인)자유게시판 댓글 하나 조회
	public MiniHomeFreeReple miniHomeSelectOneFreeReple(int freeRepleNo){
		return tpl.selectOne("api.dao.MiniHomeBoardDao.miniHomeSelectOneFreeReple",freeRepleNo);
	}
	//(개인)자유게시판 모든댓글 조회
	public List<MiniHomeFreeReple> miniHomeSelectAllFreeReple(int freeNo){
		return tpl.selectList("api.dao.MiniHomeBoardDao.miniHomeSelectAllFreeReple",freeNo);
	}
	//(개인)자유게시판 조회수 증가
	public void miniHomeFreeIncreaseHits(int freeNo){
		tpl.update("api.dao.MiniHomeBoardDao.miniHomeFreeIncreaseHits",freeNo);
	}
	

	
}
