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
	$(function(){
		alert(${reple })
	})
</script>
</head>
<body>
	<h1>회원 정보</h1>
	<form action="/palette/miniHome/${mini.free.userId }/freeUpdate/${mini.free.freeNo}" method="get">
		<table border="1">
			<tr><td>게시글번호</td><td>${mini.free.freeNo } </td></tr>
			<tr><td>제목</td><td>${mini.free.freeTitle}</td></tr>
			<tr><td>작성자</td><td>${mini.free.freeName}</td></tr>
			<tr><td>조회수</td><td>${mini.free.freeHits}</td></tr>
			<tr><td>내용</td><td>${mini.free.freeContent}</td></tr>
			<tr><td>게시시간</td><td>${mini.free.freeDate}</td></tr>
			<tr><td>아이디</td><td>${mini.free.userId}</td></tr>
			<tr><td>댓글 수</td><td>${mini.free.freeRepleCnt}</td></tr>
		</table>
		<input type="submit" value="수정">
	</form>
	<form action="/palette/miniHome/${mini.free.userId }/freeDelete/${mini.free.freeNo}" method="post">
		<input type="submit" value="삭제">
		<input type="hidden" value="${mini.userId }" name="userId" id="userId">
		<input type="hidden" value="${mini.freeNo }" name="freeNo" id="freeNo">
	</form>
	<table>
		<c:forEach items="${mini.reple }" var="reple">
			<tr>
				<td>${reple.freeRepleName }</td>
				<td>${reple.freeRepleContent }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>