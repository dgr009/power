<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("user")!=null){ %>
<%@ include file="/WEB-INF/views/header/UserHeader.jsp" %>
<%}else if(session.getAttribute("admin")!=null){%>
<%@include file="/WEB-INF/views/header/AdminHeader.jsp" %>
<%}else{ %>
<%@ include file="/WEB-INF/views/header/Noheader.jsp" %>
<%}%>
<%@include file="/WEB-INF/views/users/register.jsp" %>
