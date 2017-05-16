<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#find").on("click",function(){
			$("#target").html("");
			$.ajax({
				url:"/api/users/findId",
				type:"post",
				data : {"userName":$("#userName").val(), "userMail":$("#userMail").val() },
				dataType: 'JSON',
				success: function(result) {
					$("#target").html("정보와 일치하는 아이디를 찾을 수 없습니다.");
					$("#target").css("color","red");
				},
				error:function(request){
			        $("#target").html("아이디 : "+request.responseText);
			    	$("#target").css("color","green");
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
	
	<p id="target"></p>
	<button onclick="location.href='/palette/users/home'">홈으로</button>
</body>
</html>