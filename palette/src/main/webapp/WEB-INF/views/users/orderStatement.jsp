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
<h1>회원 주문 내역</h1>
	<table border='1' width='1000'>
		<tr>
			<td>번호</td>
			<td>상품명</td>
			<td>총 가격</td>
			<td>개수</td>
			<td>옵션</td>
			<td>주문날짜</td>
			<td>주문상태</td>
		</tr>
		<c:forEach items="${result.list }" var="order"  varStatus="index">
		<tr>			
			<td>
				${index.count }
			</td>
			<td>
				<a href="#">${order.itemName }</a>
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
				<c:if test="${order.orderState=='배송준비중' }"><button onclick="location.href='/palette/users/orderDelete?orderNo=${order.orderNo.intValue()}'">주문 취소하기</button></c:if>
			</td>
		</tr>
		</c:forEach>
</table>
			<c:if test="${result.pagination.prev>0 }"><a href="/palette/users/orderList?pageNo=${result.pagination.prev}">이전으로</a></c:if>
			
			<c:forEach var="i" begin="${result.pagination.startPage}" end="${result.pagination.endPage}">
				<a href="/palette/users/orderList?pageNo=${i}">${i} </a>
			</c:forEach>
			
		<c:if test="${result.pagination.next>0 }"><a href="/palette/users/orderList?pageNo=${result.pagination.next}">다음으로</a></c:if>
		<br><br>
	<button onclick="location.href='/palette/users/home'">홈으로</button>
</body>
</html>