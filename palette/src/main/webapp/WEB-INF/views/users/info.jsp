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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<style>
.name {
	text-align: center;
	padding-left: 200px;
	padding-right: 200px;
}
.well {
    min-height: 290px;
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
</style>
<script type="text/javascript">

</script>
</head>
<body>
<!--Start Header-->

<header id="header">
<%@ include file="/WEB-INF/views/header/MainHeader.jsp" %>
 <!--end Header-->
 
 <!-- 메뉴바 시작 -->
		<div id="menu-bar">
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-lg-3 col-sm-3 ">
						<div id="logo">
							<h1>
								<a href="/palette/users/home"><img
									src="/palette/resources/images/logo.png" alt="" /></a>
							</h1>
						</div>
					</div>
					<!-- Navigation
                    ================================================== -->
    <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
		<!--End Header-->
		<!--start wrapper-->
		<section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <div class="page_title">
                           <h2>회원 마이페이지</h2>
                        </div>
                    </div>
                </div>
            </div>
             </section>
            
 
           
            <div class="col-lg-12 col-md-12 col-sm-12">
            <br><br>
					<div class="col-lg-3 col-md-3 col-sm-3">

								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/info" class="btn btn-block btn-default">내 정보보기</a>
								</div>
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/bookmarkList"" class="btn btn-block btn-default">내 즐겨찾기</a>
								</div>
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/basketList" class="btn btn-block btn-default">내 장바구니</a>
								</div>
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/orderList" class="btn btn-block btn-default">주문 내역</a>
								</div>
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/tradeList" class="btn btn-block btn-default">포인트 충전내역</a>
								</div>
								<div class="pricingTable-sign-up"><!-- BUTTON BOX-->
									<a href="/palette/users/delete" class="btn btn-block btn-default">회원 탈퇴</a>
								</div>

							</div>
							
							<div class="col-lg-9 col-md-9 col-sm-9">
							<div class="well well-lg"style="padding-left: 50px; padding-right: 50px; height: 285px; padding-top: 10px;"><h3><i class="fa fa-laptop"></i> 내 정보보기</h3>
						
							<div class="col-lg-3 col-md-3 col-sm-3">
							<table>
								<tbody>
									
									<tr><td>이름</td></tr>
									<tr><td>아이디</td></tr>
									<tr><td>이메일</td></tr>
									<tr><td>핸드폰</td></tr>
									
								</tbody>
							</table>
							</div>
							
							<div class="col-lg-3 col-md-3 col-sm-3">
								<table>
									<tbody>
										<tr><td>${user.userName } </td></tr>
										<tr><td>${user.userId}</td></tr>
										<tr><td>${user.userMail}</td></tr>
										<tr><td>${user.userPhone}</td></tr>
									</tbody>
								</table>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<table>
								<tbody>
									<tr><td>보유 포인트</td></tr>
									<tr><td>우편번호</td></tr>
									<tr><td>상세 주소</td></tr>
								</tbody>
							</table>
							</div>

							<div class="col-lg-3 col-md-3 col-sm-3">
								<table>
									<tbody>
										<tr><td>${user.userPoint}</td></tr>
										<tr><td>${user.userPost}</td></tr>
										<tr><td>${user.userAddress}</td></tr>
									</tbody>
								</table>
							
							<br><br><br>
							<button class="btn btn-default btn-lg btn-block" type="button" onclick='location.href="http://localhost:8087/palette/users/update"'> 
							<i class="fa fa-rocket" ></i> 수정하기</button>
                            </div>
		</div>
</div>
</div></div></div></div></header>
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

					<script src="<c:url value="/resources/js/main.js"/>"></script>
</html>