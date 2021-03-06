<%@page import="com.icia.palette.vo.Users"%>
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
<script>

</script>
<style>
	#userTable {
		font-size: 15px;
	}
</style>
</head>
<body>
	<!--Start Header-->
	<header id="header">
<%@include file="/WEB-INF/views/header/MainTopHeader.jsp" %>
	</header>
	<!-- End Header -->
	<div id="menu-bar">
		<div class="container">
			<div class="row">
			</div>
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
			<div class="well well-lg" style="padding-right: 50px; padding-left: 50px; height: 625px;">
				<h3>
					<i class="fa fa-leaf"></i> 홈페이지 개설회원 조회
				</h3>
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div id="godate" style="display: inline-block"></div>
					<div id="backdate" style="display: inline-block"></div>
					<form action="/palette/admin/detail" method="get">
						<p> 회원 아이디 : <input type="text" id="userId" name="userId"></p>
					</form>
				</div>
				<div id="userTable">
					<table class="table table-striped table-hover" >
						<thead>
							<tr>
								<td>번호&emsp;&emsp;</td>
								<td>아이디</td>
								<td>이름</td>
								<td>홈페이지 개설여부<td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${result.list }" var="u" varStatus="index">
								<tr>
									<td>${u.rnum.intValue() }</td>&emsp;
									<td>${u.userId }</td>
									<td>${u.userName }&emsp;
									<td>${u.userIsHome }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!--페이징 시작 -->
				<div class="col-sm-12 text-center" id="pagination">
					<c:if test="${result.pagination.prev>0 }">
						<a href="/palette/admin/openPage?pageNo=${result.pagination.prev}">이전으로</a>
					</c:if>
					<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
						<a href="/palette/admin/openPage?pageNo=${i}">${i}
						</a>
					</c:forEach>
					<c:if test="${result.pagination.next>0 }">
						<a href="/palette/admin/openPage?pageNo=${result.pagination.next}">다음으로</a>
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
