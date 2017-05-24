<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Score</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#check").on("click",function(){
		$.ajax({
			url:"/palette/users/score",
			type:"post",
			data:{"orderNo":"${orderNo}"},
			dataType:"JSON",
			complete:function(){
				window.open("http://localhost:8087/palette/users/score?orderNo="+$(this).data("ono"),"Score","scrollbars=yes,toolbar=yes,location=yes,resizable=yes,status=yes,menubar=yes,resizable=yes,width=400,height=400,left=300,top=300");		
			}	
		})
	})
})
</script>
<body>
	<h1>상품의 점수를 주세요~</h1>
		<input type="checkbox" name="score" value="1"> 1점  
		<input type="checkbox" name="score" value="2"> 2점 
		<input type="checkbox" name="score" value="3" checked="checked"> 3점 
		<input type="checkbox" name="score" value="4"> 4점 
		<input type="checkbox" name="score" value="5"> 5점<br>
		<button id="check">평가하기</button> 
	
</body>
</html>