<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%Users user1=(Users)session.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-lg-3 col-md-3 col-sm-3">

						
								
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/miniHome/UserAdmin/<%=user1.getUserId()%>/register" class="btn btn-block btn-default">상품 판매등록</a>
								</div>
									<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/miniHome/UserAdmin/<%=user1.getUserId()%>/inquiryList" class="btn btn-block btn-default">상품문의 관리</a>
								</div>
								
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/miniHome/UserAdmin/<%=user1.getUserId()%>/registerList" class="btn btn-block btn-default">내 상품조회리스트</a>
								</div>
									<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/homeUpdate" class="btn btn-block btn-default">홈페이지 수정</a>
								</div>

							</div>
</body>
</html>