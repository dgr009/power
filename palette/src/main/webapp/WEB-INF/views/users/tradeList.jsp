<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
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
									src="/hooligan/images/logo.png" alt="" /></a>
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
		<div class="well well-lg"style="padding-left: 50px; padding-right: 50px; height: 500px; padding-top: 10px;"><h3><i class="fa fa-laptop"></i>장바구니 목록</h3>
	<table width="90%" style="text-align: center;">
		<thead>
		<tr>
			<td>번호</td>
			<td>거래날짜</td>
			<td>거래금액</td>
			<td>거래내용</td>
		</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${result.tradeList }" var="trade"  varStatus="index">
		<tr>			
			<td>
				${index.count }
			</td>
			<td>
				${trade.tradeDate }
			</td>
			<td>
				${trade.tradePoint.intValue() }
			</td>
			<td>
				${trade.tradeContent}
			</td>
		</tr>
		</c:forEach>
		</tbody>
</table>
<c:if test="${result.pagination.prev>0 }"><a href="/palette/users/tradeList?pageNo=${result.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<a href="/palette/users/tradeList?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${result.pagination.next>0 }"><a href="/palette/users/tradeList?pageNo=${result.pagination.next}">다음으로</a></c:if>
	<br><br>
	<button class="btn btn-default btn-lg" onclick="location.href='/palette/users/chargePoint'">포인트충전</button>
	<button class="btn btn-default btn-lg" onclick="location.href='/palette/users/refundPoint'">포인트환급</button>
		 </div>
		</div>
</div>
</div></div></div></header>
	
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