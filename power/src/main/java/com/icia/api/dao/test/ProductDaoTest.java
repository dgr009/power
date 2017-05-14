package com.icia.api.dao.test;

import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.icia.api.dao.ProductDao;

@ContextConfiguration("dao-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ProductDaoTest {
	
	@Autowired
	private ProductDao dao;
	@Test
	public void  selectItemDetail(){
		System.out.println(dao.selectItemDetail(4));
	}
	
}
