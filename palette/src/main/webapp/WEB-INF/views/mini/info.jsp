<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>회원 정보</h1>
	<form action="/palette/miniHome/${mini.userId }/freeUpdate/${mini.freeNo}" method="get">
		<table border="1">
			<tr><td>게시글번호</td><td>${mini.freeNo } </td></tr>
			<tr><td>제목</td><td>${mini.freeTitle}</td></tr>
			<tr><td>작성자</td><td>${mini.freeName}</td></tr>
			<tr><td>조회수</td><td>${mini.freeHits}</td></tr>
			<tr><td>내용</td><td>${mini.freeContent}</td></tr>
			<tr><td>게시시간</td><td>${mini.freeDate}</td></tr>
			<tr><td>아이디</td><td>${mini.userId}</td></tr>
			<tr><td>댓글 수</td><td>${mini.freeRepleCnt}</td></tr>
		</table>
		<input type="submit" value="수정">
	</form>
	
</body>
</html>