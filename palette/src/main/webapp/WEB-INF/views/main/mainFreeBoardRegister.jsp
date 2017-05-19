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
	<form action="/palette/main/freeboard/register" method="post">
		<input type="text" name="mainArticleTitle" placeholder="제목"><br>
		<input type="text" name="mainArticleName" value="금명짜응"><br>
		<input type="text" name="mainArticleContent" placeholder="내용"><br>
		<input type="hidden" name="userId" value="${userId }"><br>
		<input type="submit" value="가입">
	</form>
		</body>
</html>