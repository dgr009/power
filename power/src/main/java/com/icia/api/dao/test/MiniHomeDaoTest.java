package com.icia.api.dao.test;

import org.junit.*;
import org.junit.runner.*;
import org.slf4j.*;
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
	
	@Autowired
	public MiniHomeDao dao2;
	
	private Logger logger = LoggerFactory.getLogger(MiniHomeDaoTest.class);
	
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
	//홈페이지 개설
	//@Test
	public void insertHome(){
		MiniHome home = new MiniHome();
		home.setUserId("dddd");
		home.setHomeTitle("홈페이지 이름");
		home.setHomeImg("이미지 경로");
		home.setHomeDesign(1);
		home.setHomeIntroduce("소개글");
		dao2.miniHomeRegisterHomepage(home);
	}
	//활성화기록 생성
	//@Test
	public void insertActiveStatement(){
		ActiveDate date = new ActiveDate();
		date.setActiveNo(6);
		date.setUserId("aaaa");
		dao2.miniHomeInsertActiveStatement(date);
	}
	
//	//회원 포인트 차감
//	//@Test
//	public void decreasePoint(){
//		Users user = new Users();
//		int price = 10;
//		dao2.miniHomeDecreaseUsersPoint(price, "qhrals8");
//	}
	//회원 홈페이지 활성화
	//@Test
	public void activateHome(){
		dao2.miniHomeActivateUser("qhrals8");
	}
	
	//회원정보 조회
	//@Test
	public void selectss(){
		System.out.println(dao2.miniHomeSelectSellerInformation("qhrals8"));
	}
	
	@Test
	public void selectAllReple(){
		System.out.println(dao.miniHomeSelectAllFreeReple(2));
	}
	
	
	
	
	
	
	
	
	
	
}
