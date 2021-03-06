<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Users userBook=(Users)session.getAttribute("user"); %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function(){
		<% if((session).getAttribute("user")!=null){ %>
		book();
		function book(){
			$.ajax({
				url:"/api/users/bookmarkCheck",
				type:"post",
				data : {"orderId": '<%=userBook.getUserId()%>', "ownerId":'${userId}'},
				dataType: 'JSON',
				complete:function(r){
					if(r.responseText==0){
						$("#bookTarget").html("즐겨찾기추가");
					}
					else{
						$("#bookTarget").html("즐겨찾기해제");
					}
				}	
			})
			
		}
		
		$("#bookTarget").on("click",function(){
			if($(this).html()=='즐겨찾기추가'){
				$.ajax({
					url:"/api/users/bookmark",
					type:"post",
					data : {"orderId": '<%=userBook.getUserId()%>', "ownerId":'${userId}' },
					dataType: 'JSON',
					complete:function(r){
						alert("즐겨 찾기 추가 완료");
						book();
					}

				})
				
			}else{
				$.ajax({
					url:"/api/users/bookmarkDelete",
					type:"post",
					data : {"orderId":'<%=userBook.getUserId()%>', "ownerId":'${userId}' },
					dataType: 'JSON',
					complete:function(r){
						alert("즐겨 찾기 해제 완료");
						book();
					}

				})
				
			}
			
			book();
		})
		<%}%>
		
	})
</script>
    
<a id='bookTarget' class="slider-read FromLeft">즐겨찾기</a>
