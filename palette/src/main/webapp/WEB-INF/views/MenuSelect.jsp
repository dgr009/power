<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

</script>
<body>
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
                     
                     <c:forEach items="${kind.bigKind}" var="big">
                     	<li><a href="#">${big.bigKind}</a>
                     		<ul class="dropdown-menu">
                     			<c:forEach items="${kind.smallKind }" var="small">
                     				<c:if test="${big.bigKind==small.bigKind}"><li><a href="/hooligan/main/notice/list">${small.smallKind}</a></li></c:if>
                     			</c:forEach>
                     		</ul>
                     		</li>
                     </c:forEach>                    
                                 <li><a href="#">게시판</a>
                                    <ul class="dropdown-menu">
                                    
                                    <li><a href="/hooligan/main/notice/list"> 공지사항</a> </li>
                                    
                                    <li><a href="/hooligan/main/faq/list">문의사항</a> </li>
                                    
                                    <li><a href="/hooligan/main/free/list">자유게시판</a></li>
                                    </ul>
                                    </li>
                            </ul>
                        </div>
                    </div>
                	</div></div>
            
            
</body>
</html>