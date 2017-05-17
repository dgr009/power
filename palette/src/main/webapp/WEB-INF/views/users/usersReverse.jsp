<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>비활성화 된 계정입니다. </h2>
<h2>다시 활성화 하시겠습니까?</h2>
<form action='/palette/users/reverse/${user.userId}' method='post'>
<button>예 </button>
]</form>
<button onclick="location.href='/palette/users/home'">아니오</button>
</body>
</html>