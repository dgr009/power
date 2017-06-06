package com.icia.api.dao.test;

import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

import com.icia.api.dao.*;

@ContextConfiguration("dao-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class AdminDaoTest {
	//@Autowired
	public AdminDao dao;
	
	//회원정보 조회
		//@Test 
		public void selectss(){
			System.out.println(dao.DeleteUser("qhrals8"));
		}
}
