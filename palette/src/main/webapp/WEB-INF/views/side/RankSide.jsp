<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="col-lg-2 col-md-2 col-sm-2" style="margin-left: 100px; margin-top: 35px;">
	<div id="rank">
		<div id="week">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" style="color: #C5C5E6;" id="cup"><i class="fa fa-trophy fa-3x"></i></a>
			&nbsp;
			<span style="padding-bottom: 20px;  color: white; font-size: 1.4em; padding-top: 10px; position: absolute; top:3px; ">&nbsp;실시간 랭킹 순위</span>
			<c:forEach items="${list.rank }" var="r" varStatus="index">
				<div class="ranked" id="rank${index.count }">
					<c:choose>
	    				<c:when test="${index.count }==1">
	        				<div class="nomal" id="gold">${index.count }</div><!-- 순위 -->
	        				
	    				</c:when>
	    				<c:when test="${index.count }==2">
					       	<div class="nomal" id="silver">${index.count }</div><!-- 순위 -->
					    </c:when>
					    <c:when test="${index.count }==3">
					       	<div class="nomal" id="bronze">${index.count }</div><!-- 순위 -->
					    </c:when>
	    				<c:otherwise>
	        				<div class="nomal">${index.count }</div>
	    				</c:otherwise>
					</c:choose>
						
					<span><a href="/palette/miniHome/${r.userId }/main"><img src="<c:url value="/homeimg/${r.homeImg}"/>" alt="" class="info"></a></span>
					<span class="usersName">${r.userId }</span>
				</div>
			</c:forEach>
		</div>
	</div>
</div>