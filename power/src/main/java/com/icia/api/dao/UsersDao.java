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
	
	//회원가입
	public int insertUser(Users user){
		return tpl.insert("api.dao.UsersDao.usersRegister",user);
	}
	//아이디 중복확인
	public int hasUserId(String userId){
		return tpl.selectOne("api.dao.UsersDao.usersHasId",userId);
	}
	//아이디 찾기
	public String FindId(String userName,String userMail){
		Map<String,String> map = new HashMap<String,String>();
		map.put("userName", userName);
		map.put("userMail", userMail);
		return tpl.selectOne("api.dao.UsersDao.usersFindId",map);
	}
	
	//비밀번호 찾기
	public String FindPwd(String userId,String userName,String userMail){
		Map<String,String> map = new HashMap<String,String>();
		map.put("userId", userId);
		map.put("userName", userName);
		map.put("userMail", userMail);
		return tpl.selectOne("api.dao.UsersDao.usersFindPwd", map);
	}
	//로그인
	public Users userLogin(String userId, String userPwd){
		Map<String,String> map = new HashMap<String,String>();
		map.put("userId", userId);
		map.put("userPwd", userPwd);
		return tpl.selectOne("api.dao.UsersDao.usersLogin", map);
	}
	//북마크(즐겨찾기) 추가
	public int bookmark(String orderId,String ownerId){
		Map<String,String> map = new HashMap<String,String>();
		map.put("orderId", orderId);
		map.put("ownerId", ownerId);
		return tpl.insert("api.dao.UsersDao.usersBookmark",map);
	}
	//북마크(즐겨찾기) 해제
	public int bookmarkDelete(String orderId,String ownerId){
		Map<String,String> map = new HashMap<String,String>();
		map.put("orderId", orderId);
		map.put("ownerId", ownerId);
		return tpl.delete("api.dao.UsersDao.usersBookmarkDelete",map);
	}
	//북마크(즐겨찾기) 목록
	public List<BookmarkList> bookmarkList(String orderId,int start,int end){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("orderId", orderId);
		List<BookmarkList> list = tpl.selectList("api.dao.UsersDao.usersBookmarkList",map);
		return list;
	}
	
	
	public void main(){
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
