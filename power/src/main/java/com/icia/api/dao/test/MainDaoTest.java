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
public class MainDaoTest {
	
	@Autowired
	public MainFunctionDao dao;
	//공지글 작성(+게시글수) 테스트
	
	//@Test
	public void insertNoticeTest(){
		//System.out.println("추가 전 게시글 수 :"+ dao.mainFreeBoardCnt());
		MainFreeBoard free = new MainFreeBoard();
		free.setMainArticleTitle("21번입니다");
	//	free.setMainArticleName("스물하나입니다");
		free.setMainArticleContent("새키얌 안뇽");
		free.setUserId("sdfsdf");
		
		//dao.mainFreeBoardInsert(free);
	//	System.out.println("추가 후 게시글 수 :"+ dao.mainFreeBoardCnt());
	}
	
	//@Test
	public void cntTest(){
	//	System.out.println("추가 전 게시글 수 :"+ dao.mainFreeBoardCnt());
	}
	//@Test
	//자유게시판 상세보기
	//public void View(){
	//	C);
	//}
	//자유게시판 삭제하기
	//@Test
	public void delete(){
		//dao.mainFreeBoardDelete(6);
		//System.out.println(dao.mainFreeBoardList(1, 10));
	}
	//자유게시판 페이지
	//@Test
	public void page(){
	
	
		MainFreeBoard free = new MainFreeBoard();
		
		free.setMainArticleTitle("25번입니다");
		free.setMainArticleContent("이노무시키얌얌 안뇽");
		free.setMainArticleNo(25);
	//	dao.mainFreeBoardUpdate(free);
		
		//System.out.println("후 :" + dao.mainFreeBoardViw(25));
	}
	
		//@Test
		public void insertReple(){
		//	System.out.println("추가 전 댓글수 :"+ dao.freeRepleCnt());
			MainFreeReple free = new MainFreeReple();
			free.setMainFreeRepleNo(2);
			free.setMainArticleNo(25);
			//free.setMainFreeRepleName("ㄴㅇㄹㄴㅇㄹ짱");
			free.setMainFreeRepleContent("짱짱맨");
			
		//	dao.mainFreeBoardRepleInsert(free);
		//	System.out.println("추가 후 댓글 수 :"+ dao.freeRepleCnt());
		}
		//@Test
		public void Reple(){
			
		//	System.out.println("추가 전 댓글수 :"+ dao.freeRepleCnt());
		
		}
		@Test
		public void repleUpdate(){
			//System.out.println(dao.mainUserIdSearch(1, 10, "11"));
			//System.out.println(dao.mainUserTitleSearch(1,10,"타이틀"));
			//System.out.println(dao.mainUserTitleSearch(1, 10, "타이틀"));
			System.out.println(dao.mainCategoryList(1, 10, "r"));
		}
}
