<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="col-lg-2 col-md-2 col-sm-2">
							<div class="pricingTable"><!-- BODY BOX-->
								<div class="pricingTable-header"><!-- HEADER BOX-->
									<span class="heading">홈페이지 랭킹</span>
								</div><!--/ BODY BOX-->

								<div class="pricingContent">
										<ul>
										<c:forEach items="${rank }" var="r" >
											<li>
												<span><img alt="" src="<c:url value="/homeimg/${r.homeImg} }"/>"></span> ${r.userId }<strong>님</strong>
											</li>
										</c:forEach>
										</ul>
								</div><!-- /  CONTENT BOX-->

							</div><!--/ BODY BOX-->
</div>