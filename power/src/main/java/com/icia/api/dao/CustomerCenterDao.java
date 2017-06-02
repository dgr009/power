package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class CustomerCenterDao {
	@Autowired
	private SqlSessionTemplate tpl;
	//고객게시판 글등록
	public void customerCenterRegister(CustomerCenter c) {
		tpl.insert("api.dao.MainServiceCenter.mainServiceCenterInsert", c);
	}
	//고객게시판 글개수
	public int customerCenterListCnt() {
		return tpl.selectOne("api.dao.MainServiceCenter.mainServiceCenterCount");
	}
	//고객게시판 리스트
	public List<CustomerCenter> customerCenterList(Map<String, Object> map) {
		return tpl.selectList("api.dao.MainServiceCenter.mainServiceCenterList",map);
	}
	//고객게시판상세보기
	public CustomerCenter customerCenterView(int faqNo) {
		return tpl.selectOne("api.dao.MainServiceCenter.mainServiceCenterView", faqNo);
	}
	//고객게시판업데이트
	public void customerCenterUpdate(CustomerCenter c) {
		tpl.update("api.dao.MainServiceCenter.mainServiceCenterUpdate", c);
	}
	//고객게시판 글삭제
	public void customerCenterDelete(int faqNo) {
		tpl.delete("api.dao.MainServiceCenter.mainServiceCenterDelete", faqNo);
	}
	//공지사항 등록
	public void noticeRegister(MainNotice m) {
		tpl.insert("api.dao.MainServiceCenter.noticeRegister", m);
	}
	//공지사항리스트개수
	public int noticeListCnt() {
		return tpl.selectOne("api.dao.MainServiceCenter.noticeListCnt");
	}
	//공지사항리스트
	public List<MainNotice> noticeList(Map<String, Object> map) {
		
		return tpl.selectList("api.dao.MainServiceCenter.noticeList",map);
	}
	//공지사항글보기
	public MainNotice noticeView(int mainNoticeArticleNo) {
		return tpl.selectOne("api.dao.MainServiceCenter.noticeView", mainNoticeArticleNo);
	}
	//공지사항삭제
	public void noticeDelete(int mainNoticeArticleNo) {
		tpl.delete("api.dao.MainServiceCenter.noticeDelete", mainNoticeArticleNo);
	}
	//공지사항업데이트
	public void noticeUpdate(MainNotice m) {
		tpl.update("api.dao.MainServiceCenter.noticeUpdate", m);
	}
	//공지사항조회수증가
	public void noticeViewHits(int mainNoticeArticleNo) {
		tpl.update("api.dao.MainServiceCenter.noticeViewCnt", mainNoticeArticleNo);
	}

	
}
