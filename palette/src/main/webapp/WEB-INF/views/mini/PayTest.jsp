<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page import="com.icia.palette.vo.Users"%>
<%
	Users user = (Users) session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function(){
		var x = <%=user.getUserPoint() %>;
		var y = x-30000;
		
		$("#total").text(y);
		
		if($("#total").text()<0)
			$("#total").css("color","red");
	})
</script>
</head>
<body>
<table>
	<tr>
		<th>보유 포인트</th>
		<th>차감될 포인트</th>
		<th>결제 후 포인트</th>
	</tr>
	<tr>
		<td><%=user.getUserPoint() %></td>
		<td>30000</td>
		<td id="total"></td>
	</tr>
</table>
		<form action="/palette/miniHome/<%=user.getUserId() %>/pay" method="post">
			<input type="submit" value="결제하기">
			<input type="hidden" value="<%=user.getUserId() %>" name="userId">
		</form>
</body>
</html>