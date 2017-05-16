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
		<tr><td>게시글번호</td><td>${mini.freeNo } </td></tr>
		<tr><td>제목</td><td>${mini.freeTitle}</td></tr>
		<tr><td>작성자</td><td>${mini.freeName}</td></tr>
		<tr><td>조회수</td><td>${mini.freeHits}</td></tr>
		<tr><td>내용</td><td>${mini.freeContent}</td></tr>
		<tr><td>게시시간</td><td>${mini.freeDate}</td></tr>
		<tr><td>아이디</td><td>${mini.userId}</td></tr>
		<tr><td>댓글 수</td><td>${mini.freeRepleCnt}</td></tr>
	</table>
	
	</form>
</body>
</html>