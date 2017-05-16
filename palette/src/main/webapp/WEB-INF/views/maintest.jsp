<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%Users user=(Users)session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
</head>
<body>
<h1>메인페이지</h1>
<% if(session.getAttribute("user")!=null){ %>
	<a href='http://localhost:8087/palette/users/logout'>로그아웃</a><br><br>
	<a href="http://localhost:8087/palette/users/info/${user.userId}">${user.userId} 개인 정보보기</a><br>
	<%} else{ %>
	<a href='http://localhost:8087/palette/users/login'>로그인</a><br><br>
	<%} %>

</body>
</html>