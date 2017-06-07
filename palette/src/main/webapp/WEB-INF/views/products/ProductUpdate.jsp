<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	Users user1 = (Users) session.getAttribute("user");
%>
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
.order_status {
	font-size: 40px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	color: white;
	background: #694fa8;
	border-radius: 5px;
	margin-bottom: 30px;
}
</style>
</head>

<body>
	<!--Start Header-->
	<!--Start Header-->
	<header id="header">
		<%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp"%>
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

												<li><a href="index.html">Home</a></li>
												<li>상품</li>
											</ul>
										</nav>

										<div class="page_title">
											<h2>상품 정보 수정</h2>
										</div>
									</div>
								</div>
							</div>
						</section>
						<form action="/palette/miniHome/UserAdmin/<%=user1.getUserId()%>/productUpdate/${item.item.itemNo.intValue()}" method="POST"
							enctype="multipart/form-data">
							<section class="content portfolio_single">
								<div class="container">
									<div class="row sub_content">
										<div class="col-lg-8 col-md-8 col-sm-8">
											<!--Project Details Page-->

											<div class="porDetCarousel">
												<div class="carousel-content">
													<c:forEach items="${item.itemImg }" var="img">

														<img style="width: 700px; height: 500px;"
															src="<c:url value='/productImg/${img.imgName }'/>">
														<input type="file" name="${img.imgName}" id="orgFile">
													</c:forEach>
												</div>
											</div>
										</div>


										<div class="col-lg-4 col-md-4 col-sm-4">
											<div class="project_description">
												<div class="widget_title">
													<h2 id="productN"></h2>
													<span></span>
												</div>
												<h1>
													상품 이름:<input type="text" style="font-size: 15px"
														name="itemName" value="${item.item.itemName}">
												</h1>
												<p>상품 내용:</p>
												<textarea rows="4" cols="3" style="width: 200px;"
													name="itemContent" id="itemContent">${item.item.itemContent}</textarea>
										
												<p>
													상품 가격<span></span> <input type="text" name="itemPrice"
														value="${item.item.itemPrice.intValue()}" />원
												</p>

												<p>상품 옵션</p>

												<c:forEach items="${item.itemOption}" var="free">
													<span> <input type="text" name="optionName"
														value="${free.optionName}">
														<input type="hidden" value="${ free.optionNo.intValue()}" name="optionNo">
													</span>
													<br />
												</c:forEach>
												<p>
													상품 종류: <select name="smallKind">
														<c:forEach items="${kind.kind}" var="free">
															<c:choose>
																<c:when test="${free.smallKind==item.item.smallKind}">
																	<option value="${free.smallKind}" selected="selected">${free.smallKind}</option>
																</c:when>
																<c:otherwise>
																	<option value="${free.smallKind}">${free.smallKind}</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</select>
												</p>
												<p>
													등록일<span></span> :${item.item.itemDate}
												</p>




											</div>
											<br>
											<p></p>
											<!-- 즐겨찾기 주문하기 상품평가 상세보기 -->
											<br>
											<div>
												<div>
													<button type="submit" style="color: white;"
														class="btn btn-default btn-lg" id="basket">상품수정</button>
													<!-- 즐겨찾기 주문하기 상품평가 상세보기 -->
												</div>
											</div>

										</div>
									</div>
								</div>
					
							</section>
									</form>
					</section>
				</div>
			</div>
			






		</div>


		<div class="row sub_content">
			<div class="carousel-intro">
				<div class="col-md-12">
					<div class="dividerHeading">



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






						<!-- Start Style Switcher -->
						<div class="switcher"></div>
						<!-- End Style Switcher -->
						<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>