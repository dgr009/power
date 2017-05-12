package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

@Repository
public class MiniHomeDao {
	@Autowired
	private SqlSessionTemplate tpl;

}
