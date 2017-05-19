<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>아이디 찾기</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />
	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

.name {
	text-align: center;
	padding-left: 200px;
	padding-right: 200px;
}

.well {
    min-height: 360px;
    padding : 0;
    padding-left: 50px;
    }
    tr{
    	font-size: 1.1em;
    	height: 28px;
    	line-height: 28px;
    }
    
    .form-control{
    height: 20px;
    	line-height: 20px;
    	
    }
       footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(function(){
	$("#find").on("click",function(){
		$.ajax({
			url:"/api/users/findPwd",
			type:"post",
			data : {"userId":$("#userId").val(),"userName":$("#userName").val(), "userMail":$("#userMail").val() },
			dataType: 'JSON',
			success: function(result) {
				alert("정보와 일치하는 비밀번호를 찾을 수 없습니다.");
			},
			error:function(request){
		      alert("비밀번호 : "+request.responseText);
		     }

		})
		
	})
})
</script>
</head>
<body>
<!-- 헤더 -->
<header id="header">
 <%@ include file="/WEB-INF/views/header/MainHeader.jsp" %>
</header>
<br><br><br><br><br><br>
<!-- 헤더 끝 -->
<div class="container text-center">    
  <div class="row">
  	<!-- 랭킹 -->
    <%@ include file="/WEB-INF/views/side/InfoSide.jsp" %>
    <!-- 랭킹 끝 -->
    <div class="col-sm-8" > 
              
                    <div class="dividerHeading"style="width:95%;">
                        <h4><span>비밀번호 찾기</span></h4>
                        
                    </div>
                    
                        <div class="row">
                            <div class="form-group">
                            		 <input type="text" style="width:95%;" id="userId" name="userId" class="form-control" maxlength="100"   placeholder="아이디">
                            		 <input type="text" style="width:95%;" id="userName" name="userName" class="form-control" maxlength="100"   placeholder="이름">
                            		 <input type="text" style="width:95%;" id="userMail" name="userMail" class="form-control" maxlength="100"  placeholder="이메일">
                               
                                
                                 <div class="col-lg-4 col-md-4 col-sm-4" style="text-align:left;">
                                 <input type="submit" id="find" data-loading-text="Loading..."   style="text-align: left;" class="btn btn-default btn-lg"  value="비밀번호찾기">
                                 </div>
                                <br>
                               <div class="col-lg-4 col-md-4 col-sm-4" style="text-align:right;">
                               <input type="button" class="btn btn-default btn-lg"   style="color:white; text-align:right;" onclick="location.href='/palette/users/home'" value="홈으로">
                               </div>
                                
                            </div>
                        </div>
                 
                
            </div>
	 <!-- 광고 사이드 오른쪽-->
    <%@ include file="/WEB-INF/views/side/AdsSide.jsp" %>
    <!-- 광고 사이드 오른쪽 끝 -->
  </div>
</div>
<br><br><br><br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
	
	 		<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
			<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
			<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
			<script src="<c:url value="/resources/js/retina-1.1.0.min.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
			<!-- jQuery cookie -->
			<script type="text/javascript" src="<c:url value="/resources/js/styleswitch.js"/>"></script>
			<!-- Style Colors Switcher -->
			<script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.min.js"/>"></script>
			<script type="text/javascript"
				src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.min.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/jquery.jcarousel.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/jflickrfeed.js"/>"></script>
			<script type="text/javascript"
				src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/swipe.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/jquery-scrolltofixed-min.js"/>"></script>
</html>