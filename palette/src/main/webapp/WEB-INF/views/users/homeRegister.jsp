<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% Users users = (Users) session.getAttribute("user"); %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>유앤미 메인 페이지</title>


    <!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>
	$(function(){
		$("#insertTag").on("click",function(){
			var tag = "<li><a href='#' id='bigKind'>새태그</a></li>";
			$("#bigTag").append(tag);
		})
		
		$(document).on("dblclick","#bigKind",function(){
			var name = prompt("태그 이름 입력",$(this).html());
			if(name!="")
				$(this).html(name);
			
		})
		
	})
	
</script>

<body class="home">
<!--Start Header-->
<header id="header">
  <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
 <!--end Header-->

<!--===========================헤더 끝========================================-->
<form>
        <div id="menu-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div id="logo">
                      <input type="file" class="form-control" name="homeImg" id="img" value="홈페이지 로고">
                      <input type="text" class="form-control" name="homeTitle" placeholder="홈페이지 제목" id="title">
                        </div>
                    </div>
                    
  <!-- =====================메인 메뉴(우측상단) 시작============================= -->
<%@include file="/WEB-INF/views/MenuRegister.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->


        <!--=========================화면 가운데 슬라이드 시작=======================-->
       
    <!--=========================화면 가운데 슬라이드 끝==================================-->

</div>
</div>
</div>
</form>




<!--
    밑에 꺼는 정확하게 어떤건지 모르니까 만지지 마시오...
-->

<!-- Parallax with Testimonial -->
            <!--<h2 class="center">Testimonials</h2>-->
<!-- end : Parallax with Testimonial -->
</header>

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

<script type="text/javascript">

</script>
<script src="<c:url value="/resources/js/main.js"/>"></script>
    

    <!-- WARNING: Wow.js doesn't work in IE 9 or less -->
    <!--[if gte IE 9 | !IE ]><!-->
        <script type="text/javascript" src="<c:url value="/resources/js/wow.min.js"/>"></script>
       
</body>
</html>