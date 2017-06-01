package com.icia.api.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import com.google.gson.*;
import com.icia.api.dao.*;
import com.icia.api.util.*;
import com.icia.api.vo.*;

@Service
public class CustomerCenterService {
	@Autowired
	private CustomerCenterDao dao;
	//고객센터글등록
	public void customerCenterRegister(CustomerCenter c) {
		dao.customerCenterRegister(c);
	}
	//고객센터 글리스트
	@Transactional
	public String customerCenterList(int pageNo) {
		Pagination p=PagingUtil.setPageMaker(pageNo, dao.customerCenterListCnt());
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("start", p.getStartArticle());
		map.put("end", p.getEndArticle());
		Map<String, Object> result=new HashMap<String, Object>();
		result.put("pagination", p);
		result.put("result", dao.customerCenterList(map));
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(result);	
	}
	//고객센터 글업데이트폼
	public String customerCenterUpdateStart(int faqNo) {
		Map<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.customerCenterView(faqNo));
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(result);	
		}
	
	//고객센터 글업데이트
	public void customerCenterUpdate(CustomerCenter c) {
		dao.customerCenterUpdate(c);
	}
	//고객센터 글보기
	public String customerCenterView(int faqNo) {
		Map<String, Object> result=new HashMap<String, Object>();
		result.put("result", dao.customerCenterView(faqNo));
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		return gson.toJson(result);		
		}
	//고객센터 글삭제
	public void customerCenterDelete(int faqNo) {
		dao.customerCenterDelete(faqNo);
	}

}
