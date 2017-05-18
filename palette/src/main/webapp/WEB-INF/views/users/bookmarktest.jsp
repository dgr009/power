<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
    <%Users user = (Users) session.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		$("#bookmark").on("click",function(){
			alert($("#ownerId").val() +" " + '<%=user.getUserId()%>');
			$.ajax({
				url:"/api/users/bookmark",
				type:"post",
				data : {"orderId": '<%=user.getUserId()%>', "ownerId":$("#ownerId").val() },
				dataType: 'JSON',
				complete:function(r){
					alert("성공 ????  " + r.responseText);
				}

			})
		})
		
		$("#bookmarkdelete").on("click",function(){
			alert($("#ownerId").val() +" " + '<%=user.getUserId()%>');
			$.ajax({
				url:"/api/users/bookmarkDelete",
				type:"post",
				data : {"orderId":'<%=user.getUserId()%>', "ownerId":$("#ownerId").val() },
				dataType: 'JSON',
				complete:function(r){
					alert("성공 ????  " + r.responseText);
				}

			})
		})
	})
</script>
</head>
<body>
<h1>즐겨찾기 테스트 페이지</h1>
홈페이지 주인 아이디 입력 : <input type='text' id='ownerId'><br>
<button id='bookmark'>즐겨찾기 추가</button><br>
<button id='bookmarkdelete'>즐겨찾기 삭제</button>
</body>
</html>