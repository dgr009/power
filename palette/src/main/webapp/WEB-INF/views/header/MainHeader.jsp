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
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="col-lg-1 col-md-1 col-sm-1"></div>
<div class="col-lg-10 col-md-10 col-sm-10" style="padding: 0;">
<div class="col-lg-2 col-md-2 col-sm-2" style="text-align: right; padding: 0;">
        <div class="ab" style="margin-top: 23px; margin-right: 60px;">
        	<h1><a href="/palette/users/main"><img alt="" src="<c:url value="/resources/images/로고5.png"/>" style="width:230px; height: 60px;"></a></h1>
        </div><br>
</div>
<div class="col-lg-4 col-md-4 col-sm-4" style="padding: 0;">
	        <!-- 검색 바 -->
	    <div class="ab" style="margin-top: 30px; margin-left: 60px;">
	        <div class="widget widget_search" style="border: 2px solid #727cb6; border-radius: 15px; height: 45px; width: 300px;">
				<div class="site-search-area" >
					<form method="get" id="site-searchform" action="/palette/main/search">
						<div style=" border-radius: 6px;">
							<input style="color:#727cb6; border-bottom-left-radius:10px; border-top-left-radius:10px; background-color:transparent;border:0 solid black;" class="input-text" name="search" id="s" placeholder="상품명 검색..." type="text">
							<input id="searchsubmit" value="Search" type="submit" style=" border-bottom-right-radius: 10px; border-top-right-radius: 10px;">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 검색 바 -->
</div>



<div class="col-lg-6 col-md-6 col-sm-6">
	 <div class="ab" style="padding-left: 55px; margin-top: 23px; ">
	<a href="../icon/id-card-o" style="color: #727cb6;"><i class="fa fa-money fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../icon/paypal" style="color: #727cb6;"><i class="fa fa-paypal fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="../icon/cart-arrow-down" style="color: #727cb6;"><i class="fa fa-cart-arrow-down fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="../icon/sitemap" style="color: #727cb6;"><i class="fa fa-sitemap fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">상품권 등록</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">포인트 충전</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">장바구니</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">등급별 혜택</span>
</div>
</div>
</div>
<div class="col-lg-1 col-md-1 col-sm-1"></div>
<!-- 메인 로고 -->
<!-- 검색바 -->

<div class="col-lg-12 col-md-12 col-sm-12" style="border-bottom: 1px solid #727cb6;">
	<div class="navbar-collapse collapse" style="width: 1050px; margin-right: 110px; ">
                            <ul class="nav navbar-nav sm" data-smartmenus-id="1495757258893402" >
                                <li><a href="#" style="color:black; width: 100px; text-align: center; font-family: 'Nanum Gothic';">사이트 소개</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">공지사항</a>
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li><a href="#"></a></li> -->
<!--                                         <li><a href="#">코트</a></li> -->
<!--                                         <li><a href="#">니트</a></li> -->
<!--                                         <li><a href="#">정장</a></li> -->
<!--                                         <li><a href="#">티셔츠</a></li> -->
<!--                                         <li><a href="#">팬츠</a></li> -->
<!--                                     </ul> -->
                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">메뉴2</a>
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li> -->
<!--                                             <a href="#" class="has-submenu" style="color:black;">악세사라<span class="sub-arrow">...</span></a> -->
<!--                                             <ul class="dropdown-menu"> -->
<!--                                                 <li><a href="#">케이스</a></li> -->
<!--                                                 <li><a href="#">브로치</a></li> -->
<!--                                             </ul> -->
<!--                                         </li> -->
<!--                                         <li><a href="#">잡화</a></li> -->
<!--                                         <li><a href="#">가방</a></li> -->
     
<!--                                     </ul> -->
                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">메뉴3</a>
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li><a href="#">과일</a> -->
       
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="portfolio_masonry_3.html">견과</a> -->
 
<!--                                         </li> -->

<!--                                         <li> -->
<!--                                             <a href="portfolio_single.html">음료</a> -->

<!--                                         </li> -->
<!--                                          <li> -->
<!--                                             <a href="portfolio_single.html">과자</a> -->

<!--                                         </li> -->
<!--                                           <li> -->
<!--                                             <a href="portfolio_single.html">유제품</a> -->
             
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="portfolio_single.html">냉동식품</a> -->
               
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="portfolio_single.html">통조림</a> -->
                           
<!--                                         </li> -->
                                        
                                        
<!--                                     </ul> -->
                                    </li>
                                    
 									<li><a href="#" class="has-submenu" style="color:black; width: 90px; text-align: center; margin-left:310px;">자유게시판</a>
                               		 </li>
                               		 <li><a href="#" class="has-submenu" style="color:black; width: 90px; text-align: center; ">문의게시판</a>
                               		 </li>
                               		 </ul>
                        </div>
</div>
