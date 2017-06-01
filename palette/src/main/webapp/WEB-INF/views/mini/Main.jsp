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
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="hidden-xs col-lg-7 col-sm-5 top-info">
                        <span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span>
                        <span class="hidden-sm"><i class="fa fa-envelope"></i>123</span>
                    </div>
                    <div class="col-lg-5 col-sm-7 top-info clearfix">
                        <ul>
                            <li>
                                <form class="search-bar">
                                    <label for="search" class="search-label">
                                        <button class="search-button"><i class="fa fa-search"></i></button><!-- Fix the break-row-bug
                                        --><input type="text" id="search" class="search-input" />
                                    </label>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--/.header-top -->

        <div id="menu-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div id="logo">
                            <h1 style="color:white; font-size: 2.5em;">홈페이지 이름</h1>
                        </div>
                    </div>
                     <!-- Navigation
                    ================================================== -->
                    <div class="col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container" role="navigation">
                        <!--  <div class="container">-->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="index.html">브랜드</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index_2.html">브랜드1</a></li>
                                        <li><a href="index_3.html">브랜드2</a></li>
                                        <li><a href="index_4.html">브랜드3</a></li>
                                        <li><a href="index_5.html">브랜드4</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">의류</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="elements.html">Elements</a></li>
                                        <li><a href="columns.html">Columns</a></li>
                                        <li><a href="typography.html">Typography</a></li>
                                        <li><a href="pricing-tables.html">Pricing Tables</a></li>
                                        <li><a href="icons.html">Icons</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">수제품</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="about.html">About</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="about.html">About Us 1</a></li>
                                                <li><a href="about-2.html">About Us 2</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="faq.html">FAQ</a></li>
                                        <li><a href="sidebar-right.html">Right Sidebar</a></li>
                                        <li><a href="sidebar-left.html">Left Sidebar</a></li>
                                        <li><a href="404-page.html">404 Page</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">식품</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">Portfolio Classic</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="portfolio_2.html">Portfolio 2</a></li>
                                                <li><a href="portfolio_3.html">Portfolio 3</a></li>
                                                <li><a href="portfolio_4.html">Portfolio 4</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="portfolio_masonry_3.html">Portfolio Masnory</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="portfolio_masonry_2.html">Masonry portfolio 2</a></li>
                                                <li><a href="portfolio_masonry_3.html">Masonry portfolio 3</a></li>
                                                <li><a href="portfolio_masonry_4.html">Masonry portfolio 4</a></li>
                                            </ul>
                                        </li>

                                        <li>
                                            <a href="portfolio_single.html">Portfolio Single</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="portfolio_single.html">Portfolio Single 1</a></li>
                                                <li><a href="portfolio_single_2.html">Portfolio Single 2</a></li>
                                                <li><a href="portfolio_single_3.html">Portfolio Single 3</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.container -->
        </div>
        <!--/#menu-bar -->
        <div class="slider_block">
            <div class="flexslider top_slider">
                <ul class="slides">
                    <li class="slide1">
                        <div class="container">
                            <div class="flex_caption1">

                                <p class="slide-heading FromTop">qhrals8의 '홈페이지 제목'</p><br/>

                                <p class="sub-line FromBottom">홈페이지 소개 내용</p><br/>

                                <a href="" class="slider-read FromLeft">상세 보기</a>
                            </div>
                            <div class="flex_caption2 FromRight">
                            	 <img src="../UandMe/images/88888.jpg" style="width:100%;  min-width: 293px;max-width: 293px; min-height: 320px;max-height: 320px; vertical-align: middle;"/>
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
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                         <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                          <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                          <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                    
                    </ul>
                </div>
            </div>
        </div>
    </section>
<!--Start recent work-->
<!--Start recent work-->
    <section class="latest_work" style="padding:0;">
        <div class="container">
            <div class="row sub_content" style="padding-bottom: 20px;">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span  class="highlight default">마감 임박</span> 상품</h4>
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
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                         <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                          <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                          <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width: 214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" >
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 214px;max-width:214px; min-height: 161px;max-height: 161px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description" style="border-radius: 10px;">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                    
                    </ul>
                </div>
            </div>
        </div>
    </section>
<!--Start recent work-->

    <section class="latest_work">
        <div class="container">
            <div class="row sub_content" style="padding:0;">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span class="highlight default">인기</span> 상품</h4>
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
                        <li class="col-sm-3 col-md-3 col-lg-3"style="width:390px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                 style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

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
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

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
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

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
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba" >
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_6.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_7.png" class="fa fa-search mfp-image"></a>
                                </div>
                                <figcaption class="item-description">
                                    <h5>Touch and Swipe</h5>
                                    <p>Technology</p>
                                </figcaption>
                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                        <li class="col-sm-3 col-md-3 col-lg-3" style="width:390px;">
                            <figure class="touching effect-bubba">
                                <img src="<c:url value="/resources/images/portfolio/portfolio_1.png"/>" alt="" class="img-responsive"
                                style="width:100%;  min-width: 370px;max-width:370px; min-height: 279px;max-height: 279px; vertical-align: middle;">

                                <div class="option">
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                    <a href="images/portfolio/portfolio_8.png" class="fa fa-search mfp-image"></a>
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
        </div>
    </section>
<!--Start recent work-->

   

    <!-- footer -->
<br><br>
    <section class="promo_box wow bounceInUp" data-wow-offset="50">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-9 col-lg-9">
                    <div class="promo_content">
                        <h3>Edge is awesome responsive template, with clean design.</h3>
                        <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. </p>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3 col-lg-3">
                    <div class="pb_action">
                        <a class="btn btn-lg btn-default" href="#fakelink">
                            <i class="fa fa-shopping-cart"></i>
                            Download Now
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
    <!--=====================마감임박상품 끝========================-->

<!--
    밑에 꺼는 정확하게 어떤건지 모르니까 만지지 마시오...
-->

<!-- Parallax with Testimonial -->
    <section class="parallax parallax-1">
        <div class="container">
            <!--<h2 class="center">Testimonials</h2>-->
<!-- end : Parallax with Testimonial -->

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