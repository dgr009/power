<%@page import="com.icia.palette.vo.Users"%>
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
/*$(function(){
	$("#join").on("click",function(e){
		e.preventDefault(); //기본 이벤트를 차단
		var formData = new FormData();
		formData.append("userId",$("#userId").val())
		formData.append("userName",$("#userName").val())
		formData.append("userPwd",$("#userPwd").val())
		formData.append("userMail",$("#userMail").val())
		formData.append("userAddress",$("#userAddress").val())
		formData.append("userPhone",$("#userPhone").val())
		formData.append("userPost",$("#userPost").val())
		
		$.ajax({
			url:"/api/users/register",
			type:"post",
			data: formData,
			dataType:"text",
			success:function(result){
				console.log(result)
			},
			processData:false,
			contentType:false
		})
	})
	
	
})*/
</script>
</head>
<body>
	<h1>회원 정보</h1>
	<table border="1">
		<tr><td>이름</td><td>${user.userName } </td></tr>
		<tr><td>아이디</td><td>${user.userId}</td></tr>
		<tr><td>이메일</td><td>${user.userMail}</td></tr>
		<tr><td>핸드폰</td><td>${user.userPhone}</td></tr>
		<tr><td>주소</td><td>${user.userAddress}</td></tr>
		<tr><td>우편번호</td><td>${user.userPost}</td></tr>
		<tr><td>포인트</td><td>${user.userPoint}</td></tr>
	</table>
	
	<button  id="update" onclick='location.href="http://localhost:8087/palette/users/update"'>개인정보 수정하기</button>
	<button  id="tradeList" onclick='location.href="http://localhost:8087/palette/users/tradeList"'>포인트 거래내역 보기</button>
	<button  id="chargePoint" onclick='location.href="http://localhost:8087/palette/users/chargePoint"'>포인트 충전하기</button>
	<button  id="refundPoint" onclick='location.href="http://localhost:8087/palette/users/refundPoint"'>포인트 환급하기</button>
	<button  id="deleteuser" onclick='location.href="http://localhost:8087/palette/users/delete"'>개인회원 비활성화</button>

</body>
</html>