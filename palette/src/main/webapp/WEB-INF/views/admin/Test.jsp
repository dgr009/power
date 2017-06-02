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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	
</script>
</head>
<body>
 
			 <div class="col-sm-8">
				<div class="well well-lg"style="padding-left: 50px; padding-right: 50px; height: 400px; padding-top: 10px;"><h3><i class="fa fa-laptop"></i> 내 정보보기</h3>
						
					<div class="col-lg-3 col-md-3 col-sm-3">
							<table class="table table-striped table-hover">
								<tbody>
									
									<tr><th>이름</th></tr>
									<tr><th>아이디</th></tr>
									<tr><th>이메일</th></tr>
									<tr><th>핸드폰</th></tr>
									
								</tbody>
							</table>
							</div>
							
							<div class="col-lg-3 col-md-3 col-sm-3">
								<table class="table table-striped table-hover">
									<tbody>
										<tr><td>${user.userName } </td></tr>
										<tr><td>${user.userId}</td></tr>
										<tr><td>${user.userMail}</td></tr>
										<tr><td>${user.userPhone}</td></tr>
									</tbody>
								</table>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<table class="table table-striped table-hover">
								<tbody>
									<tr><th>보유 포인트</th></tr>
									<tr><th>우편번호</th></tr>
									<tr><th>상세 주소</th></tr>
								</tbody>
							</table>
							</div>

							<div class="col-lg-3 col-md-3 col-sm-3">
								<table class="table table-striped table-hover">
									<tbody>
										<tr><td>${user.userPoint}</td></tr>
										<tr><td>${user.userPost}</td></tr>
										<tr><td>${user.userAddress}</td></tr>
									</tbody>
								</table>
							
							<br><br><br> </div>
							<button class="btn btn-default btn-lg btn-block"  type="button" data-toggle="modal" data-target="#updateModal" > 
							<i class="fa fa-rocket" ></i> 수정하기</button>
							<button class="btn btn-default btn-lg btn-block"  type="button" data-toggle="modal" data-target="#deleteModal" > 
							<i class="fa fa-rocket" ></i> 탈퇴하기</button>
							<%@include file="/WEB-INF/views/users/update.jsp" %>
							<%@include file="/WEB-INF/views/users/usersDelete.jsp" %>
                           
		</div>
</div>
					 <!-- 광고 사이드 오른쪽-->
    <%@ include file="/WEB-INF/views/side/AdsSide.jsp" %>
    <!-- 광고 사이드 오른쪽 끝 -->
  </div>
</div>
<br><br><br><br><br><br><br><br>

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