<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page errorPage="error.jsp" %>
<% Users user = (Users) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>asd</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script type="text/javascript">
	
</script>
</head>
<body>
	<h2>공지게시판 뷰</h2>
	<form action="/palette/miniHome/${mini.userId }/noticeUpdate/${mini.noticeArticleNo.intValue()}" method="get">
		<table border="1">
			<tr>
				<td>번호</td>
				<td>${mini.noticeArticleNo.intValue() }</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${mini.noticeArticleTitle }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${mini.noticeArticleContent }</td>
			</tr>
			<tr>
				<td>시간</td>
				<td>${mini.noticeArticleDate }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${mini.userId }</td>
			</tr>
		</table>

		<c:set var="name" value="<%=user.getUserId()%>" />
		<c:set var="userId" value="${mini.userId }" />

		<c:if test="${name eq userId}">
			<input type="submit" value="수정">
		</c:if>

	</form>
	
	<a href="#" onClick="history.back()"><button>이전으로</button></a>
	<br>
	
	<form action="/palette/miniHome/${mini.userId }/noticeDelete/${mini.noticeArticleNo.intValue() }"method="post">
		
		<c:if test="${name eq userId}">
			<input type="submit" value="삭제">
		</c:if>

		<input type="hidden" value="${mini.userId }" name="userId" id="userId">
		<input type="hidden" value="${mini.noticeArticleNo.intValue() }"name="noticeArticleNo" id="noticeArticleNo">
	</form>
</body>
</html>

