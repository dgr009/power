<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>asd</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
<script type="text/javascript">
	
	//최초 페이지가 로딩되면 한번만 새로고침
	if (self.name != 'reload') {
	    self.name = 'reload';
	    self.location.reload(true);
	}
	else self.name = ''; 

</script>
</head>
<body>
	<h3>자유게시판 게시글</h3>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>이름</td>
			<td>조회수</td>
			<td>게시시간</td>
			<td>댓글 수</td>
		</tr>
		<c:forEach items="${mini2.list }" var="free">
		<tr>			
			<td>
				${free.freeNo.intValue() }
			</td>
			<td>
				<a href="/palette/miniHome/${userId }/freeView/${free.freeNo.intValue()}">${free.freeTitle }</a>
			</td>
			<td>
				${free.freeName }
			</td>
			<td>
				${free.freeHits.intValue() }
			</td>
			<td>
				${free.freeDate }
			</td>
			<td>
				${free.freeRepleCnt.intValue() }
			</td>	
		</tr>
		</c:forEach>
		</table>

			
		
		<form>
		<input type="button" value="게시글 작성" 
		onclick="window.location.href='/palette/miniHome/${userId }/freeRegister'" />
		</form>
		<button onclick="location.href='/palette/users/home'">홈으로</button>
</body>
</html>








