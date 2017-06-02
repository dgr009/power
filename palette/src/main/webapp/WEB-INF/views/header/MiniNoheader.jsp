<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <!-- CSS FILES -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
    <link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

    <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
       <!-- ===============================헤더 시작================================-->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="hidden-xs col-lg-6 col-sm-6 top-info" style="margin-left: 70px; ">
                    	<span><a href="/palette/users/login" style="color:white"><i class="fa fa-unlock"></i>로그인</a></span>
                    	<span class="hidden-sm"><a data-toggle="modal" data-target="#registerModal" style="color:white"><i class="fa fa-user-plus"></i>회원가입</a></span>
               	 	</div>
                    	 <c:if test="${userId ne null}">
                     <div class="col-lg-5 col-sm-7 top-info clearfix">
                        
                                <form name="searchForm" action="/palette/miniHome/${userId}/productSearch"  method="get" class="search-bar">
                                    <label for="search" class="search-label">
                                        <button class="search-button" type="button"><i class="fa fa-search"></i></button>
                                        <!-- Fix the break-row-bug-->
                                        <input type="text"  id="search" name="itemName" class="search-input" onkeydown="javascript:if(event.keyCode==13){goPage('1'); return false;}">
                                    </label>
                                </form>
                          
                    </div>
                    </c:if>
                    
                </div>

            </div>
        </div>
<script src="<c:url value="/resources/js/main.js"/>"></script>