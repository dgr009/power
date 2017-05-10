package com.icia.palette.dao;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

@Repository
public class ProductDao {
	@Autowired
 private SqlSessionTemplate tpl;
 
}
