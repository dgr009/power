<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
    height: 20px;
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
$(function(){
	$("#scoreBtn").on("click",function(){
		alert("aerd");
		
// 		$.ajax({
// 			url:"/palette/users/orderComplete?orderNo="+$(this).data("ono"),
// 			type:"get",
// 			complete:function(){
// 				window.open("http://localhost:8087/palette/users/score?orderNo="+$(this).data("ono"),"Score","scrollbars=yes,toolbar=yes,location=yes,resizable=yes,status=yes,menubar=yes,resizable=yes,width=400,height=400,left=300,top=300");		
// 			}

// 		})
	})

})

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
    <%@ include file="/WEB-INF/views/side/InfoSide.jsp" %>
    <!-- 랭킹 끝 -->
 <div class="col-sm-8"> 
		<div class="well well-lg"style="padding-left: 50px; padding-right: 50px; height: 600px; padding-top: 10px;"><h3><i class="fa fa-laptop"></i> 주문내역</h3>
	<table width="80%" class="table table-striped table-hover" >
		<thead>
		<tr>
			<th style="text-align: center;">번호</th>
			<th style="text-align: center;">상품명</th>
			<th style="text-align: center;">총 가격</th>
			<th style="text-align: center;">개수</th>
			<th style="text-align: center;">옵션</th>
			<th style="text-align: center;">주문날짜</th>
			<th style="text-align: center;">주문상태</th>
		</tr>
		<thead>
		<tbody>
		<c:forEach items="${result.list }" var="order"  varStatus="index">
		<tr>			
			<td>
				${index.count }
			</td>
			<td>
				<a href="/palette/miniHome/${order.userId }/productMain/${order.itemNo }">${order.itemName }</a>
			</td>
			<td>
				${order.orderPrice.intValue() }
			</td>
			<td>
				${order.orderSize.intValue()}
			</td>
			<td>
				${order.optionName}
			</td>
			<td>
				${order.orderDate }
			</td>
			<td>
				${order.orderState }
			</td>
			<td>
				<c:if test="${order.orderState=='배송준비중' }"><button onclick="location.href='/palette/users/orderDelete?orderNo=${order.orderNo.intValue()}'">주문 취소</a></c:if>
				<c:if test="${order.orderState=='배송중' }"><button id='scoreBtn' data-ono='${order.orderNo.intValue()}'>주문 확정</a></c:if>
			</td>
		</tr>
		</c:forEach>
		</tbody>
</table>
			<c:if test="${result.pagination.prev>0 }"><a href="/palette/users/orderList?pageNo=${result.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<a href="/palette/users/orderList?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${result.pagination.next>0 }"><a href="/palette/users/orderList?pageNo=${result.pagination.next}">다음으로</a></c:if>
		<br><br>
	<button onclick="location.href='/palette/users/main'">홈으로</button>
  </div>
		</div>

						 <!-- 광고 사이드 오른쪽-->
    <%@ include file="/WEB-INF/views/side/AdsSide.jsp" %>
    <!-- 광고 사이드 오른쪽 끝 -->
  </div>
</div>
<br><br><br><br><br><br><br><br>

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
</html>