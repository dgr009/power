<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>진짜로 탈퇴를 원하십니까?</h1>
	<form action="/palette/users/delete" method="post">
		<button>탈퇴합니다!</button>
	</form>
	<button onclick="location.href='/palette/users/home'">아니오</button>
</body>
</html>