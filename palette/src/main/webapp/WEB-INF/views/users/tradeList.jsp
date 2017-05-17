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
<h1>회원 포인트 전환 내역</h1>
	<table border='1' width='1000'>
		<tr>
			<td>번호</td>
			<td>거래날짜</td>
			<td>거래금액</td>
			<td>거래내용</td>
		</tr>
		<c:forEach items="${tradeList }" var="trade"  varStatus="index">
		<tr>			
			<td>
				${index.count }
			</td>
			<td>
				${trade.tradeDate }
			</td>
			<td>
				${trade.tradePoint.intValue() }
			</td>
			<td>
				${trade.tradeContent}
			</td>
		</tr>
		</c:forEach>
</table>
			
	<button onclick="location.href='/palette/users/home'">홈으로</button>
</body>
</html>