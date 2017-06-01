<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
	$(function() {
		$("#find").on("click", function() {
			$.ajax({
				url:"/api/admin/userName",
				type:"post",
				data: {"userName": $("#userName").val()},
				dataType: 'JSON',
				success: function(result) {
					alert("일치하는 아이디를 찾을 수 없습니다.")
				},
				error:function(request){
					alert("아이디: "+request.responseText);
				}
			})
		})
	})
	</script>
</head>
<body>
	<div>
		<h3>아이디 찾기</h3>
	</div>
	<div>
		<input type="text" id="userName" name="userName" placeholder="아이디">
	</div>
</body>
</html>

