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
	<form action="/palette/miniHome/${mini.userId }/freeUpdate/${mini.freeNo}" method="post">
		<table border="1">
			<input type="hidden" value="${mini.freeNo }" name="freeNo">
			<input type="hidden" value="${mini.userId }" name="userId">
			<tr><td>제목</td><td><input type="text" value="${mini.freeTitle}" name="freeTitle"></td></tr>
			<tr><td>내용</td><td><input type="text" value="${mini.freeContent}" name="freeContent"></td></tr>
		</table>
		<input type="submit" value="수정 완료" id="update">
	</form>
	
</body>
</html>