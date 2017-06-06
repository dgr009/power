<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html class="no-js" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
<link rel="stylesheet" href="<c:url value="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"/>" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
	<div>
		<p>회원 이름 : <input type="text" id="userName" name="useName"></p>
	</div>
	<div>
				<table class="table table-striped table-hover" >
                    <thead>
	                    <tr>
	                        <th>회원 이름</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>주소</th>
							<th>홈페이지 개설여부</th>
	                    </tr>
                    </thead>
                    <tbody id=userList>
							<tr>
							<td>${user.userName }</td>
							<td>${user.userId }</td>
							<td>${user.userPwd }</td>
							<td>${user.userAddress }</td>
							<td>${user.userIsHome }</td>
							</tr>
                    </tbody>
                </table>
	</div>
</body>
</html>

