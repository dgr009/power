<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%Users basketUser = (Users) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
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
  <script>
  $(function(){
		$(".del").on("click",function(){
			$.ajax({
				url:"/api/users/basketDelete",
				type:"post",
				data : {"userId": "<%=basketUser.getUserId()%>", "itemNo":$(this).data("ii") },
				dataType: 'JSON',
				complete:function(r){
					self.location.reload();
				}

			})
		})
  })
  </script>
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
 <div class="col-xs-12 col-xs-12 col-xs-12" ><br><br>

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10" >
	
	
	<div style="width: 1000px; height: 500px; border : 1px solid silver; border-bottom: none; ; position: relative;"> 
	
	<p style="padding-top:30px; padding-left: 30px;">
		<span style="font-size: 1.15em; font-weight: bold; color:#727cb6;"><%=basketUser.getUserId() %></span>님의 <span class="highlight light">장바구니</span> 추가 목록 
	</p>
	<p style="font-weight: bold; padding-left: 30px;">총 <span class="highlight default">${result.cnt.intValue() }</span>개</p>
	<br>
		<table style="width: 998px;"> 
		<thead >
			<tr style="background: #fafafa;  border: 1px solid #e6e6e6; border-left: none; border-right: none; border-top: 2px solid silver;">
				<th style="text-align: center; height: 35px; width: 65px;">NO</th>
				<th style="text-align: center; width: 100px;">이미지</th>
				<th style="text-align: center;">상품명</th>
				<th style="text-align: center; width: 120px;">판매가</th>
				<th style="text-align: center; width: 65px;">재고</th>
				<th style="text-align: center; width: 140px;">판매자</th>
				<th style="text-align: center;width: 85px;">비고</th>
			</tr>
		</thead>
		<tbody style="border: 1px solid #e6e6e6; border-left: none;  border-right: none;">
		<c:forEach items="${result.list }" var="basket"  varStatus="index">
			<tr style="border: 1px solid #e6e6e6; border-left: none; border-right: none;">
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">${index.count }</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;"><a href="/palette/miniHome/${basket.ownerId }/productMain/${basket.itemNo.intValue() }"><img src="<c:url value="/resources/images/portfolio/${basket.itemImg }"/>" alt="" class="info" style="padding:5px; border-radius:15px; width: 70px; height: 54px;"></a></td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: left; padding-left: 30px;"><a href="/palette/miniHome/${basket.ownerId }/productMain/${basket.itemNo.intValue() }">${basket.itemName}</a></td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${basket.itemPrice.intValue()}<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${basket.itemInven.intValue()}</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">${basket.ownerId}</td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;"><span class="rrr" style="width:40px; border: 1px solid gray; border-radius: 30px; padding:6px; font-size: 0.9em; color:gray;  text-align: center;  "><a href="#" class="del" data-ii="${basket.itemNo.intValue() }">삭제</a></span></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	    
	<ul class="pagination" style="margin-left: 380px; position: absolute; bottom: 23px; height: 10px;">
		 <c:if test="${result.pagination.prev>0 }"><li><a href="/palette/users/basketList?pageNo=${result.pagination.prev}">«</a></li></c:if>
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<li><a href="/palette/users/basketList?pageNo=${i}">${i} </a></li>
			</c:forEach>
		<c:if test="${result.pagination.next>0 }"><li><a href="/palette/users/basketList?pageNo=${result.pagination.next}">»</a></li></c:if>
	</ul>
	</div>
	
	
	
	
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	</div>
</div>
 
 <!-- 회원 정보 footer -->
<%@ include file="/WEB-INF/views/footer/InfoFooter.jsp" %>

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