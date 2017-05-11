package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class UsersDao {
//api.dao.UsersDao
	@Autowired
	private SqlSessionTemplate tpl;
	
	public void insertUser(Users user){
		tpl.insert("api.dao.UsersDao.usersRegister",user);
	}
	public int hasUserId(String userId){
		return tpl.selectOne("api.dao.UsersDao.usersHasId",userId);
	}
	public String FindId(Map<String,String> map){
		return tpl.selectOne("api.dao.UsersDao.usersFindId",map);
	}
	public String FindPwd(Map<String,String> map){
		return tpl.selectOne("api.dao.UsersDao.usersFindPwd", map);
	}
	public Users userLogin(Map<String,String> map){
		return tpl.selectOne("api.dao.UsersDao.usersLogin", map);
	}
	
	
}
