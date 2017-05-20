<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>유앤미 메인 페이지</title>


    <!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
<!--Start Header-->
<header id="header">
  <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
 <!--end Header-->
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

 
<!--===========================헤더 끝========================================-->

       
                    
  <!-- =====================메인 메뉴(우측상단) 시작============================= -->
       <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->


        <!--=========================화면 가운데 슬라이드 시작=======================-->
       
    <!--=========================화면 가운데 슬라이드 끝==================================-->






<section class="wrapper">

    <!--=====================최신등록 상품 시작======================-->
 <div class="slider_block">
            <div class="flexslider top_slider">
                <ul class="slides" >
                    <li class="slide1">
                        <div class="container">
                            <div class="flex_caption1">

                                <p class="slide-heading FromTop">아디다스 항공점퍼!!!</p><br/>

                                <p class="sub-line FromBottom">특가 110000원!!!</p><br/>

                                <a href="/hooligan/product/productMain?product_no=91" class="slider-read FromLeft">구매하기</a>
                            </div>
                            <div class="flex_caption2 FromRight"><img  style="width:350px; height:320px; " alt="Alternate Text" /></div>
                        </div>
                    </li>

                    <li class="slide2">
                        <div class="container">
                            <div class="slide flex_caption1">
                                <p class="slide-heading FromTop">트위드스타일기본롱가디건</p><br/>

                                <p class="sub-line FromRight">20%세일 249,000원</p><br/>
							
                                <a href="/hooligan/product/productMain?product_no=96"" class="slider-read FromLeft">구매하기</a>

                            </div>
                            <div class="flex_caption2 FromBottom"><img  style="width:350px; height:320px; " alt="Alternate Text" /></div>
                        </div>
                    </li>
                    <li class="slide3">
                        <div class="container">
                            <div class="slide flex_caption1">
                                <p class="slide-heading FromTop">시슬리 베이직심플정장팬츠</p><br/>

                                <p class="sub-line FromRight">다리가 이뻐보이는 필요한 99,000원!!</p><br/>

                                <a href="/hooligan/product/productMain?product_no=96" class="slider-read FromLeft">구매하기</a>

                            </div>
                            <div class="flex_caption2 FromRight"><img  style="width:350px; height:320px; " alt="Alternate Text" /></div>
                        </div>
                    </li>
                    </ul>
            </div>
        </div>
        </section>
    </header>
    <!-- 최신상품시작 -->
    <section class="latest_work">
        <div class="container">
            <div class="row sub_content">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>최신등록 상품</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc">
                    <ul class="jcarousel-list" id="recentP">
                      <!-- 최신상품들어가는곳 -->
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--=====================최신등록 상품 끝======================-->


    <!--=====================인기상품 시작========================-->
    <section class="latest_work">
        <div class="container">
            <div class="row sub_content">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>인기 상품</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc">
                    <ul class="jcarousel-list" id="hitP">
                     
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--=====================인기상품 끝========================-->






<!--
    밑에 꺼는 정확하게 어떤건지 모르니까 만지지 마시오...
-->

<!-- Parallax with Testimonial -->
    <section class="parallax parallax-1">
        <div class="container">
        
        
        </div></section>
            <!--<h2 class="center">Testimonials</h2>-->
<!-- end : Parallax with Testimonial -->
<script src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
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

</script>
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
            new WOW().init();
        </script>

</body>
</html>