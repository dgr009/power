package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate tpl;
//제품등록에서 제품종류가져오기
	public List<String> productRegisterReady(String userid) {
		return tpl.selectList("api.dao.ProductDao.", userid);
	}
	public Item selectItemDetail(int itemNo){
		return tpl.selectOne("api.dao.ProductDao.selectItemDetail", itemNo);
	}
}
