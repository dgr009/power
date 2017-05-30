package com.icia.api.dao;

import java.sql.Date;
import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class RevenueDao {

	@Autowired
	private SqlSessionTemplate tpl;
	
	// 기간별 매출 내역 가져오기
	public List<ItemList> selectRevenueListByDate(Date startDate,Date endDate,int start, int end){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("startDate", startDate);
		map.put("end", end);
		map.put("endDate", endDate);
		return tpl.selectList("api.dao.RevenueDao.selectItemListOrderByScore",map);
	}
}
