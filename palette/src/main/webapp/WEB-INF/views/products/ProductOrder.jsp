<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%Users user1=(Users)session.getAttribute("user");%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>


	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Portfolio Single - Edge Responsive Multipurpose Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- CSS FILES -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"/>" media="screen"
	data-name="skins">
<link rel="stylesheet"
	href="<c:url value="/resources/css/layout/wide.css"/>"
	data-name="layout">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(function(){
	$("#orderBtn").on("click",function(){			
		if(<%=user1.getUserPoint()%>>=${itemPrice*itemSize}&&${itemInven}>=${itemSize}){
			$("#orderForm").submit();}
		else if(<%=user1.getUserPoint()%><${itemPrice*itemSize}){
			alert("포인트를 충전해주세요");
		}else if(${itemInven}<${itemSize}){
			alert("재고가 부족합니다");
		}
	})
	

})

</script>
</head>

<body>
<!--Start Header-->
<header id="header">
 <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
 <!--end Header-->   
 
 <!--메뉴바 시작-->
    <div id="menu-bar">
        <div class="container">
            <div class="row">
                <!-- Logo / Mobile Menu -->
<div class="col-md-3 col-sm-3">
                        <div id="logo">
                            <h1 style="color:white; font-size: 2.5em;">${kind.home.homeTitle}</h1>
                        </div>
                    </div>                    <!-- =====================메인 메뉴(우측상단) 시작============================= -->
                    <%@include file="/WEB-INF/views/MenuSelect.jsp"%>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->
<!--End Header-->
	
	<!--start wrapper-->
	
		
		 <form id="orderForm" action="/palette/miniHome/${userId}/productOrder/${itemNo}" method="POST" >
                <section class="wrapper">
        <section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <nav id="breadcrumbs">
                            <ul>

                                <li><a href="/palette/miniHome/${userId}/main">Home</a></li>
                                <li>주문하기</li>
                            </ul>
                        </nav>

                        <div class="page_title">
                            <h2>주문하기</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>

		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="project_description">
							<div class="widget_title">
								<h4><span>주문 상품 정보</span></h4>
							</div>
								<table class="table table-striped table-hover">
                    <thead>
                    <tr>
										<th>상품명</th>
										<th>옵션</th>
										<th>수량</th>
										<th>총 금액</th>
									</tr>
                    </thead>
                    <tbody>
                    <tr>
										<td><input type="hidden" name="itemName" value="${itemName}">${ itemName}</td>
										<td><input type="hidden" name="optionName" value="${itemOption}">${itemOption}</td>
										<td><input type="hidden" name="orderSize" value="${itemSize}">${itemSize}개</td>
										<td><input type="hidden" name="orderPrice" value="${itemPrice*itemSize}">${itemPrice*itemSize}원</td>
										<input type="hidden" name="itemNo" value="${itemNo}">
								       
									</tr>
                    <tr>
                       
                    </tbody>
                    
                    
                    
                    
                    
                    
                    
                </table>
							</ul>
						</div>
						<div class="project_details">
							<div class="widget_title">
								<h4><span>배송지 확인</span></h4>
							</div>
							<ul class="details">
								<li><span>수령인 </span><input type="hidden" name="userId" value="<%=user1.getUserId()%>"><%=user1.getUserName()%></li>
								<li><span>우편 번호 </span><%= user1.getUserPost()%></li>
								<li><span>상세 주소</span><%= user1.getUserAddress()%></li>
								<li><span>연락처 </span> <%= user1.getUserPhone()%></li>
							</ul>
						</div>
					</div>
					
					<div class="col-lg-6 col-md-6 col-sm-6">
						<!--Project Details Page-->
						<br><br>
						<div class="porDetCarousel">
							<div class="carousel-content">
							<c:forEach items="${result.itemImg }" var="img">
							<img class="carousel-item" style="width:700px; height:500px;"
									src="<c:url value='http://localhost:8087/palette/productImg/${img.imgName }'/>">
									</c:forEach>
							</div>
						<div class="carousel-control"><div class="carousel-prev"></div><div class="carousel-next"></div><ul class="carousel-pagination"><li class=""></li><li class=""></li><li class="active"></li></ul></div></div>
					</div>
					
				</div>
				
				
				<div class="col-lg-1 col-md-1 col-sm-1"></div>
				<div class="col-lg-6 col-md-6 col-sm-6">
           
                <button type="button" data-loading-text="Loading..."  id="orderBtn" class="btn btn-default btn-lg" >주문하기</button>
						
				</div>
				<div class="col-lg-5 col-md-5 col-sm-5"></div>
				
				
				<br><br><br><br>
				                    </div>
				
			</div>
		</section>
	</section>
	</form>
	
	
 	<script type="text/javascript"
							src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
						<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
						<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
						<script src="<c:url value="/resources/js/retina-1.1.0.min.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
						<!-- jQuery cookie -->
						<script type="text/javascript"
							src="<c:url value="/resources/js/styleswitch.js"/>"></script>
						<!-- Style Colors Switcher -->
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery.smartmenus.min.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.min.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery.jcarousel.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jflickrfeed.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery.isotope.min.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/swipe.js"/>"></script>
						<script type="text/javascript"
							src="<c:url value="/resources/js/jquery-scrolltofixed-min.js"/>"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$.fn.carousel = function(op) {
				var op, ui = {};
				op = $.extend({
					speed: 500,
					autoChange: false,
					interval: 5000
				}, op);
				ui.carousel = this;
				ui.items    = ui.carousel.find('.carousel-item');
				ui.itemsLen = ui.items.length;

				// CREATE CONTROLS
				ui.ctrl 	= $('<div />', {'class': 'carousel-control'});
				ui.prev 	= $('<div />', {'class': 'carousel-prev'});
				ui.next 	= $('<div />', {'class': 'carousel-next'});
				ui.pagList  = $('<ul />', {'class': 'carousel-pagination'});
				ui.pagItem  = $('<li></li>');
				for (var i = 0; i < ui.itemsLen; i++) {
					ui.pagItem.clone().appendTo(ui.pagList);
				}
				ui.prev.appendTo(ui.ctrl);
				ui.next.appendTo(ui.ctrl);
				ui.pagList.appendTo(ui.ctrl);
				ui.ctrl.appendTo(ui.carousel);
				ui.carousel.find('.carousel-pagination li').eq(0).addClass('active');
				ui.carousel.find('.carousel-item').each(function() {
					$(this).hide();
				});
				ui.carousel.find('.carousel-item').eq(0).show().addClass('active');
				
				
				// CHANGE ITEM
				var changeImage = function(direction, context) {
					var current = ui.carousel.find('.carousel-item.active');

					if (direction == 'index') {
						if(current.index() === context.index())
							return false;

						context.addClass('active').siblings().removeClass('active');

						ui.items.eq(context.index()).addClass('current').fadeIn(op.speed, function() {
							current.removeClass('active').hide();
							$(this).addClass('active').removeClass('current');
						});
					} 

					if (direction == 'prev') {
						if (current.index() == 0) {
							ui.carousel.find('.carousel-item:last').addClass('current').fadeIn(op.speed, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
						else {
							current.prev().addClass('current').fadeIn(op.speed, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
					}

					if (direction == undefined) {
						if (current.index() == ui.itemsLen - 1) {
							ui.carousel.find('.carousel-item:first').addClass('current').fadeIn(300, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
						else {
							current.next().addClass('current').fadeIn(300, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
					}
					ui.carousel.find('.carousel-pagination li').eq( ui.carousel.find('.carousel-item.current').index() ).addClass('active').siblings().removeClass('active');
				};

				ui.carousel
					.on('click', 'li', function() {
						changeImage('index', $(this));
					})
					.on('click', '.carousel-prev', function() {
						changeImage('prev');
					})
					.on('click', '.carousel-next', function() {
						changeImage();
					});
				
				// AUTO CHANGE

				return this;
			};
			
			$('.porDetCarousel').each(function() {
				$(this).carousel({
					autoChange: true
				});
			});
		});
	</script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
	
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>
