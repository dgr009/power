<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#find").on("click",function(){
			$.ajax({
				url:"/api/users/findId",
				type:"post",
				data : {"userName":$("#userName").val(),"userMail":$("#userMail").val()},
				dataType:"json",
				success:function(result) {
					alert("asd");
					$("#target").html(result)
				}
			})
			
		})
	})
</script>
</head>
<body>
	<h2>아이디 찾기</h2>
	이름 : <input type="text" id="userName" name="userName"><br>
	이메일 : <input type="text" id="userMail" name="userMail"><br>
	<button id="find">아이디찾기</button>
	
	<p id="target">asd</p>
</body>
</html>