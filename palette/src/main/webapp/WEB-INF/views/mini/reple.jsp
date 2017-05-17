<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<h3>자유게시판 댓글</h3>
	<table>
		<tr>
			<td>댓글번호</td>
			<td>작성자</td>
			<td>내용</td>
			<td>시간</td>
			<td>게시물번호</td>
		</tr>
		
		<c:forEach items="${mini2 }" var="free">
			<tr>			
				<td>${free.freeRepleNo }</td>	
				<td>${free.freeRepleName }</td>
				<td>${free.freeRepleContent }</td>
				<td>${free.freeRepleDate }</td>
			</tr>
		</c:forEach>
</body>
</html>








