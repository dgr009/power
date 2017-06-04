<%@page import="com.icia.palette.vo.Users"%>
<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%Users users=(Users)session.getAttribute("user"); %>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Portfolio Single - Edge Responsive Multipurpose Template</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	

</head>
<body>
	<!--Start Header-->
	<header id="header">
		 <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
		</header>
	<!-- End Header -->
		<div id="menu-bar">
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
<div class="col-md-3 col-sm-3">
                        <div id="logo">
                            <h1 style="color:white; font-size: 2.5em;">${kind.home.homeTitle}</h1>
                        </div>
                    </div>					
					
					 <!-- =====================메인 메뉴(우측상단) 시작============================= -->
                 <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->
		<!--End Header-->
		<!--start wrapper-->
		<section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <div class="page_title">
                            <h2>직원 마이페이지</h2>
                        </div>
                    </div>
                </div>
            </div>
             </section>
            

           
            <div class="col-lg-12 col-md-12 col-sm-12">
            <br><br>
					
							<%@include file="/WEB-INF/views/AdminMenu.jsp" %>
							<div class="col-lg-9 col-md-9 col-sm-9">
							<div class="well well-lg" style="height:360px; padding-left: 50px; padding-right: 30px; padding-top: 10px; padding-bottom: 20px;" ><h3><i class="fa fa-leaf"></i>    상품 판매 등록</h3>
						
							
							<form action="/palette/miniHome/admin/<%=users.getUserId()%>/register" method="POST" enctype="multipart/form-data">
							<div class="col-lg-3 col-md-3 col-sm-3">
							<table>
								<tbody>
									
									<tr><td>상품명</td></tr>	
									<tr><td>상품 종류</td></tr>
									<tr><td>상품 수량</td></tr>
									<tr><td>판매 가격</td></tr>
									<tr><td>상품 옵션</td></tr>
									
								</tbody>
							</table>
							</div>
							
							<div class="col-lg-3 col-md-3 col-sm-3">
								<table >
									<tbody >
										<tr><td><input type="text"  name="itemName"></td></tr>
										<tr><td><select name="smallKind">
										<c:forEach items="${result.kind}" var="free">
										<option value="${free.smallKind}">${free.smallKind}</option>
										</c:forEach>
										
										</select></td></tr>
										
										<tr><td><input type="text"  name="itemSize"></td></tr>
										<tr><td><input type="text"  name="itemPrice"></td></tr>
										<tr id="space" ><td><input type="text"  name="optionName" id="optionName"></td>
										<td><a href="#fakelink" class="btn btn-sm btn-social-facebook" id="addOption">추가</a></td></tr >
										
									</tbody>
								</table>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
							<table>
									<tbody>

										<tr><td>상품 이미지</td></tr>
										<tr><td>상품 내용</td></tr>

									</tbody>
								</table>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<table>
									<tbody>
										<tr><td><input type="file" name="imgName" id="imgName" multiple></td></tr>
										<tr><td><textarea rows="4" cols="3" style="width:200px;" name="itemContent" id="itemContent"></textarea></td></tr>
										</tbody>
								</table>
								<br><br><br><br><br><br><br>
								&nbsp;&nbsp;<input class="btn btn-default btn-lg btn-block" type="submit" id="upload"> 
							<i class="fa fa-rocket"></i> 상품 등록하기</button>
							
							</div>
                            
						</form>
							
									
							</div>
							
							
							</div>
							
							</div></div>
					

           
			


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
						$(document)
								.ready(
										function() {
											$.fn.carousel = function(op) {
												var op, ui = {};
												op = $.extend({
													speed : 500,
													autoChange : false,
													interval : 5000
												}, op);
												ui.carousel = this;
												ui.items = ui.carousel
														.find('.carousel-item');
												ui.itemsLen = ui.items.length;

												// CREATE CONTROLS
												ui.ctrl = $(
														'<div />',
														{
															'class' : 'carousel-control'
														});
												ui.prev = $('<div />', {
													'class' : 'carousel-prev'
												});
												ui.next = $('<div />', {
													'class' : 'carousel-next'
												});
												ui.pagList = $(
														'<ul />',
														{
															'class' : 'carousel-pagination'
														});
												ui.pagItem = $('<li></li>');
												for (var i = 0; i < ui.itemsLen; i++) {
													ui.pagItem.clone()
															.appendTo(
																	ui.pagList);
												}
												ui.prev.appendTo(ui.ctrl);
												ui.next.appendTo(ui.ctrl);
												ui.pagList.appendTo(ui.ctrl);
												ui.ctrl.appendTo(ui.carousel);
												ui.carousel
														.find(
																'.carousel-pagination li')
														.eq(0).addClass(
																'active');
												ui.carousel.find(
														'.carousel-item').each(
														function() {
															$(this).hide();
														});
												ui.carousel.find(
														'.carousel-item').eq(0)
														.show().addClass(
																'active');

												// CHANGE ITEM
												var changeImage = function(
														direction, context) {
													var current = ui.carousel
															.find('.carousel-item.active');

													if (direction == 'index') {
														if (current.index() === context
																.index())
															return false;

														context
																.addClass(
																		'active')
																.siblings()
																.removeClass(
																		'active');

														ui.items
																.eq(
																		context
																				.index())
																.addClass(
																		'current')
																.fadeIn(
																		op.speed,
																		function() {
																			current
																					.removeClass(
																							'active')
																					.hide();
																			$(
																					this)
																					.addClass(
																							'active')
																					.removeClass(
																							'current');
																		});
													}

													if (direction == 'prev') {
														if (current.index() == 0) {
															ui.carousel
																	.find(
																			'.carousel-item:last')
																	.addClass(
																			'current')
																	.fadeIn(
																			op.speed,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														} else {
															current
																	.prev()
																	.addClass(
																			'current')
																	.fadeIn(
																			op.speed,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														}
													}

													if (direction == undefined) {
														if (current.index() == ui.itemsLen - 1) {
															ui.carousel
																	.find(
																			'.carousel-item:first')
																	.addClass(
																			'current')
																	.fadeIn(
																			300,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														} else {
															current
																	.next()
																	.addClass(
																			'current')
																	.fadeIn(
																			300,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														}
													}
													ui.carousel
															.find(
																	'.carousel-pagination li')
															.eq(
																	ui.carousel
																			.find(
																					'.carousel-item.current')
																			.index())
															.addClass('active')
															.siblings()
															.removeClass(
																	'active');
												};

												ui.carousel
														.on(
																'click',
																'li',
																function() {
																	changeImage(
																			'index',
																			$(this));
																})
														.on(
																'click',
																'.carousel-prev',
																function() {
																	changeImage('prev');
																})
														.on(
																'click',
																'.carousel-next',
																function() {
																	changeImage();
																});

												// AUTO CHANGE
												if (op.autoChange) {
													var changeInterval = setInterval(
															changeImage,
															op.interval);
													ui.carousel
															.on(
																	'mouseenter',
																	function() {
																		clearInterval(changeInterval);
																	})
															.on(
																	'mouseleave',
																	function() {
																		changeInterval = setInterval(
																				changeImage,
																				op.interval);
																	});
												}
												return this;
											};

											$('.porDetCarousel').each(
													function() {
														$(this).carousel({
															autoChange : true
														});
													});
										});
					</script>
					<script>
					$(function(){
					      var i = 1;
					      $("#addOption").on("click", function(){
					         if( i<4){
					            i= i+1;
					            $("#space").after('<tr><td><input type="text" id="optionName" name="optionName"></td></tr>');
					         }
					         
					      })
					   })
					   
</script>
					<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>
