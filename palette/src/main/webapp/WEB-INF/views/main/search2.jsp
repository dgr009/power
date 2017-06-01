<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html lang="en">
<head>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Portfolio Single - Edge Responsive Multipurpose Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>    
 	th{
		text-align: center;
	}
	td{
		text-align: center;
	}
	.title:HOVER{
		text-decoration: underline;
		cursor: pointer;
	}
  }

  </style>



<script type="text/javascript">

</script>
</head>
<body>
<header id="header">
 <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="hidden-xs col-lg-7 col-sm-5 top-info" style="margin-left: 70px; ">
                    <span><i class="fa fa-unlock"></i>로그인</span>
                    <span class="hidden-sm"><i class="fa fa-user-plus"></i>회원가입</span>
                    
                </div>
 			<div class="hidden-xs col-lg-3 col-sm-5 top-info" style="text-align: right;">
 				<span class="hidden-sm"><i class="fa fa-calendar-o"></i>이벤트</span>
 				</div>
            </div>
        </div>
    </div>
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="col-lg-1 col-md-1 col-sm-1"></div>
<div class="col-lg-10 col-md-10 col-sm-10" style="padding: 0;">
<div class="col-lg-2 col-md-2 col-sm-2" style="text-align: right; padding: 0;">
        <div class="ab" style="margin-top: 23px; margin-right: 60px;">
        	<h1><a href="index.html"><img alt="" src="<c:url value="/resources/images/로고5.png"/>" style="width:230px; height: 60px;"></a></h1>
        </div><br>
</div>
<div class="col-lg-4 col-md-4 col-sm-4" style="padding: 0;">
	        <!-- 검색 바 -->
	    <div class="ab" style="margin-top: 30px; margin-left: 60px;">
	        <div class="widget widget_search" style="border: 2px solid #727cb6; border-radius: 15px; height: 45px; width: 300px;">
				<div class="site-search-area" >
					<form method="get" id="site-searchform" action="#">
						<div style=" border-radius: 6px;">
							<input style="color:#727cb6; border-bottom-left-radius:10px; border-top-left-radius:10px; background-color:transparent;border:0 solid black;" class="input-text" name="s" id="s" placeholder="상품명 검색..." type="text">
							<input id="searchsubmit" value="Search" type="submit" style=" border-bottom-right-radius: 10px; border-top-right-radius: 10px;">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 검색 바 -->
</div>



<div class="col-lg-6 col-md-6 col-sm-6">
	 <div class="ab" style="padding-left: 55px; margin-top: 23px; ">
	<a href="../icon/id-card-o" style="color: #727cb6;"><i class="fa fa-money fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../icon/paypal" style="color: #727cb6;"><i class="fa fa-paypal fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="../icon/cart-arrow-down" style="color: #727cb6;"><i class="fa fa-cart-arrow-down fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="../icon/sitemap" style="color: #727cb6;"><i class="fa fa-sitemap fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">상품권 등록</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">포인트 충전</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">장바구니</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">등급별 혜택</span>
</div>
</div>
</div>
<div class="col-lg-1 col-md-1 col-sm-1"></div>

<div class="col-lg-12 col-md-12 col-sm-12" style="border-bottom: 1px solid #727cb6;">
	<div class="navbar-collapse collapse" style="width: 1050px; margin-right: 110px;">
                            <ul class="nav navbar-nav sm" data-smartmenus-id="1495757258893402" >
                                <li><a href="#" style="color:black; width: 100px; text-align: center; font-family: 'Nanum Gothic';">사이트 소개</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">공지사항</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">메뉴2</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">메뉴3</a>
       

                                    </li>
                                    
 									<li><a href="#" class="has-submenu" style="color:black; width: 90px; text-align: center; margin-left:310px;">자유게시판</a>
                               		 </li>
                               		 <li><a href="#" class="has-submenu" style="color:black; width: 90px; text-align: center; ">문의게시판</a>
                               		 </li>
                               		 </ul>
                        </div>
                        
                        
</div>
</header>

<div class="col-xs-12 col-xs-12 col-xs-12" style="padding:0;">

<div class="col-xs-1 col-xs-1 col-xs-1"></div><!-- 여백 -->

<div class="col-xs-10 col-xs-10 col-xs-10">
<br>
	<blockquote class="default" style="border-top-right-radius: 30px; height:60px; border-bottom-right-radius: 30px; position: relative;">
		<p style="font-size: 1.2em; position: absolute; bottom:0.1in;"><span style="font-weight: bold; font-size:1.2em; color:#727cb6; text-decoration: underline;">
	'가구'</span> 에 대한 총 <span style="font-size: 1.1em">'24'</span>건의 검색 결과입니다 &nbsp;<i class="fa fa-search-plus " style="color:#727cb6;"></i></p> 
	<nav id="breadcrumbs" style="position: absolute; bottom: 17px; left:850px; border-radius: 30px;">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li>메인으로</li>
        </ul>
    </nav>
	</blockquote>
	
	
	<div class="row sub_content" style="padding-top: 0;">
					<div class="carousel-intro">
						<div class="col-md-12">
							<div class="dividerHeading">
								<h4><span>검색된 <span class="highlight default">상품</span> 목록</span></h4>
							</div>
							<div class="carousel-navi">
								<div id="work-prev" class="arrow-left jcarousel-prev" data-jcarouselcontrol="true"><i class="fa fa-angle-left"></i></div>
								<div id="work-next" class="arrow-right jcarousel-next active" data-jcarouselcontrol="true"><i class="fa fa-angle-right"></i></div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>

                    <div class="jcarousel recent-work-jc" data-jcarousel="true" style="height: 162px;">
                        <ul class="jcarousel-list" style="left: 0px;">
                        
                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:342px; margin-left: 10px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;" >
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                     style="width:100%;  min-width: 322px;max-width: 322px; min-height: 243px;max-height: 243px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="<c:url value="/resources/images/content/recent_1.png"/>" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:342px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                    style="width:100%;  min-width: 322px;max-width: 322px; min-height: 243px;max-height: 243px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="<c:url value="/resources/images/content/recent_1.png"/>" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:342px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                    style="width:100%;  min-width: 322px;max-width: 322px; min-height: 243px;max-height: 243px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="<c:url value="/resources/images/content/recent_1.png"/>" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:342px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                    style="width:100%;  min-width: 322px;max-width: 322px; min-height: 243px;max-height: 243px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:342px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                    style="width:100%;  min-width: 322px;max-width: 322px; min-height: 243px;max-height: 243px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:342px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                    style="width:100%;  min-width: 322px;max-width: 322px; min-height: 243px;max-height: 243px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            
                        </ul>
                    </div>
				</div>
				
			<div class="row sub_content" style="padding-top: 0;">
					<div class="carousel-intro">
						<div class="col-md-12">
							<div class="dividerHeading">
								<h4><span>검색된 <span class="highlight default">홈페이지</span> 목록</span></h4>
							</div>
							<div class="carousel-navi">
								<div id="work-prev" class="arrow-left jcarousel-prev" data-jcarouselcontrol="true"><i class="fa fa-angle-left"></i></div>
								<div id="work-next" class="arrow-right jcarousel-next active" data-jcarouselcontrol="true"><i class="fa fa-angle-right"></i></div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>

                    <div class="jcarousel recent-work-jc" data-jcarousel="true" style="height: 162px;">
                        <ul class="jcarousel-list" style="left: 0px;">
                        
                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:205px; margin-left: 13px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive" 
                                    style="width:100%;  min-width: 185px;max-width: 185px; min-height: 139px;max-height: 139px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:205px;">
                                <figure class="touching effect-bubba"  style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                     style="width:100%;  min-width: 185px;max-width: 185px; min-height: 139px;max-height: 139px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:205px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                     style="width:100%;  min-width: 185px;max-width: 185px; min-height: 139px;max-height: 139px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:205px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                     style="width:100%;  min-width: 185px;max-width: 185px; min-height: 139px;max-height: 139px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:205px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                     style="width:100%;  min-width: 185px;max-width: 185px; min-height: 139px;max-height: 139px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            <!-- Recent Work Item -->
                            <li class="col-sm-3 col-md-3 col-lg-3" style="width:205px;">
                                <figure class="touching effect-bubba" style="border-radius: 10px;">
                                    <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                     style="width:100%;  min-width: 185px;max-width: 185px; min-height: 139px;max-height: 139px; vertical-align: middle;">

                                    <div class="option">
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <a href="images/portfolio/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    </div>
                                    <figcaption class="item-description">
                                        <h5>Touch and Swipe</h5>
                                        <p>Technology</p>
                                    </figcaption>
                                </figure>
                            </li>

                            
                        </ul>
                    </div><br><br>

				</div>
				
				    
</div>


<div class="col-xs-1 col-xs-1 col-xs-1"></div><!-- 여백 -->
</div>

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
                        $(document).ready(function () {
                            $.fn.carousel = function (op) {
                                var op, ui = {};
                                op = $.extend({
                                    speed: 500,
                                    autoChange: false,
                                    interval: 5000
                                }, op);
                                ui.carousel = this;
                                ui.items = ui.carousel.find('.carousel-item');
                                ui.itemsLen = ui.items.length;

                                // CREATE CONTROLS
                                ui.ctrl = $('<div />', { 'class': 'carousel-control' });
                                ui.prev = $('<div />', { 'class': 'carousel-prev' });
                                ui.next = $('<div />', { 'class': 'carousel-next' });
                                ui.pagList = $('<ul />', { 'class': 'carousel-pagination' });
                                ui.pagItem = $('<li></li>');
                                for (var i = 0; i < ui.itemsLen; i++) {
                                    ui.pagItem.clone().appendTo(ui.pagList);
                                }
                                ui.prev.appendTo(ui.ctrl);
                                ui.next.appendTo(ui.ctrl);
                                ui.pagList.appendTo(ui.ctrl);
                                ui.ctrl.appendTo(ui.carousel);
                                ui.carousel.find('.carousel-pagination li').eq(0).addClass('active');
                                ui.carousel.find('.carousel-item').each(function () {
                                    $(this).hide();
                                });
                                ui.carousel.find('.carousel-item').eq(0).show().addClass('active');


                                // CHANGE ITEM
                                var changeImage = function (direction, context) {
                                    var current = ui.carousel.find('.carousel-item.active');

                                    if (direction == 'index') {
                                        if (current.index() === context.index())
                                            return false;

                                        context.addClass('active').siblings().removeClass('active');

                                        ui.items.eq(context.index()).addClass('current').fadeIn(op.speed, function () {
                                            current.removeClass('active').hide();
                                            $(this).addClass('active').removeClass('current');
                                        });
                                    }

                                    if (direction == 'prev') {
                                        if (current.index() == 0) {
                                            ui.carousel.find('.carousel-item:last').addClass('current').fadeIn(op.speed, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                        else {
                                            current.prev().addClass('current').fadeIn(op.speed, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                    }

                                    if (direction == undefined) {
                                        if (current.index() == ui.itemsLen - 1) {
                                            ui.carousel.find('.carousel-item:first').addClass('current').fadeIn(300, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                        else {
                                            current.next().addClass('current').fadeIn(300, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                    }
                                    ui.carousel.find('.carousel-pagination li').eq(ui.carousel.find('.carousel-item.current').index()).addClass('active').siblings().removeClass('active');
                                };

                                ui.carousel
                                    .on('click', 'li', function () {
                                        changeImage('index', $(this));
                                    })
                                    .on('click', '.carousel-prev', function () {
                                        changeImage('prev');
                                    })
                                    .on('click', '.carousel-next', function () {
                                        changeImage();
                                    });

                                // AUTO CHANGE
                                if (op.autoChange) {
                                    var changeInterval = setInterval(changeImage, op.interval);
                                    ui.carousel
                                        .on('mouseenter', function () {
                                            clearInterval(changeInterval);
                                        })
                                        .on('mouseleave', function () {
                                            changeInterval = setInterval(changeImage, op.interval);
                                        });
                                }
                                return this;
                            };

                            $('.porDetCarousel').each(function () {
                                $(this).carousel({
                                    autoChange: true
                                });
                            });
                        });
                    </script>
                    <script>
    (function ($) {
        var $container = $('.masonry_wrapper'),
                colWidth = function () {
                    var w = $container.width(),
                            columnNum = 1,
                            columnWidth = 0;
                    if (w > 1200) {
                        columnNum  = 3;
                    } else if (w > 900) {
                        columnNum  = 3;
                    } else if (w > 600) {
                        columnNum  = 2;
                    } else if (w > 300) {
                        columnNum  = 1;
                    }
                    columnWidth = Math.floor(w/columnNum);
                    $container.find('.item').each(function() {
                        var $item = $(this),
                                multiplier_w = $item.attr('class').match(/item-w(\d)/),
                                multiplier_h = $item.attr('class').match(/item-h(\d)/),
                                width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
                                height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
                        $item.css({
                            width: width,
                            height: height
                        });
                    });
                    return columnWidth;
                }

        function refreshWaypoints() {
            setTimeout(function() {
            }, 1000);
        }
        function setPortfolio() {
            setColumns();
            $container.isotope('reLayout');
        }

        isotope = function () {
            $container.isotope({
                resizable: true,
                itemSelector: '.item',
                masonry: {
                    columnWidth: colWidth(),
                    gutterWidth: 0
                }
            });
        };
        isotope();
        $(window).smartresize(isotope);
    }(jQuery));
</script>
                   <script src="<c:url value="/resources/js/main.js"/>"></script>
</html>