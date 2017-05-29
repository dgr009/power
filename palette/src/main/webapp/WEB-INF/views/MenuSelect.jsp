<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
     <div class="col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container" role="navigation">
                        <!--  <div class="container">-->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                            	<li><a href="#">홈</a>
                                    <ul class="dropdown-menu">
                                    <li><a href="/palette/miniHome/${userId}/main">홈으로</a> </li>
                                    <li><a href="/palette/miniHome/${userId}/Info">홈소개</a> </li>
                                    </ul>
                                </li>
                     
                     <c:forEach items="${kind.bigKind}" var="big">
                     	<li><a href="#">${big.bigKind}</a>
                     		<ul class="dropdown-menu">
                     			<c:forEach items="${kind.smallKind }" var="small">
                     				<c:if test="${big.bigKind==small.bigKind}"><li><a href="/palette/miniHome/${userId}/productKind/${small.smallKind}">${small.smallKind}</a></li></c:if>
                     			</c:forEach>
                     		</ul>
                     	</li>
                     </c:forEach>                    
                                 <li><a href="#">게시판</a>
                                    <ul class="dropdown-menu">
                                    
                                    <li><a href="/palette/miniHome/${userId}/noticeList"> 공지사항</a> </li>
                                    
                                    <li><a href="/palette/miniHome/${userId}/freeList">자유게시판</a> </li>
                                    
                                    </ul>
                                  </li>
                            </ul>
                        </div>
                    </div>
                	</div></div>
      