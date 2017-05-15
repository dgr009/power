package com.icia.api.dao.test;

import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

import com.icia.api.dao.*;
import com.icia.api.vo.*;

@ContextConfiguration("dao-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class MiniHomeDaoTest {
	
	@Autowired
	public MiniHomeBoardDao dao;
	
	//공지글 작성(+게시글수) 테스트
	//@Test
	public void insertNoticeTest(){
		System.out.println("추가 전 게시글 수 :"+dao.miniHomeNumberOfNotice("qhrals8"));
		MiniHomeNotice notice = new MiniHomeNotice();
		notice.setNoticeArticleNo(3);
		notice.setNoticeArticleTitle("가입");
		notice.setNoticeArticleContent("ㅎㅇㅎㅇ");
		notice.setUserId("qhrals8");
		dao.miniHomeRegisterNotice(notice);
		System.out.println("추가 후 게시글 수 :"+dao.miniHomeNumberOfNotice("qhrals8"));
	}
	//공지 리스트 테스트
	//@Test
	public void selectNoticeListTest(){
		System.out.println(dao.miniHomeSelectNoticeList("qhrals8", 10, 1));
	}
	
	//자유리스트 테스트
	//@Test
	public void selectFreeListTest(){
		System.out.println(dao.miniHomeSelectFreeList(1, 10, "qhrals8").size());
	}
	//자유 뷰 테스트
	//@Test
	public void selectFreeViewTest(){
		System.out.println(dao.miniHomeSelectFreeView(2));
	}
	//자유 댓글 추가
	//@Test
	public void insertFreeReple(){
		MiniHomeFreeReple reple = new MiniHomeFreeReple();
		reple.setFreeRepleNo(2);
		reple.setFreeRepleName("복민");
		reple.setFreeRepleContent("gdgdgdg");
		reple.setFreeNo(2);
		dao.miniHomeRegisterFreeReple(reple);
	}
	//댓글 삭제
	//@Test
	public void deleteFreeReple(){
		dao.miniHomeDeleteFreeReple(31);
	}
	
	
	
	
	
	
	
	
	
}
