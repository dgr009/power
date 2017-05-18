package com.icia.api.dao.test;

import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.icia.api.dao.ProductDao;
import com.icia.api.vo.*;

@ContextConfiguration("dao-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ProductDaoTest {
	
	@Autowired
	private ProductDao dao;
	//@Test
	public void  selectItemDetail(){
		System.out.println(dao.selectItemDetail(4));
	}
	//@Test
	public void insertItem(){
		Item i=new Item();
		i.setItemContent("수민");
		i.setItemInven(5);
		i.setItemName("나이키");
		i.setItemPrice(5000);
		i.setItemSize(5);
		i.setSmallKind("상의");
		i.setUserId("1");
		dao.insertItem(i);
	}
	//@Test
	public void insertOption(){
		 ItemOption i=new ItemOption();
		 i.setOptionName("105사이즈");
		 i.setItemNo(1);
		 dao.insertOption(i);
	
	}

}
