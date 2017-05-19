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
	<h2>게시글 등록</h2>
	<form action="/palette/main/noticeboard/register" method="post">
		<input type="text" name="mainNoticeArticleTitle" placeholder="제목"><br>
		<input type="text" name="mainNoticeArticleContent" placeholder="내용"><br>
		<input type="submit" value="생성">
	</form>
		</body>
</html>