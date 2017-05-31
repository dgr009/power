package com.icia.api.dao.test;

import java.sql.*;

import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

import com.icia.api.dao.*;

@ContextConfiguration("dao-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class RevenueDaoTest {
	//@Autowired
	RevenueDao dao;
	
	//@Test
	public void select(){
		System.out.println(dao.selectRevenueListByDateCnt(new Date(2017,05,15),new Date(2017,05,20)));
	}
}
