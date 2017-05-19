<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	


</head>
<body>
	<h1>회원 정보</h1>
	<form action="/palette/main/freeboard/view/${main.mainArticleNo}" method="get">
		<table border="1">
			<tr><td>게시글번호</td><td>${main.mainArticleNo} </td></tr>
			<tr><td>제목</td><td>${main.mainArticleTitle}</td></tr>
			<tr><td>작성자</td><td>${main.mainArticleName}</td></tr>
			<tr><td>조회수</td><td>${main.mainArticleHits}</td></tr>
			<tr><td>내용</td><td>${main.mainArticleContent}</td></tr>
			<tr><td>아이디</td><td>${main.userId}</td></tr>
			<tr><td>댓글 수</td><td>${main.mainArticleRepleCnt}</td></tr>
		</table>
						<button>삭제</button>
		
	</form>
</body>
</html>