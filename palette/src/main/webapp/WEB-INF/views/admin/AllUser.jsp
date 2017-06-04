<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table>
			<tbody> 
				 <c:forEach items="${result.user}" var="user">
					 <tr><td>아이디</td><td>${user.userId}</td></tr>
			      	 <tr><td>이름</td><td>${user.userName}</td></tr>
  				  </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>

