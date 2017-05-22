<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%Users user = (Users) session.getAttribute("user"); %>
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
	    	window.open("http://localhost:8087/palette/miniHome/<%=user.getUserId()%>/main","_blank");
		else{
			window.open("http://localhost:8087/palette/users/homeRegister","_blank");	
		}
	}
	
	function openHomeUp(){
		if(<%=user.getUserIsHome()%>==1)
	    	window.open("http://localhost:8087/palette/users/homeUpdate","_blank");
		else{
			window.open("http://localhost:8087/palette/users/homeRegister","_blank");	
		}
	}
	</script>

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
       