<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%Users bookUser = (Users) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
<!-- CSS FILES -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<div class="col-xs-12 col-xs-12 col-xs-12" ><br><br>

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10" >
	
	
	<div style="width: 1000px; height: 500px; border : 1px solid silver; border-bottom: none; ; position: relative;"> 
	
	<p style="padding-top:30px; padding-left: 30px;">
		<span style="font-size: 1.15em; font-weight: bold; color:#727cb6;"><%=bookUser.getUserId() %></span>님의 <span class="highlight light">즐겨찾기</span> 추가 목록 
	</p>
	<p style="font-weight: bold; padding-left: 30px;">총 <span class="highlight default">${r.cnt .intValue()}</span>개</p>
	<br>
		<table style="width: 998px;"> 
		<thead >
			<tr style="background: #fafafa;  border: 1px solid #e6e6e6; border-left: none; border-right: none; border-top: 2px solid silver;">
				<th style="text-align: center; height: 35px; width: 65px;">NO</th>
				<th style="text-align: center; width: 100px;">사진</th>
				<th style="text-align: center;">홈페이지 이름</th>
				<th style="text-align: center; width: 220px;"><i class="fa fa-user" style="color:gray;">&nbsp;</i>주인장 ID </th>
			</tr>
		</thead>
		<tbody style="border: 1px solid #e6e6e6; border-left: none;  border-right: none;">
			<c:forEach items="${r.list }" var="b"  varStatus="i">
			<tr style="border: 1px solid #e6e6e6; border-left: none; border-right: none;">
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">${i.count.intValue() }</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;"><a href="/palette/miniHome/${b.ownerId}/main"><img src="<c:url value="/resources/images/${b.homeImg }"/>" alt="" class="info" style="padding:5px; border-radius:15px; width: 70px; height: 54px;"></a></td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: left; padding-left: 30px;"><a href="/palette/miniHome/${b.ownerId}/main">${b.homeTitle }</a></td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center; border-right: none;"><a href="/palette/miniHome/${b.ownerId}/main">${b.ownerId }</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	   
	<ul class="pagination" style="margin-left: 380px; position: absolute; bottom: 23px; height: 10px;">
		 <c:if test="${r.pagination.prev>0 }"><li><a href="/palette/users/bookmarkList?pageNo=${r.pagination.prev}">«</a></li></c:if>
			<c:forEach var="i" begin="${r.pagination.startPage}" end="${r.pagination.endPage}">
				<li><a href="/palette/users/bookmarkList?pageNo=${i}">${i} </a></li>
			</c:forEach>
		<c:if test="${r.pagination.next>0 }"><li><a href="/palette/users/bookmarkList?pageNo=${r.pagination.next}">»</a></li></c:if>
	</ul>
</div>
	
	
	
	
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	</div>
</div>
<!-- 회원 정보 아래박스 -->
<%@ include file="/WEB-INF/views/footer/InfoFooter.jsp" %>

<!-- footer -->
<%@include file="/WEB-INF/views/footer/normalFooter.jsp" %>


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