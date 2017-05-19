<%@page import="com.icia.palette.vo.Users"%>
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
	<h3>공지게시판 게시글</h3>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>시간</td>
			<td>작성자</td>
		</tr>
		
		<c:forEach items="${mini2.list }" var="notice">
		<tr>			
			<td>
				${notice.noticeArticleNo.intValue() }
			</td>
			<td>
				<a href="/palette/miniHome/${userId }/noticeView/${notice.noticeArticleNo.intValue()}">${notice.noticeArticleTitle }</a>
			</td>
			<td>
				${notice.noticeArticleDate }
			</td>
			<td>
				${notice.userId }
			</td>
		</tr>
		</c:forEach>

			<c:if test="${mini2.pagination.prev>0 }"><a href="/palette/miniHome/${userId}/freeList?pageNo=${mini2.pagination.prev.intValue()}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${mini2.pagination.startPage}" end="${mini2.pagination.endPage}">
				<a href="/palette/miniHome/${userId }/freeList?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${mini2.pagination.next>0 }"><a href="/palette/miniHome/${userId }/freeList?pageNo=${mini2.pagination.next.intValue()}">다음으로</a></c:if>
		
		<form>
		<input type="button" value="게시글 작성" 
		onclick="window.location.href='/palette/miniHome/${userId }/noticeRegister'" />
		</form>
</body>
</html>