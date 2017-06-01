<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>홈페이지 개설회원 목록</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
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
<link rel="stylesheet"
	href="<c:url value="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"/>"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
.name {
	text-align: center;
	padding-left: 200px;
	padding-right: 200px;
}

.well {
	min-height: 360px;
	padding: 0;
	padding-left: 50px;
}

tr {
	font-size: 1.1em;
	height: 28px;
	line-height: 28px;
}

.form-control {
	height: 20px;
	line-height: 20px;
}
</style>
<script>

</script>
</head>
<body>
	<!--Start Header-->
	<header id="header">
		<%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp"%>
	</header>
	<!-- End Header -->
	<div id="menu-bar">
		<div class="container">
			<div class="row"></div>
		</div>
	</div>
	<!-- Logo / Mobile Menu -->
	<!-- =====================메인 메뉴(우측상단) 시작============================= -->
	<!-- =====================메인 메뉴(우측상단) 끝============================= -->
	<!--start wrapper-->
	<section class="page_head">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="page_title">
						<h2>관리자 마이페이지</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="col-lg-12 col-md-12 col-sm-12">
		<br> <br>
		<%@include file="/WEB-INF/views/MainAdminMenu.jsp"%>
		<div class="col-lg-9 col-md-9 col-sm-9">
			<div class="well well-lg"
				style="padding-right: 50px; padding-left: 50px; height: 625px;">
				<h3>
					<i class="fa fa-leaf"></i> 홈페이지 개설회원 조회 &nbsp;&nbsp;
				</h3>
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div id="godate" style="display: inline-block"></div>
					<div id="backdate" style="display: inline-block"></div>
					<form action="/palette/admin/revenueUserList" method="get">
						<p>
							회원 아이디 : <input type="text" id="userId" name="userId">
						</p>
						<c:forEach var="i" begin="${r.pagination.startPage}" end="${r.pagination.endPage}">
						
					</c:forEach>
					</form>
				</div>
				<!--페이징 시작 -->
				<div class="col-sm-12 text-center" id="pagination">
					<c:if test="${r.pagination.prev>0 }">
						<a href="/palette/users/bookmarkList?pageNo=${r.pagination.prev}&startDate=${r.sDate}&endDate=${r.eDate}">이전으로</a>
					</c:if>

					<c:forEach var="i" begin="${r.pagination.startPage}" end="${r.pagination.endPage}">
						<a href="/palette/admin/revenueList?pageNo=${i}&startDate=${r.sDate}&endDate=${r.eDate}">${i}
						</a>
					</c:forEach>
					<c:if test="${r.pagination.next>0 }">
						<a href="/palette/admin/revenueList?pageNo=${r.pagination.next}&startDate=${r.sDate}&endDate=${r.eDate}">다음으로</a>
					</c:if>
				</div>
			</div>
			<!--페이징 끝 -->
		</div>
	</div>


	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/resources/js/retina-1.1.0.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="<c:url value="/resources/js/styleswitch.js"/>"></script>
	<!-- Style Colors Switcher -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.jcarousel.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jflickrfeed.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
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
								ui.items = ui.carousel.find('.carousel-item');
								ui.itemsLen = ui.items.length;
	
								// CREATE CONTROLS
								ui.ctrl = $('<div />', {
									'class' : 'carousel-control'
								});
								ui.prev = $('<div />', {
									'class' : 'carousel-prev'
								});
								ui.next = $('<div />', {
									'class' : 'carousel-next'
								});
								ui.pagList = $('<ul />', {
									'class' : 'carousel-pagination'
								});
								ui.pagItem = $('<li></li>');
								for (var i = 0; i < ui.itemsLen; i++) {
									ui.pagItem.clone().appendTo(ui.pagList);
								}
								ui.prev.appendTo(ui.ctrl);
								ui.next.appendTo(ui.ctrl);
								ui.pagList.appendTo(ui.ctrl);
								ui.ctrl.appendTo(ui.carousel);
								ui.carousel.find('.carousel-pagination li').eq(
										0).addClass('active');
								ui.carousel.find('.carousel-item').each(
										function() {
											$(this).hide();
										});
								ui.carousel.find('.carousel-item').eq(0).show()
										.addClass('active');

								// CHANGE ITEM
								var changeImage = function(direction, context) {
									var current = ui.carousel
											.find('.carousel-item.active');

									if (direction == 'index') {
										if (current.index() === context.index())
											return false;

										context.addClass('active').siblings()
												.removeClass('active');

										ui.items.eq(context.index()).addClass(
												'current').fadeIn(
												op.speed,
												function() {
													current.removeClass(
															'active').hide();
													$(this).addClass('active')
															.removeClass(
																	'current');
												});
									}

									if (direction == 'prev') {
										if (current.index() == 0) {
											ui.carousel
													.find('.carousel-item:last')
													.addClass('current')
													.fadeIn(
															op.speed,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										} else {
											current
													.prev()
													.addClass('current')
													.fadeIn(
															op.speed,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
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
													.addClass('current')
													.fadeIn(
															300,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										} else {
											current
													.next()
													.addClass('current')
													.fadeIn(
															300,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										}
									}
									ui.carousel
											.find('.carousel-pagination li')
											.eq(
													ui.carousel
															.find(
																	'.carousel-item.current')
															.index()).addClass(
													'active').siblings()
											.removeClass('active');
								};

								ui.carousel.on('click', 'li', function() {
									changeImage('index', $(this));
								}).on('click', '.carousel-prev', function() {
									changeImage('prev');
								}).on('click', '.carousel-next', function() {
									changeImage();
								});

								// AUTO CHANGE
								if (op.autoChange) {
									var changeInterval = setInterval(
											changeImage, op.interval);
									ui.carousel.on('mouseenter', function() {
										clearInterval(changeInterval);
									}).on(
											'mouseleave',
											function() {
												changeInterval = setInterval(
														changeImage,
														op.interval);
											});
								}
								return this;
							};

							$('.porDetCarousel').each(function() {
								$(this).carousel({
									autoChange : true
								});
							});
						});
	</script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>
