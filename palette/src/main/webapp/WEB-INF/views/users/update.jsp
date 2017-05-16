<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/palette/users/update" method="post">
	<table border="1">
		<tr><td>이름</td><td><input type='hidden' name='userName' value='${user.userName}'>${user.userName } </td></tr>
		<tr><td>아이디</td><td><input type='hidden' name='userId' value='${user.userId}'>${user.userId}</td></tr>
		<tr><td>비밀번호</td><td><input type='password' id='pwd' name='userPwd'></td></tr>
		<tr><td>비밀번호확인</td><td><input type='password' id='pwd2'></td></tr>
		<tr><td>이메일</td><td><input type='text' id='mail' name='userMail' value='${user.userMail}'></td></tr>
		<tr><td>핸드폰</td><td><input type='text' id='phone' name='userPhone' value='${user.userPhone}'></td></tr>
		<tr><td>주소</td><td><input type='text' id='address' name='userAddress' value='${user.userAddress}'></td></tr>
		<tr><td>우편번호</td><td><input type='text' id='post' name='userPost' value='${user.userPost}'></td></tr>
	</table>
	
	<button type="submit" id="update">수정완료</button>
	</form>
</body>
</html>