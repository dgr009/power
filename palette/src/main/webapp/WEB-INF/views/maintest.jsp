<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
</head>
<body>
<h1>메인페이지</h1>
<a href='http://localhost:8087/palette/users/login'>로그인 </a>
<a href='http://localhost:8087/palette/users/logout'> 로그아웃</a><br><br>

<a href="http://localhost:8087/palette/users/info/${user.userId}">${user.userId} 개인 정보보기</a><br>
</body>
</html>