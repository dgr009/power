package com.icia.palette.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;


@Repository
public class MiniHomeBoardDao {
	
	@Autowired
	private SqlSessionTemplate tpl;
	
	
	//자유 게시글 번호 찾기
	public int seq(){
		return tpl.selectOne("api.dao.MiniHomeBoardDao.seq");
	}
	
	
	
	
	
	
	
	

	
}
