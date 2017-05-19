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
	<form action="/palette/main/noticeboard/view/${main.mainNoticeArticleNo}" method="get">
		<table border="1">
			<tr><td>게시글번호</td><td>${main.mainNoticeArticleNo} </td></tr>
			<tr><td>제목</td><td>${main.mainNoticeArticleTitle}</td></tr>
			<tr><td>내용</td><td>${main.mainNoticeArticleContent}</td></tr>
			<tr><td>날짜</td><td>${main.mainNoticeArticleDate}</td></tr>
			<tr><td>조회수</td><td>${main.mainNoticeArticleHits}</td></tr>
		</table>
						<button>삭제</button>
		
	</form>
</body>
</html>