<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%Users user=(Users)session.getAttribute("user"); %>

<script>
	$(function(){
		book();
		function book(){
			$.ajax({
				url:"/api/users/bookmarkCheck",
				type:"post",
				data : {"orderId": '<%=user.getUserId()%>', "ownerId":'${userId}'},
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
					data : {"orderId": '<%=user.getUserId()%>', "ownerId":'${userId}' },
					dataType: 'JSON',
					complete:function(r){
						alert("즐겨 찾기 추가 완료");
					}

				})
				
			}else{
				$.ajax({
					url:"/api/users/bookmarkDelete",
					type:"post",
					data : {"orderId":'<%=user.getUserId()%>', "ownerId":'${userId}' },
					dataType: 'JSON',
					complete:function(r){
						alert("즐겨 찾기 해제 완료");
					}

				})
				
			}
			
			book();
		})
		
	})
</script>

<div class="col-md-3 col-sm-3">
	<div id="logo">
		<a id='bookTarget'></a>
	</div>
</div>
