<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<h2>게시글 등록</h2>
	<form  action="/palette/miniHome/${homeId }/noticeRegister" method="post">
		<input type="text" name=noticeArticleTitle id="noticeArticleTitle" placeholder="제목"><br>
		<input type="text" name="noticeArticleContent" id="noticeArticleContent" placeholder="내용"><br>
		<input type="hidden" name="userId" id="userId" value="${userId}"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>








