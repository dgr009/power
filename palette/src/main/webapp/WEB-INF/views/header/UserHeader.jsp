<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%Users user = (Users) session.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>유앤미 메인 페이지</title>
    <meta name="description" content="">

   <!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script type="text/javascript">
	function openHome(){
		if(<%=user.getUserIsHome()%>==1)
	    	window.open("http://localhost:8087/palette/miniHome/<%=user.getUserId()%>/main", "미니홈페이지", "width=1024, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );
		else{
			window.open("http://localhost:8087/palette/users/homeRegister", "미니홈페이지제작", "width=1024, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );	
		}
	}
	</script>
</head>

<body>
        <!-- ===============================헤더 시작================================ -->
       
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="hidden-xs col-lg-7 col-sm-5 top-info">
                        
               			 <span class="hidden-sm" style="color:white"><%=user.getUserId()%> 회원님</span>
               			  <span class="hidden-sm"style="color:white"><%=user.getUserGrade()%> 등급</span>
               			  <span class="hidden-sm"style="color:white">포인트:<%=user.getUserPoint()%>P</span>
                       	  <span class="hidden-sm"><a href="/palette/users/info" style="color:white">마이페이지</a></span>
                        <span class="hidden-sm"><a href="/palette/users/logout" style="color:white">로그아웃</a></span>
                        
                    </div>
                    
                </div>

            </div>
        </div>
        
</body>
</html>