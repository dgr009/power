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
</script>
</head>
<body>
	<h3>자유게시판 게시글</h3>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>내용</td>
			<td>게시시간</td>
			<td>댓글 수</td>
		
		</tr>
		<c:forEach items="${main.list }" var="main">
		<tr>			
			<td>
				${main.mainArticleNo }
			</td>
			<td>
				<a href="/palette/main/noticeboard/view/${main.mainNoticeArticleTitle}">${main.mainNoticeArticleTitle }</a>
			</td>
			<td>
				${main.mainArticleContent }
			</td>
			<td>
				${main.mainArticleDate }
			</td>
			
			<td>
				${main.mainArticleHits }
			</td>

		</tr>
		</c:forEach>

			<c:if test="${main.pagination.prev>0 }"><a href="/palette/main/noticeboard/list?pageNo=${main.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${main.pagination.startPage}" end="${main.pagination.endPage}">
				<a href="/palette/main/noticeboard/list?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${main.pagination.next>0 }"><a href="/palette/main/noticeboard/list?pageNo=${main.pagination.next}">다음으로</a></c:if>
		
	<!-- 	<form> 		<input type="button" value="게시글 작성" 
		onclick="window.location.href='/palette/main/${userId }/freeRegister'" />
		</form> -->
</body>
</html>








