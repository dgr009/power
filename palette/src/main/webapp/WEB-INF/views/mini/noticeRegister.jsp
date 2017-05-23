<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.icia.palette.vo.Users"%>
<%@ page errorPage="error.jsp" %>	<!-- 세션값 없을 시 -->
<% Users user = (Users) session.getAttribute("user"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>asd</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
<script type="text/javascript">
		var link = document.location.href; 
		var sss = link.split('/');
		var idid=sss[5];
		var id='<%=user.getUserId() %>'
		
		
		//공지글 작성에 url만 쳐서 들어올경우
		if(id === idid){
			alert("환영합니다")
			
			 
		}else{
			 alert("권한이 없습니다")
			 var url = "http://localhost:8087/palette/users/login";    
			 $(location).attr('href',url);
		}
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








