<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
<script type="text/javascript">
	
</script>
</head>
<body>
<h1>장바구니</h1>
	<table border='1' width='1000'>
		<tr>
			<td>번호</td>
			<td>상품이미지</td>
			<td>상품명</td>
			<td>상품가격</td>
			<td>재고</td>
		</tr>
		<c:forEach items="${result.list }" var="basket"  varStatus="index">
		<tr>			
			<td>
				${index.count }
			</td>
			<td>
				<a href="#">${basket.imgName }</a>
			</td>
			<td>
				<a href="#">${basket.itemName}</a>
			</td>
			<td>
				${basket.itemPrice.intValue()}
			</td>
			<td>
				${basket.itemInven.intValue()}
			</td>
			<td>
				<button onclick="location.href='/palette/users/basketDelete?itemNo=${basket.itemNo.intValue()}'">장바구니삭제</button>
			</td>
		</tr>
		</c:forEach>
</table>
			<c:if test="${result.pagination.prev>0 }"><a href="/palette/users/basketList?pageNo=${result.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<a href="/palette/users/basketList?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${result.pagination.next>0 }"><a href="/palette/users/basketList?pageNo=${result.pagination.next}">다음으로</a></c:if>
		<br><br>
	<button onclick="location.href='/palette/users/home'">홈으로</button>
</body>
</html>