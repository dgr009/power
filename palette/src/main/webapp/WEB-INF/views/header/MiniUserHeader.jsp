<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%Users user = (Users) session.getAttribute("user"); %>
   <!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">

	function openHome(){
		if(<%=user.getUserIsHome()%>==1)
	    	window.open("/palette/miniHome/<%=user.getUserId()%>/main","_blank");
		else{
			window.open("/palette/users/homeRegister","_blank");	
		}
	}
	
	function openHomeUp(){
		if(<%=user.getUserIsHome()%>==1)
	    	window.open("/palette/users/homeUpdate","_blank");
		else{
			window.open("/palette/users/homeRegister","_blank");	
		}
	}
	function openHomeAd(){
		if(<%=user.getUserIsHome()%>==1)
	    	window.open("/palette/miniHome/UserAdmin/<%=user.getUserId()%>/register","_blank");
		else{
			window.open("/palette/users/homeRegister","_blank");	
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
                        
                      </div>
                    <div class="hidden-xs col-lg-5 col-sm-7 top-info" style="text-align: right;">
                    	<span class="hidden-sm"><a href="/palette/users/info" style="color:white">마이페이지</a></span>
                       	  <span class="hidden-sm"><a href="#" onclick="openHomeAd();" style="color:white">관리페이지</a></span>
                        <span class="hidden-sm"><a href="/palette/users/logout" style="color:white">로그아웃</a></span>
                         
                                <form name="searchForm" action="/palette/miniHome/${userId}/productSearch"  method="get" class="search-bar">
                                    <label for="search" class="search-label">
                                        <button class="search-button" type="button"><i class="fa fa-search"></i></button>
                                        <!-- Fix the break-row-bug-->
                                        <input type="text"  id="search" name="itemName" class="search-input" onkeydown="javascript:if(event.keyCode==13){goPage('1'); return false;}">
                                    </label>
                                </form>
                        
 					</div>
                </div>

            </div>
        </div>
<script src="<c:url value="/resources/js/main.js"/>"></script>