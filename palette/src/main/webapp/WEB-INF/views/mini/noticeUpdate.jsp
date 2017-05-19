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
	<h2>공지게시판 수정</h2>
	<form action="/palette/miniHome/${mini.userId }/noticeUpdate/${mini.noticeArticleNo.intValue()}" method="post">
		<table border="1">
			<input type="hidden" value="${mini.noticeArticleNo.intValue() }" name="noticeArticleNo">
			<input type="hidden" value="${mini.userId }" name="userId">
			<tr><td>제목</td><td><input type="text" value="${mini.noticeArticleTitle}" name="noticeArticleTitle"></td></tr>
			<tr><td>내용</td><td><input type="text" value="${mini.noticeArticleContent}" name="noticeArticleContent"></td></tr>
		</table>
		<input type="submit" value="수정 완료" id="update">
	</form>
	
</body>
</html>