<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(session.getAttribute("user")!=null){ %>
<%@ include file="/WEB-INF/views/header/UserHeader.jsp" %>
<%}else{%>
<%@ include file="/WEB-INF/views/header/Noheader.jsp" %>
<%} %>
<!-- 메인 로고 -->
<div class="col-lg-3 col-md-3 col-sm-3" style="text-align: right;">
        <div class="ab">
        	<h1><a href="/palette/users/main"><img alt="" src="<c:url value="/resources/images/로고로고로고.png"/>" style="width:230px; height: 60px;"></a></h1>
        </div><br>
</div>
<!-- 메인 로고 -->
<!-- 검색바 -->
<div class="col-lg-6 col-md-6 col-sm-6">
	    <div class="ab" style="margin-top: 30px;">
	        <div class="widget widget_search">
				<div class="site-search-area">
					<form method="get" id="site-searchform" action="#">
						<div>
							<input class="input-text" name="s" id="s" placeholder="상품명 검색..." type="text">
							<input id="searchsubmit" value="Search" type="submit">
						</div>
					</form>
				</div>
			</div>
		</div>

</div>
<!-- 검색 바 -->
<!-- 광고 -->
<div class="col-lg-3 col-md-3 col-sm-3">
	 <div class="ab" style="padding-left: 14px;">
        	<h1><a href="index.html"><img alt="" src="<c:url value="/resources/images/광고.JPG"/>" style="width:230px; height: 60px;"></a></h1>
        </div>
</div>
<!-- 광고 -->
<!-- 세번째 헤더 -->
<div class="col-lg-12 col-md-12 col-sm-12">
	<nav class="navbar navbar-inverse" style="background: white; margin-left: 47px; margin-right: 30px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/palette/users/main" style="color:navy;">Mall Palette</a>
    </div>
    
   <div class="navbar-collapse collapse" >
                            <ul class="nav navbar-nav">
                                <li><a href="#" >브랜드</a>

                                </li>

                                <li><a href="#">의류</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">점퍼</a></li>
                                        <li><a href="#">코트</a></li>
                                        <li><a href="#">니트</a></li>
                                        <li><a href="#">정장</a></li>
                                        <li><a href="#">티셔츠</a></li>
                                        <li><a href="#">팬츠</a></li>
                                    </ul>
                                </li>

                                <li><a href="#" >수제품</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">악세사라</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">케이스</a></li>
                                                <li><a href="#">브로치</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">잡화</a></li>
                                        <li><a href="#">가방</a></li>
     
                                    </ul>
                                </li>

                                <li><a href="#">식품</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">과일</a>
       
                                        </li>
                                        <li>
                                            <a href="portfolio_masonry_3.html">견과</a>
 
                                        </li>

                                        <li>
                                            <a href="portfolio_single.html">음료</a>

                                        </li>
                                         <li>
                                            <a href="portfolio_single.html">과자</a>

                                        </li>
                                          <li>
                                            <a href="portfolio_single.html">유제품</a>
             
                                        </li>
                                        <li>
                                            <a href="portfolio_single.html">냉동식품</a>
               
                                        </li>
                                        <li>
                                            <a href="portfolio_single.html">통조림</a>
                           
                                        </li>
                                        
                                        
                                    </ul>
                                    </li>
                                     <li><a href="#">게시판</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="elements.html">자유 게시판</a></li>
                                        <li><a href="columns.html"> 문의 게시판</a></li>
                                        <li><a href="typography.html">공지 사항</a></li>
            							</ul>
            							
                               		 </li>
                               		   <li><a href="#">회원 홈페이지</a>
                                    </li>
                            </ul>
                            
                        </div>
  </div>
</nav>
</div>

<!-- 세번째 헤더 -->
</body>
</html>