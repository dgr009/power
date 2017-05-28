<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
<!DOCTYPE html>

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
    height: 35px;
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
    <%@ include file="/WEB-INF/views/side/RankSide.jsp" %>
    <!-- 랭킹 끝 -->
    <!-- 메인 가운데 광고 -->
    <div class="col-sm-8">
    
      <div class="row"  style="margin-right: 1px;">
        <div class="col-sm-12"  >
          <div class="panel panel-default text-left">
           	<div id="slider" class="swipe" style="">
						<ul class="swipe-wrap">
							<li><img src="<c:url value="/resources/images/삼성.jpg"/>" alt="blog post"></li>
							<li><img src="<c:url value="/resources/images/과학.jpg"/>" alt="blog post"></li>
							<li><img src="<c:url value="/resources/images/피죤.jpg"/>" alt="blog post"></li>
						</ul>
						<div class="swipe-navi">
							<div class="swipe-left" onclick="mySwipe.prev()">
								<i class="fa fa-chevron-left"></i>
							</div>
							<div class="swipe-right" onclick="mySwipe.next()">
								<i class="fa fa-chevron-right"></i>
							</div>
						</div>
			</div>
          </div>
        </div>
      </div>
      <!-- 메인 가운데 광고 끝 -->
      
      <!-- 메인 상품들 진열 -->
      <!-- 상품 인기순 -->
       <div class="carousel-intro">
                    <div class="col-md-12"  style="padding-left: 0">
                        <div class="dividerHeading">
                            <h4><span>인기순</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc">
                    <ul class="jcarousel-list">
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_2.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_2.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_3.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_3.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_4.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_4.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;">
                            <figure class="touc                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        hing effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_3.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_3.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_3.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_3.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                    </ul>
        </div>
         <!-- 상품 최신순 -->
       <div class="carousel-intro">
                    <div class="col-md-12" style="padding-left: 0">
                        <div class="dividerHeading">
                            <h4><span>최신순</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc">
                    <ul class="jcarousel-list">
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                    </ul>
        </div>
         <!-- 상품 마감임박순 -->
       <div class="carousel-intro">
                    <div class="col-md-12" style="padding-left: 0">
                        <div class="dividerHeading">
                            <h4><span>마감임박</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc">
                    <ul class="jcarousel-list">
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 5px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                </div>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;" >
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;  margin-left: 10px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                </div>
                            </figure>
                        </li>
                    </ul>
        </div>   
    </div>
    <!-- 메인 상품들 진열 끝 -->
    
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
					<script src="<c:url value="/resources/js/main.js"/>"></script>
</html>
