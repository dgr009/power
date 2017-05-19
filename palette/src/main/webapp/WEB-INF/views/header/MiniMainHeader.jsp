<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

</script>

<%if(session.getAttribute("user")!=null){ %>
<%@ include file="/WEB-INF/views/header/UserHeader.jsp" %>
<%}else{%>
<%@ include file="/WEB-INF/views/header/Noheader.jsp" %>
<%} %>
<%@include file="/WEB-INF/views/users/register.jsp" %>
<!-- 메인 로고 -->
