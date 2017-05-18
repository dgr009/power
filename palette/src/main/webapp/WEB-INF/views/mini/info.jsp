<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% Users user = (Users) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>asd</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
<script type="text/javascript">
	$(function(){
		
		function print(result){
			$("#comment").empty();
			//alert("작동")
			
			$.each(result.reple, function(idx, reply){
				
				//alert(reply)
				var str = "<tr><td>"+reply.freeRepleNo+"</td>";
				str = str + "<td>"+reply.freeRepleName+"</td>";
				str = str + "<td>" +reply.freeRepleContent + "</td>";
				str = str + "<td>"+reply.freeRepleDate+"</td>";
				str = str + "<input type='hidden' value='"+reply.freeRepleName+"' name='freeRepleName' class='repleName'>";
				str = str + "<input type='hidden' value='"+reply.freeRepleNo+"' name='freeRepleNo' class='freeRepleNo'>";
				str = str + "<input type='hidden' value='"+reply.freeNo+"' name='freeNo' class='freeNo'>";
				
				if(reply.freeRepleName=='<%=user.getUserId()%>'){
					str = str + "<td id='nnn'><button class='deleteReple' data-cno='"+reply.freeRepleNo+"' >삭제</button></td>";
					str = str + "<td><button class='updateReple' data-freeRepleNo='"+reply.freeRepleNo+"'>수정</button></td></tr>";
				}
				console.log(str);	// 찍어보기
				
				$("#comment").append(str);
				$("#freeRepleContent").val("");
				//alert("작동완료")
			})
			
		}
	
		
		$("#updateReple").on("click",function(){
			
		})
		
		//추가하고 추가한 결과를 뱉는다
		$("#btn1").on("click",function(){
			$.ajax({
				url:"/api/miniHome/${mini.free.userId }/freeRegister/${mini.free.freeNo.intValue()}",
				type:"post",
				data : {"freeRepleContent":$("#freeRepleContent").val(), "freeRepleName":$("#freeRepleName").val()},
				dataType: 'JSON',
				success : function(result){
					//alert(result.reple);
					print(result);
				}
			})
		})
		
		
		$("#comment").on("click",".deleteReple",function(){
			$.ajax({
				url:"/api/miniHome/${mini.free.userId }/freeDelete/"+$(this).data("cno"),
				type:"post",          
				data : {"freeNo":$(".freeNo").val(),"freeRepleNo":$(this).data("cno") },
				dataType: 'JSON',
				success : function(result){
					print(result);
				}
			})
		})
		
		
		
	})
	
</script>
</head>
<body>
	<h1>회원 정보</h1>
	<form action="/palette/miniHome/${mini.free.userId }/freeUpdate/${mini.free.freeNo.intValue()}" method="get">
		<table border="1">
			<tr><td>게시글번호</td><td>${mini.free.freeNo.intValue() } </td></tr>
			<tr><td>제목</td><td>${mini.free.freeTitle}</td></tr>
			<tr><td>작성자</td><td>${mini.free.freeName}</td></tr>
			<tr><td>조회수</td><td>${mini.free.freeHits.intValue()}</td></tr>
			<tr><td>내용</td><td>${mini.free.freeContent}</td></tr>
			<tr><td>게시시간</td><td>${mini.free.freeDate}</td></tr>
			<tr><td>아이디</td><td>${mini.free.userId}</td></tr>
			<tr><td>댓글 수</td><td>${mini.free.freeRepleCnt.intValue()}</td></tr>
		</table>
		<input type="submit" value="수정">
	</form>
	<form action="/palette/miniHome/${mini.free.userId }/freeDelete/${mini.free.freeNo.intValue()}" method="post">
		<input type="submit" value="삭제">
		<input type="hidden" value="${mini.userId }" name="userId" id="userId">
		<input type="hidden" value="${mini.freeNo.intValue() }" name="freeNo" id="freeNo">
	</form>
	<table>
		<thead>
		<tr>
				<td>댓글번호</td>
				<td>작성자</td>
				<td>내용</td>
				<td>등록시간</td>
		</tr>
		</thead>
		<tbody id="comment">
		 <c:forEach items="${mini.reple }" var="reple">
			<tr>
				<td>${reple.freeRepleNo.intValue() }</td>
				<td>${reple.freeRepleName }</td>
				<td>${reple.freeRepleContent }</td>
				<td>${reple.freeRepleDate }</td>
				
				<input type="hidden" value="${reple.freeRepleName }" name="repleName" class="repleName">
				<input type="hidden" value="${reple.freeRepleNo.intValue() }" name="freeRepleNo" class="freeRepleNo">
				<input type="hidden" value="${reple.freeNo.intValue() }" name="freeNo" class="freeNo">
				

				<c:set var="name" value="<%=user.getUserId() %>" />
				<c:set var="freeName" value="${reple.freeRepleName }" />
				
				<c:if test="${name eq freeName}">
				   	<td><button class="deleteReple" data-cno="${reple.freeRepleNo.intValue() }">삭제</button></td>
					<td><button class="updateReple" data-freeRepleNo="${reple.freeRepleNo.intValue() }">수정</button></td>
				</c:if>
		
			</tr>
		</c:forEach>
		
		</tbody>
		<input type="hidden" value='<%=user.getUserId() %>' name='freeRepleName' id="freeRepleName">
		<input type="text" id="freeRepleContent" name="freeRepleContent">
		<button id="btn1">추가</button>
	</table>
	
</body>
</html>