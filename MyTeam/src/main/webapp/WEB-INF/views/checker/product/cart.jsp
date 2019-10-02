<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- Shop Cart START -->
<div class="section-block grey-bg">
    <div class="container">
        <div class="row">
        	<c:choose>
               	<c:when test="${fn:length(cartlist) > 0 }">
		            <div class="col-md-8 col-sm-10 col-12" id="1">
						<c:forEach items="${cartlist}" var="dto">
							<div class="row">		
								<div class="shop-cart-box full-width">
									<div class="row no-gutters">
										<div class="col-md-1 col-sm-1 col-12 pr-0">
											<div class="button-close">
												<a href="<%=contextPath %>/product/cartDelete?product_code=${dto.product_code}"><i class="ti-close"></i></a>
											</div>
										</div>
											<div class="col-md-2 col-sm-2 col-12">
												<div class="shop-cart-box-img">
													<img src="${pageContext.request.contextPath}/resources/img/products/${dto.product_img }" alt="img">
												</div>
											</div>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<div class="shop-cart-box-info">
													<h4>
														<a href="#">${dto.product_name}</a>
													</h4>
													<span>개당 가격 : ${dto.product_price} 원</span>
												</div>
											</div>
											<div class="col-md-3 col-sm-3 col-12">
												<div class="shop-cart-box-quantity quantity">
													<h6>구매수량 :${dto.product_count}ea </h6>
												</div>
											</div>
											<div class="col-md-2 col-sm-2 col-xs-12">
												<div class="shop-cart-box-price">
													<h5>구매 금액 ${dto.product_price * dto.product_count}원</h5>
												</div>
											</div>
									</div>					
								</div>				
							</div>
						</c:forEach>
	     			</div>
	
		            <!-- right -->
		            <div class="col-md-4 col-sm-10 col-12">
		                <div class="shop-cart-info-price clearfix">
		                    <div class="total-price">
								<c:forEach items="${cartlist}" var="dto">
									<c:set var="sum" value="${sum + dto.product_price * dto.product_count}"/>
								</c:forEach>					
		                        <p>Total :<strong> ${sum}원 </strong></p> 
		                    </div>
		                </div>
		                <div class="mt-25 right-holder">
		                    <a href="#" class="button-md button-primary">Order Now</a>
		                </div>
		            </div>
			    </c:when>
			    <c:otherwise>
			    	<div style="text-algin:center; margin:auto;">
			    		<div style="text-algin:center; margin:auto;"> 장바구니가 비어있습니다.</div>
			    		<img src="${pageContext.request.contextPath}/resources/img/minji/error.png" alt="없음" style="width: 180px;">
			    	</div>
			    	
			    </c:otherwise>
            </c:choose>
         
        </div>
    </div>
</div>
<!-- Shop Cart END -->
<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
</body>
</html>