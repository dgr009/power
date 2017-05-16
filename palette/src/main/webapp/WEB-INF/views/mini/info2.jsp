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
	<h3>자유게시판 게시글</h3>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>이름</td>
			<td>조회수</td>
			<td>게시시간</td>
			<td>아이디</td>
			<td>댓글 수</td>
		</tr>
		<c:forEach items="${mini2.list }" var="free">
		<tr>			
			<td>
				${free.freeNo }
			</td>
			<td>
				<a href="/palette/miniHome/${userId }/freeView/${free.freeNo}">${free.freeTitle }</a>
			</td>
			<td>
				${free.freeName }
			</td>
			<td>
				${free.freeHits }
			</td>
			<td>
				${free.freeDate }
			</td>
			<td>
				${free.userId }
			</td>
			<td>
				${free.freeRepleCnt }
			</td>	
		</tr>
		</c:forEach>

			<c:if test="${mini2.pagination.prev>0 }"><a href="/palette/miniHome/${userId }/freeList?pageNo=${mini2.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${mini2.pagination.startPage}" end="${mini2.pagination.endPage}">
				<a href="/palette/miniHome/${userId }/freeList?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${mini2.pagination.next>0 }"><a href="/palette/miniHome/${userId }/freeList?pageNo=${mini2.pagination.next}">다음으로</a></c:if>
		
		<form>
		<input type="button" value="게시글 작성" 
		onclick="window.location.href='/palette/miniHome/${userId }/freeRegister'" />
		</form>
</body>
</html>








