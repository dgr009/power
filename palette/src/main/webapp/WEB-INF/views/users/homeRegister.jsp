<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%Users users =(Users) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
 <script>
 $(function(){ 
		$("#register").on("click",function(e){
			e.preventDefault(); //기본 이벤트를 차단
			var formData = new FormData();
			formData.append("userId",$("#id").val())
			formData.append("homeTitle",$("#title").val())
			formData.append("homeIntroduce",$("#content").val())
			formData.append("homeDesign",$("#design").val())
			formData.append("file",$("#img")[0].files[0])
			
			$.ajax({
				url:"/palette/users/homeRegister",
				type:"post",
				data: formData,
				complete:function(result){
					console.log(result)
					location.href="/palette/users/home"
				},
				processData:false,
				contentType:false
				
			})
		})
		
	})
 
</script>
   
  </head>
<body>
      <!--Start Header-->
	<!--Start Header-->
	<header id="header">
 <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
		<!--end Header-->
		<div id="menu-bar">
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-lg-3 col-sm-3 ">
						<div id="logo">
							<h1>
							<!-- 이미지 --> 
							</h1>
						</div>
					</div>
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
							<h2>상품 정보 보기</h2>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-8 col-md-8 col-sm-8">
						<!--Project Details Page-->
						<div class="porDetCarousel">
							<div class="carousel-content">
							<c:forEach items="${result.itemImg }" var="img">
							<img class="carousel-item" style="width:700px; height:500px;"
									src="<c:url value='http://localhost:8087/palette/productImg/${img.imgName }'/>">
									</c:forEach>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="project_description">
							<div class="widget_title">
								<h2 id="productN">
									<span></span>
							</div>
							<h1>상품 이름:${result.item.itemName}</h1>
							<p>상품 내용</p>
							<p style="height: 150px;" id="productC">${result.item.itemContent}</p>
							<input type="hidden"  id="itemNo" name="itemNo" value="${result.item.itemNo.intValue()}">
							<p>상품 가격<span></span> :${result.item.itemPrice.intValue()}원
							</p>
							<p>상품 개수: <select name="itemSize">
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
							<option value=5>5</option>
							</select>
							</p>
							<p>상품 옵션: <select name="itemSize">
							<c:forEach items="${result.itemOption}"   var="free">
							<option value="${free.optionName}">${free.optionName}</option>
							<</c:forEach></select></p>
							<p>
								등록일<span></span> :${result.item.itemDate}</p>

							<p>
								상품종류<span></span> :${result.item.smallKind}</p>
							<p>
								남은수량<span></span> :${result.item.itemInven.intValue()}개</p>
							<ul class="progress-skill-bar mrg-0">

							
									
									</div> <br>
									<p></p> <!-- 즐겨찾기 주문하기 상품평가 상세보기 --> <br>
									<div>
										<div>
											<button type="button"
												data-loading-text="Loading..." style="color: white;"
												class="btn btn-default btn-lg" id="basket" >장바구니로</button> <input
												type="button" data-loading-text="Loading..."
												style="color: white;" class="btn btn-default btn-lg"
												value="주문하기"> <a
												href="/hooligan/product/evalutionList?product_no="><input
												type="button" data-loading-text="Loading..."
												style="color: white;" class="btn btn-default btn-lg"
												value="상품평가"></a>

											<!-- 즐겨찾기 주문하기 상품평가 상세보기 -->
										</div>
									</div></li>
							</ul>
						</div>
					</div>
					</form>







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
      
</body>
</html>