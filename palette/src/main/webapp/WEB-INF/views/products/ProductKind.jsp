<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
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
    
    
       <style>
      .panel-body, .panel-heading{
         text-align: center;
      }
      
      .panel-body, .panel-heading{
         text-align: center;
      }
         .name li{
         list-style : none;
         float : left;
         margin : 15px 10px;
      }
      .name{
      text-align: center;
      padding-left: 200px;
      padding-right: 200px;
      }
      .post_img{
         display: inline-block;
         
      
         
      }
      .container{
         text-align: center;
      }
      #jobs{
         text-align: center;
         display: inline-block;
      }

   </style>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script>
      
   </script>
</head>
<body>
<!--Start Header-->
    <header id="header">
  <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp"%>
        <div id="menu-bar">
            <div class="container">
                <div class="row">
                    <!-- Logo / Mobile Menu -->
                    <%@include file="/WEB-INF/views/MenuLogo.jsp"  %>
                    <!-- Navigation
                    ================================================== -->
                  <%@include file="/WEB-INF/views/MenuSelect.jsp"%>
        <!--End Header-->
        <!--start wrapper-->
        <section class="wrapper">
         <section class="page_head">
            <div class="container"></div>
            </div>
         </section>

                    <!--물건 표시란 시작-->
                    <div style="width: 90%; text-align: center;">
                <div class="mixed-container masonry_wrapper" style="margin-left: 10%;">
			<c:forEach items="${result.result }" var="free">
                        <div class="item responsive">
                            <figure class="touching effect-bubba">
                            <!-- 상품 이미지 표시 -->
                                <img style="width: 200	px; height: 250px;" src="<c:url value='http://localhost:8087/palette/productImg/${free.imgName }'/>" alt="" class="img-responsive">

                                <div class="option">
                                    <a href="/palette/miniHome/${userId}/productMain/${free.itemNo.intValue()}" class="fa fa-link"></a>
                                </div>
                                <figcaption class="item-description">
                                <br><br>
                                    <!-- 상품명 -->
                                    <h5>${free.itemName}</h5>
                                    <!-- 상품 가격 -->
                                    <p>${free.itemPrice.intValue()}원</p>
                                       <!-- 상품 상태 표시-->
                                    <div class="col-sm-4 images-style-inner">
                                    </div>
                                    <!-- 상품 상태 표시끝 -->
                                </figcaption>
                                
                            </figure>
                        </div>
</c:forEach>
              



            

                    </div>
                    </div>
                    <!--물건 표시란 시작-->
                </div>
                
                
                    <!--페이징 시작 -->
                <div class="col-sm-12 text-center">
                    <ul class="pagination">
                        	<c:if test="${result.pagination.prev>0 }"><a href="/palette/miniHome/${userId}/productKind/${smallKind}?pageNo=${result.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<a href="/palette/miniHome/${userId}/productKind/${smallKind }?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${result.pagination.next>0 }"><a href="/palette/miniHome/${userId }/productKind/${smallKind }?pageNo=${result.pagination.next}">다음으로</a></c:if>
                </div>
                    </ul>
                </div>
            </div> <!--페이징 끝 -->
        </div> <!--./div-->
    </section>
</section>
                        
                     
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
</body>
</html>