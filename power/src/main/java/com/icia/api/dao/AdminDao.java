package com.icia.api.dao;


import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.icia.api.vo.*;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate tpl;	
		// 전체회원목록조회  
		public List<Users> totalUser(int start, int end) {
			Map<String, Object> map = new HashMap<String, Object>();
				map.put("start", start);
				map.put("end", end);
		        return tpl.selectList("api.dao.AdminDao.totalUser",map);
		    }
	
		// 홈페이지 개설회원 조회	
		public List<Users> FindOpenPageUser() {
			return tpl.selectList("api.dao.AdminDao.findPageUser");
			}
		
		//	회원이름별 조회
		public Users FindUserName(Map<String, Object> map){
		return tpl.selectOne("usersMapper.findUserName", map);
	}
		

		// 회원상세조회 
	  	public HashMap<String, Object> DetailUser(String userId) {
	  		return tpl.selectOne("api.dao.AdminDao.userDetail", userId);
	  	}
		// 회원삭제 
	  	public int DeleteUser(String userId) {
	  		return tpl.delete("api.dao.AdminDao.userDelete", userId); 
	  	}
		// 회원정보수정  
		public int UpdateUser(Users user) {
			return tpl.update("api.dao.AdminDao.userUpdate", user);
		}
		// 홈페이지 삭제
		public int DeleteUserPage(String userId) {
			return tpl.delete("api.dao.AdminDao.userPageDelete", userId);
		}
		// 일별매출보기   
		public List<OrderList> RevenueDayUser(OrderList orderList) {
			return tpl.selectOne("api.dao.AdminDao.userDayRevenue", orderList);
		}
		// 달별매출보기
		public List<OrderList> RevenueMonthUser(OrderList orderList) {
			return tpl.selectOne("api.dao.AdminDao.userMonthRevenue", orderList);
		}
		// 연간매출보기  
		public List<OrderList> RevenueYearUser(OrderList orderList) {
			return tpl.selectOne("api.dao.AdminDao.userYearRevenue", orderList);
		}
		// 회원별 매출보기, 합계보기 
		public List<OrderList> RevenueUserAndTotal(OrderList orderList) {
			return tpl.selectOne("api.dao.AdminDao.userAndTotalRevenue", orderList);
		}
		// 전체매출보기 
		public List<OrderList> RevenueUserTotal(OrderList orderList) {
			return tpl.selectOne("api.dao.AdminDao.userTotalRevenue", orderList);
		}
		//관리자 로그인
		public Admin adminLogin(Admin admin) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("adminId", admin.getAdminId());
			map.put("adminPwd", admin.getAdminPwd());
			return tpl.selectOne("api.dao.AdminDao.login", map);
		}
//전체회원수
		public int allUser() {
			return tpl.selectOne("api.dao.AdminDao.userCnt");
		}
}