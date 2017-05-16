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
			$.ajax({
				url:"/api/users/findPwd",
				type:"post",
				data : {"userId":$("#userId").val(),"userName":$("#userName").val(),"userMail":$("#userMail").val()},
				dataType:"json",
				success:function(result) {
					if(result==0){
						$("#result").html("일치하는 정보를 찾을수 없습니다.");
						$("#result").css("color","red");
					}else{
						$("#result").html(result);
						$("#result").css("color","green");
					}
				}
			})
		})
	})
</script>
</head>
<body>
	<h2>비밀번호 찾기</h2>
	아이디 : <input type="text" id="userId" name="userId"><br>
	이름 : <input type="text" id="userName" name="userName"><br>
	이메일 : <input type="text" id="userMail" name="userMail"><br>
	<button id="find">아이디찾기</button>
	<p id="result"></p>
</body>
</html>