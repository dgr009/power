<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Edge Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />"media="screen" data-name="skins">
    <link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

    <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body class="home">
    <header id="header">
        <!-- Start header-top -->
<%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
        <!--/.header-top -->
                     <!-- Navigation
                    ================================================== -->
                     <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
                     
            <!--/.container -->
        <!--/#menu-bar -->
        <div class="slider_block">
            <div class="flexslider top_slider">
                <ul class="slides">
                    <li class="slide1">
                        <div class="container">
                            <div class="flex_caption1">

                                <p class="slide-heading FromTop">${kind.home.homeTitle}</p><br/>

                                <a href="/palette/miniHome/${userId}/Info" class="slider-read FromLeft">상세 보기</a>
                                <%@include file="/WEB-INF/views/header/BookmarkHeader.jsp" %>
                            </div>
                            <div class="flex_caption2 FromRight">
                            	 <img src="<c:url value='/homeimg/${kind.home.homeImg}'/>" style="width:100%;  min-width: 293px;max-width: 293px; min-height: 320px;max-height: 320px; vertical-align: middle;"/>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>
<!--End Header-->

<section class="wrapper">
<!--start info service-->
<!--end info service-->

<!--Start recent work-->
    <section class="latest_work" style="padding:0;">
        <div class="container">
            <div class="row sub_content" style="padding-bottom: 20px;">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span  class="highlight default">최근</span> 등록된 상품</h4>
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
                           <c:forEach items="${item.recent}" var="free">
                         <li class="col-sm-3 col-md-3 col-lg-3">
                            <figure class="touching effect-bubba">
                                <img style="width: 200	px; height: 150px;" src="<c:url value='/productImg/${free.imgName }'/>" alt="" class="img-responsive">
                                <div class="option">
                                    <a href="/palette/miniHome/${userId}/productMain/${free.itemNo.intValue()}" class="fa fa-link"></a>
                                </div>
                                 <figcaption class="item-description">
                                    <h5>${free.itemName}</h5>
                                    <p>${free.itemPrice.intValue()}</p>
                                </figcaption>
                            </figure>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </section>

<!--Start recent work-->

    <section class="latest_work">
        <div class="container">
            <div class="row sub_content" style="padding-bottom: 20px;">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span class="highlight default">마감</span> 상품</h4>
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
                      <c:forEach items="${item.inven}" var="free">
                        <li class="col-sm-3 col-md-3 col-lg-3">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value='/productImg/${free.imgName }'/>" class="img-responsive" alt=""  style="width: 200	px; height: 150px;">

                                <div class="option">
                                 <a href="/palette/miniHome/${userId}/productMain/${free.itemNo.intValue()}" class="fa fa-link"></a>
                                </div>
                                <figcaption class="item-description">
                                    <h5>${free.itemName}</h5>
                                    <p>${free.itemPrice.intValue()}</p>
                                </figcaption>
                            </figure>
                        </li>
                        </c:forEach>

                        
                    </ul>
                </div>
            </div>
        </div><br>
    </section>
<!--Start recent work-->

   

    <!-- footer -->
    <section class="promo_box wow bounceInUp" data-wow-offset="50">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-9 col-lg-9">
                    <div class="promo_content">
                        <h3>개인 쇼핑몰 홈페이지에 오신 것을 환영합니다!</h3>
                        <p>홈페이지를 만들고 평생 이용권을 구매하여 나만의 쇼핑몰을 운영하세요 </p>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3 col-lg-3">
                    <div class="pb_action">
                        <a class="btn btn-lg btn-default" href="/palette/miniHome/${userId}/noticeList">
                            <i class="fa fa-shopping-cart"></i>
                           공지사항 가기
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section><!--end wrapper-->
<section class="footer_bottom">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <p class="copyright">&copy; Copyright 2015 Edge | Powered by  <a href="http://www.jqueryrain.com/">jQuery Rain</a></p>
            </div>

            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social">
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
<script src="<c:url value="/resources/js/retina-1.1.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.cookie.js"/>"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="<c:url value="/resources/js/styleswitch.js"/>"></script> <!-- Style Colors Switcher -->
<!--
<script src="js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
-->
<script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.jcarousel.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jflickrfeed.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/swipe.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-scrolltofixed-min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-scrolltofixed-min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.flexslider-min.js"/>"></script>

<script src="<c:url value="/resources/js/main.js"/>"></script>
    <script>
        $('.flexslider.top_slider').flexslider({
            animation: "fade",
            controlNav: false,	
            directionNav: true,
            prevText: "&larr;",
            nextText: "&rarr;"
        });
    </script>

    <!-- WARNING: Wow.js doesn't work in IE 9 or less -->
    <!--[if gte IE 9 | !IE ]><!-->
        <script type="text/javascript" src="<c:url value="/resources/js/wow.min.js"/>"></script>
        <script>
            // WOW Animation
            new WOW().init();
        </script>
    <![endif]-->
</div>
</div>
</body>
</html>