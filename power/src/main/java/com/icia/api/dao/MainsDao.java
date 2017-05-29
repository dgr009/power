package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class MainsDao {
	
	@Autowired
	private SqlSessionTemplate tpl;
	
	public List<ItemList> recentItemList1(){
		return tpl.selectList("api.dao.MainsDao.recentItemList1");
	}
	public List<ItemList> recentItemList2(){
		return tpl.selectList("api.dao.MainsDao.recentItemList2");
	}
	
}
