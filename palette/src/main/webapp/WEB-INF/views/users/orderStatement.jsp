
<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%Users orderUser = (Users) session.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파워파워</title>
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
</head>
<body>
<!-- 헤더 -->
<header id="header">
<%@ include file="/WEB-INF/views/header/MainTopHeader.jsp" %>
 <%@ include file="/WEB-INF/views/header/MainInfoHeader.jsp" %>
</header>
<!-- 헤더 끝 -->

<!-- 회원 정보 -->
<div class="col-xs-12 col-xs-12 col-xs-12"  style=""><br><br>

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10" >
	
	
	<div style="width: 1000px; height: 200px; border : 1px solid silver;  position: relative;"> 
	
	<div style="width:355px; height: 114px; display: inline-block;  margin-left: 40px;  border-right: 1px dashed gray; position: absolute; bottom:40px;">
	
	<p style="padding-top: 5px; font-size: 1.4em; font-weight: bold;">&nbsp;&nbsp;&nbsp;팔레트 포인트 잔액 : 
	<span style="color:#727cb6; font-size: 1.2em;">
	<%=orderUser.getUserPoint() %></span>&nbsp;원</p><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<button type="button" id="btnLogin" class="btn_login03"style="border-radius:20px; text-align: center; width :95px; height :35px; border:0; background:#727cb6; margin-left: 10px; position: absolute; top: 50px;">
	<span id="login" style="color:white; font-size: 0.9em; font-weight: bold;">
				이용권 구매</span>
	</button>
	<button type="button" id="btnLogin" class="btn_login03"style="border-radius:20px; text-align: center; width :110px; height :35px; border:0; background:white; border:1px solid #727cb6; margin-left: 5px; position: absolute; top: 50px; left: 150px;">
	<span id="login" style="color:#727cb6; font-size: 0.9em; font-weight: bold;">
				이용권 구매내역</span>
			</button>
	</div>
	<div style="width:550px; height : 114px; display: inline-block;  margin : 35px; margin-top: 50px; position: absolute; left:400px; margin-left: none; " >
		<p>팔레트 포인트는 이용권을 구매하실 때 사용 하실 수 있습니다.</p>
		<p>결제금액은 팔레트 충전금액에 부가가치세 10%가 포함된 실제 결제된 금액입니다.</p>
		<p>팔레트 충전금액과 내역은 마이페이지 > 결제목록에서 확인 가능합니다.</p>
	</div>
	
	
	</div>
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
<br>	
	<table style="width: 1000px;"> 
		<thead >
			<tr style="background: #fafafa;  border: 1px solid #e6e6e6; border-left: none; border-right: none; border-top: 2px solid silver;">
				<th style="text-align: center; height: 20px; width: 65px;">NO</th>
				<th style="text-align: center; width: 160px;">날짜</th>
				<th style="text-align: center;">상품명</th>
				<th style="text-align: center; width: 180px;">옵션</th>
				<th style="text-align: center; width: 65px;">개수</th>
				<th style="text-align: center; width: 100px;">금액</th>
				<th style="text-align: center;width: 100px;">주문상태</th>
				<th style="text-align: center;width: 40px;"></th>
			</tr>
		</thead>
		<tbody style="border: 1px solid #e6e6e6; border-left: none;  border-right: none;">
		<c:forEach items="${result.list }" var="order"  varStatus="index">
			<tr style="border: 1px solid #e6e6e6; border-left: none; border-right: none;">
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">${index.count }</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${order.orderDate }</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: left; padding-left: 30px;"><a href="/palette/miniHome/${order.userId }/productMain/${order.itemNo }">${order.itemName }</a></td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${order.optionName}</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${order.orderSize.intValue()}</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${order.orderPrice.intValue() }<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">${order.orderState }</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">
					<c:if test="${order.orderState=='배송준비중' }"><a href="/palette/users/orderDelete?orderNo=${order.orderNo.intValue()}">취소</a></c:if>
					<c:if test="${order.orderState=='배송중' }"><a href="#" id='reviewBtn' onclick="review(${order.orderNo.intValue()})">확정</a></c:if>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>	<br>
	 	<ul class="pagination" style="margin-left: 380px; position: absolute; bottom: 23px; height: 10px;">
		 <c:if test="${result.pagination.prev>0 }"><li><a href="/palette/users/orderList?pageNo=${result.pagination.prev}">«</a></li></c:if>
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<li><a href="/palette/users/orderList?pageNo=${i}">${i} </a></li>
			</c:forEach>
		<c:if test="${result.pagination.next>0 }"><li><a href="/palette/users/orderList?pageNo=${result.pagination.next}">»</a></li></c:if>
	</ul>
	<br><br><br><br>
	</div>

<!-- footer -->
<%@include file="/WEB-INF/views/footer/normalFooter.jsp" %>
	
</body>
	
	
	<script type="text/javascript">
	function review(orderNo){
		//show 호출시 넘겨준 값을 이용하여 ajax 등을 통해 modal 을 띄울때 동적으로 바뀌어야 하는 값을 얻어온다.  
		//얻어온 값을 이용하여, modal 에서 동적으로 바뀌어야 하는 값을 바꾸어 준다..  
		$.ajax({
			url:"/palette/users/orderComplete?orderNo="+orderNo,
			type:"get",
			complete:function(){
			}	
		})
		window.open("http://localhost:8087/palette/users/review?orderNo="+orderNo,"리뷰");
	}
	
	</script>
	
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
</html>
