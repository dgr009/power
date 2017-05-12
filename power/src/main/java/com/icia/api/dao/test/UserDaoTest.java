package com.icia.api.dao.test;

import static org.junit.Assert.*;

import java.util.*;

import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

import com.icia.api.dao.*;
import com.icia.api.vo.*;

@ContextConfiguration("dao-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserDaoTest {
	
	@Autowired
	private UsersDao dao;
	
	//@Test
	public void insertUserTest(){
		Users user = new Users();
		user.setUserAddress("asd");
		user.setUserId("asd");
		user.setUserMail("asd");
		user.setUserName("asd");
		user.setUserPhone("asd");
		user.setUserPost("asd");
		user.setUserPwd("asd");
		dao.insertUser(user);
		
	}

	//@Test
	public void hasUserIdTest(){
		System.out.println(dao.hasUserId("asd"));
		
	}
	
	//@Test
	public void findIdTest(){
		System.out.println(dao.findId("asd", "asd"));
	}
	
	//@Test
	public void findPwdTest(){
		System.out.println(dao.findPwd("asd", "asd", "asd"));
	}
	//@Test
	public void userLoginTest(){
		System.out.println(dao.userLogin("asd", "asd").toString());
	}
	//@Test
	public void bookmarkTest(){
		System.out.println(dao.bookmark("asd", "qwe"));
	}
	//@Test
	public void bookmarkDelete(){
		System.out.println(dao.bookmarkDelete("asd", "qwe"));
	}
	//@Test
	public void bookmarkListTest(){
		System.out.println(dao.bookmarkList("1", 1, 5).toString());
	}
	//@Test
	public void orderListTest(){
		System.out.println(dao.orderList("1", 1, 5).toString());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
