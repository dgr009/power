<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/palette/users/login" method="post">
		<table>
			<tr><td>아이디</td><td><input type="text" id="userId" name="userId" placeholder="아이디"></td></tr>
			<tr><td>비밀번호</td><td><input type="text" id="userPwd" name="userPwd" placeholder="비밀번호"></td></tr>
		</table>
		<button>로그인</button>
	</form>
</body>
</html>