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

<!-- 메인 로고 -->
<!-- 검색바 -->

    
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
            						<%if(session.getAttribute("user")!=null){ %>
                               		 </li>
                               		   <li><a href="#" onclick=openHome()>회원 홈페이지</a>
                                    </li>
                                    </li>
                               		   <li><a href="#" onclick=openHomeUp()>홈페이지 수정</a>
                                    </li>
                                     </li>
                               		   <li><a href="#" onclick=openHomeDe()>홈페이지 폐쇄</a>
                                    </li>
                                    <%} %>
                            </ul>
                            
                        </div>
  </div>
</nav>
</div>