<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%Users user1=(Users)session.getAttribute("user");%>
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

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .order_status{
    	font-size:40px;
    	height:50px;
    	line-height:50px;
    	text-align:center;
    	color:white;
    	background:#694fa8;
    	border-radius: 5px;
    	margin-bottom:30px;
    	
    }
    </style>
</head>

<body>
	<!--Start Header-->
	<!--Start Header-->
	<header id="header">
 <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
		<!--end Header-->
		
					<!-- =====================메인 메뉴(우측상단) 시작============================= -->
  <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
	<!-- =====================메인 메뉴(우측상단) 끝============================= -->
	<!--End Header-->

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<nav id="breadcrumbs">
							<ul>

								<li><a href="/palette/miniHome/${userId}/main">Home</a></li>
								<li>상품</li>
							</ul>
						</nav>

						<div class="page_title">
							<h2>상품 정보 보기</h2>
						</div>
					</div>
				</div>
			</div>
		</section>
<form action="/palette/miniHome/productOrder/${userId}/${result.item.itemNo.intValue()}" method="get">
		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-8 col-md-8 col-sm-8">
						<!--Project Details Page-->
						<div class="porDetCarousel">
							<div class="carousel-content">
							<c:forEach items="${result.itemImg }" var="img">
							<img class="carousel-item" style="width:800px; height:500px;"
									src="<c:url value='/productImg/${img.imgName }'/>">
									</c:forEach>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-4 col-sm-4" style="bottom:15px;">
						<div class="project_description">
							<div class="widget_title">
								<h2 id="productN">
									<span></span>
							</div>
							
							
						<div class="project_description">
							<div class="widget_title">
								<h4 style="margin-bottom: 0;"><span style="color:gray; font-size: 1.4em;">${result.item.itemName}</span></h4><br>
							</div>

							<p style="height: 75px; margin:0;">${result.item.itemContent}</p>
						</div>
						
						<div class="project_details">
							<div class="widget_title">
								<h4 style="margin-bottom: 0; margin-top: 0;"><span>Product Details</span></h4>
							</div>
							<ul class="details">
								<li><span>가격 :</span>${result.item.itemPrice.intValue()}</li>
								<li><span>수량 :</span> <select name="itemSize">
	 							<option value=1>1</option>
	 							<option value=2>2</option>
								<option value=3>3</option> 
	 							<option value=4>4</option>
								<option value=5>5</option>
							</select></li>
							<li><span>옵션 :</span><select name="itemOption">
							<c:forEach items="${result.itemOption}"   var="free">
							<option value="${free.optionName}">${free.optionName}</option>
							<</c:forEach></select></li>
								<li><span>등록일 :</span> ${result.item.itemDate}</li>
								<li><span>상품종류 :</span>${result.item.smallKind}</li>
								<li><span>남은수량 :</span><input type="hidden" name="itemInven" value="${result.item.itemInven.intValue()}">${result.item.itemInven.intValue()}개</li>
			                     <input type="hidden" name="itemPrice" value="${result.item.itemPrice.intValue()}">
			                     <input type="hidden" name="itemName" value="${result.item.itemName}">
			                      <input type="hidden" id="itemNo" name="itemNo" value="${result.item.itemNo.intValue()}">
						</div>
						

							
									
									</div>
									<p></p> <!-- 즐겨찾기 주문하기 상품평가 상세보기 -->
									<div>
										<div>
										<%if(session.getAttribute("user")!=null){ %>
										 &nbsp; &nbsp; &nbsp; &nbsp;
											<button type="button"
												 style="color: white; font-size: 1.1em;"
												class="btn btn-default btn-lg" id="basket" data-userId="<%=user1.getUserId() %>" >장바구니로</button> 
											<%} %>&nbsp;&nbsp;&nbsp;
												<input
												type="submit"
												style="color: white;" class="btn btn-default btn-lg"
												value="주문하기">&nbsp;&nbsp;&nbsp;&nbsp; <a
												href="/palette/miniHome/${userId}/productInquiryList/${result.item.itemNo.intValue()}"><input
												type="button" 
												style="color: white;" class="btn btn-default btn-lg"
												value="상품문의"></a>

											<!-- 즐겨찾기 주문하기 상품평가 상세보기 -->
										</div>
									</div></li>
							</ul>
						</div>
					</div>

</form>
	<div>
	<!-- 리뷰를 넣어보자 --> 
	<div class="widget_title">
			<h4 style="margin:0; color:gray; font-size: 1.7em;">상품리뷰</h4>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <input type="button" onClick="location.href='/palette/users/orderList'" value="리뷰글 작성" data-loading-text="Loading..." id="orderBtn" class="btn btn-default btn-lg" style="color:white; font-size: 1.1em;">
	</div>
	<br>

				
            <table style="width: 1140px;"> 
			<thead>
			<tr style="background: #fafafa;  border: 1px solid #e6e6e6; border-left: none; border-right: none; border-top: 2px solid silver;">
				<th style="text-align: center; width: 80px;">번호</th>
				<th style="text-align: center; width: 170px;">점수</th>
				<th style="text-align: center; width: 230px;">내용</th>
				<th style="text-align: center; width: 130px;">작성자</th>
				<th style="text-align: center; width: 150px;">작성일</th>
			</tr>
		</thead>
		<tbody id="review"  style="border: 1px solid #e6e6e6; border-left: none;  border-right: none;">
			 <c:forEach items="${result.review}" var="free">
				<tr style="border: 1px solid #e6e6e6; border-left: none; border-right: none;">
					<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">${free.reviewNo.intValue()}</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${free.reviewScore.intValue()}점</td>
					<td style="text-align: center; border: 1px solid #e6e6e6; ">${free.reviewContent}</td>
					<td style="text-align: center; border: 1px solid #e6e6e6; "> ${free.userId}</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center; border-right: none; ">${free.reviewDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br><br>
	</div>
<br><br><br>
<br><br>



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
														$.fn.carousel = function(
																op) {
															var op, ui = {};
															op = $
																	.extend(
																			{
																				speed : 500,
																				autoChange : false,
																				interval : 5000
																			},
																			op);
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
															ui.prev = $(
																	'<div />',
																	{
																		'class' : 'carousel-prev'
																	});
															ui.next = $(
																	'<div />',
																	{
																		'class' : 'carousel-next'
																	});
															ui.pagList = $(
																	'<ul />',
																	{
																		'class' : 'carousel-pagination'
																	});
															ui.pagItem = $('<li></li>');
															for (var i = 0; i < ui.itemsLen; i++) {
																ui.pagItem
																		.clone()
																		.appendTo(
																				ui.pagList);
															}
															ui.prev
																	.appendTo(ui.ctrl);
															ui.next
																	.appendTo(ui.ctrl);
															ui.pagList
																	.appendTo(ui.ctrl);
															ui.ctrl
																	.appendTo(ui.carousel);
															ui.carousel
																	.find(
																			'.carousel-pagination li')
																	.eq(0)
																	.addClass(
																			'active');
															ui.carousel
																	.find(
																			'.carousel-item')
																	.each(
																			function() {
																				$(
																						this)
																						.hide();
																			});
															ui.carousel
																	.find(
																			'.carousel-item')
																	.eq(0)
																	.show()
																	.addClass(
																			'active');

															// CHANGE ITEM

															var changeImage = function(
																	direction,
																	context) {
																var current = ui.carousel
																		.find('.carousel-item.active');

																if (direction == 'index') {
																	if (current
																			.index() === context
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
																	if (current
																			.index() == 0) {
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
																	if (current
																			.index() == ui.itemsLen - 1) {
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
																		.addClass(
																				'active')
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

														};

														$('.porDetCarousel')
																.each(
																		function() {
																			$(
																					this)
																					.carousel(
																							{
																								autoChange : true
																							});
																		});
													});
								</script>
<script type="text/javascript">
	<%if(session.getAttribute("user")!=null){%>
	$(function(){
		$("#basket").on("click",function(){
			$.ajax({
				url:"/api/miniHome/basket",
				type:"post",
				data : {"userId":'<%=user1.getUserId()%>',"itemNo": $("#itemNo").val()},
				dataType: 'JSON',
				complete:function(r){
				if(r.responseText==1)
					alert("장바구니에 담겼습니다");
				else if(r.responseText==0)
					alert("장바구니에 이미 담긴 상품입니다")
					
				}

			})
		})
	})
	<%}%>
</script>
							
								<!-- Start Style Switcher -->
								<div class="switcher"></div>
								<!-- End Style Switcher -->
</body>
</html>