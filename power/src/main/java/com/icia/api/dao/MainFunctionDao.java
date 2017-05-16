package com.icia.api.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;
@Repository
public class MainFunctionDao {
	@Autowired
	private SqlSessionTemplate tpl;
	
	//검색창에 상품이름으로 검색해서 상품보기
	//페이징
	public List<MainItem> mainSeartchItem(int start,int end,String itemName){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("itemName",itemName);
		return tpl.selectList("api.dao.MainFunctionDao.mainSearchItem",map);
	}
	//최신상품 등록순
	public List<MainItem> mainNewItem(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainFunctionDao.mainNewItem",map);
	}
	//베스트 상품 갖고오기
	public List<MainBestItem> mainBestItem(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainFunctionDao.mainBestItem",map);
	}
	
	//마감임박 상품 갖고오기(남은 재고순으로)
	public List<MainItem> mainClosingItem(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainFunctionDao.mainClosingItem",map);
	}
	//최신개설 홈페이지 갖고오기
	public List<MainMiniHomePage> mainNewMinihome(int start,int end){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return tpl.selectList("api.dao.MainFunctionDao.mainNewMinihome",map);
	}
	//개인 홈페이지(아이디로) 검색
	public List<MainMiniHomePage> mainUserIdSearch(int start,int end,String userId){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("userId",userId);
		return tpl.selectList("api.dao.MainFunctionDao.mainUserIdSearch",map);
	}
	//개인 홈페이지(제목으로) 검색
	public List<MainMiniHomePage> mainUserTitleSearch(int start,int end,String homeTitle){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("homeTitle",homeTitle);
		return tpl.selectList("api.dao.MainFunctionDao.mainUserTitleSearch",map);
	}
	//카테고리별상품조회(리스트)
	public List<MainCategoryList> mainCategoryList(int start,int end,String samllKind){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("samllKind",samllKind);
		return tpl.selectList("api.dao.MainFunctionDao.mainCategoryList",map);
	}
	//인기홈페이지(리스트)
		public List<MainMiniHomePage> mainRankingHome(int start,int end){
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			return tpl.selectList("api.dao.MainFunctionDao.mainRankingHome",map);
		}
		
	
	
}
