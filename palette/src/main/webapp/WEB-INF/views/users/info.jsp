<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
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
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
  .rrr:HOVER{
  	cursor: pointer;
  	text-decoration: underline;
  }
</style>
<script>
	
</script>
</head>
<body>
<!--탑 헤더 -->
<header id="header">
 <%@ include file="/WEB-INF/views/header/MainTopHeader.jsp" %>
</header>
<!--탑 헤더 끝 -->
<!-- 메인 인포 헤더 시작 -->
<%@ include file="/WEB-INF/views/header/MainInfoHeader.jsp" %>

<!-- 바디 시작 -->
<!-- 회원 정보 -->
<div class="col-xs-12 col-xs-12 col-xs-12" ><br><br>

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10" >
	
	
	<div style="width: 1000px; height: 200px; border : 1px solid silver; border-bottom: none; position: relative;"> 
	
	<div style="width:355px; height: 114px; display: inline-block;  margin-left: 50px;  border-right: 1px dashed gray; position: absolute; bottom:40px;">
	<c:if test="${homeImg eq null }">
		<img src="<c:url value="/resources/images/그림자.png"/>" alt="" class="info" style=" width: 112px; float: left;height: 112px; border-radius: 112px;">
	</c:if>
	<c:if test="${homeImg ne null}">
		<img src="<c:url value="/homeimg/${homeImg }"/>" alt="" class="info" style=" width: 112px; float: left;height: 112px; border-radius: 112px;">
	</c:if>
	<br>
		<p style="padding-top: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.userName }님은 현재 팔레트<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.userGrade }등급 회원입니다</p>
	</div>
	<div style="width:271px; height : 114px; display: inline-block;  margin : 35px; margin-top: 50px; position: absolute; left:400px; margin-left: none; border-right: 1px dashed gray;" >
		<p ><span class="highlight light">아이디</span> : <span id="usersId">${user.userId }</span> 
		<p><span class="highlight light">이름</span> : <span id="usersName">${user.userName }</span></p>
		<p style="position: relative;"><span class="highlight light">이메일</span> : <span id="email">${user.userMail }</span> <span class="rrr" style="width:40px; border: 1px solid gray; border-radius: 30px; padding:4px; font-size: 0.9em; color:gray; float: right; text-align: center; right:10px; bottom:1px;  position: absolute;"><a data-toggle="modal" data-target="#mailModal">수정</a></span></p>
		<p><span class="highlight light">연락처</span> : <span id="phone">${user.userPhone }</span><span  class="rrr" style="width:40px; border: 1px solid gray; border-radius: 30px; padding:4px; font-size: 0.9em; color:gray; float: right; text-align: center; right:10px;  position: absolute;  bottom:1px;"><a data-toggle="modal" data-target="#phoneModal">수정</a></span></p>
	</div>
	
	<div style="width:220px; height : 114px; display: inline-block;  margin : 35px; margin-top: 50px; position: absolute; left:700px; margin-left: none; " >
	
		<p ><span class="highlight light">보유 포인트</span> : <span id="usersPoint">${user.userPoint }</span>&nbsp;<span class="highlight default">P</span> 
		<p><span class="highlight light">주소</span> : <span id="usersName">${user.userAddress }</span></p>
		<p><span class="highlight light">우편 번호</span> : <span id="email">${user.userPost }</span><span  class="rrr" style="width:40px; border: 1px solid gray; border-radius: 30px; padding:4px; font-size: 0.9em; color:gray; float: right; text-align: center; right:1px;  position: absolute;  bottom:1px;"><a data-toggle="modal" data-target="#addressModal">수정</a></span></p>
	
	</div>
	
	</div>
	
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	</div>
</div>

<%@include file="/WEB-INF/views/modal/InfoUpdateModal.jsp" %>

<!-- 회원 정보 footer -->

<div class="col-xs-12 col-xs-12 col-xs-12" >

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10">
	
	
	<div style="width: 1000px; height: 100px; background: #fbfbfb;  border : 1px solid silver; border-top: none; "> 	
		<p style="padding : 37px; padding-left: 115px; font-size: 1.1em"> 쓰면 쓸 수록 커지는 등급별 혜택을 누리세요! &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="color:#727cb6; font-weight: bold;">홈페이지 결제권 구매하고 등급별 혜택 받기 !</span>
		</p>
	</div>
	
	</div>
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	</div>
	
	
	
	<!-- 수정바튼 -->
	
	<div class="col-xs-2 col-xs-2 col-xs-2"></div><br><br>
	<div class="col-xs-8 col-xs-8 col-xs-8" style="margin-left: 395px;"><br><br>
		<div class="col-xs-3 col-xs-3 col-xs-3">
			<button class="btn btn-default btn-lg btn-block" type="button" data-toggle="modal" data-target="#pwdModal" style=" border:1px solid #727cb6; color:white;"> 
			<i class="fa fa-rotate-right"></i> 비밀번호 변경</button>
		</div>
		<div class="col-xs-3 col-xs-3 col-xs-3" >
			<button class="btn btn-default btn-lg btn-block" type="button" data-toggle="modal" data-target="#deleteModal" style=" border:1px solid #727cb6; color:white;"> 
			<i class="fa fa-user-times"></i> 회원 탈퇴</button>
		</div>
	</div>
	<div class="col-xs-2 col-xs-2 col-xs-2"></div>
	<div class="col-xs-12 col-xs-12 col-xs-12" >
		<br><br><br><br>	
	</div>
	<!-- footer -->
	<%@include file="/WEB-INF/views/footer/normalFooter.jsp" %>
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