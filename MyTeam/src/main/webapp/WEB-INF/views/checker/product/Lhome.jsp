<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- Search Widget Start -->
<div class="col-md-3 col-sm-6 col-12 col-centered" style="margin:auto; text-align: center;">
	<form class="primary-form-3 mt-20" style="display: block;" id="search_key" method="post">
		<div class="row">
			<div class="col-10">
				<input type="text" name="search_key" placeholder="상품명을 입력하세요">
			</div>
			<div class="col-2 pl-0">
				<button type="button" id="search" class="button-primary button-sm rounded-border full-width h-49 px-0"><i class="fas fa-search"></i></button>
			</div>
		</div>
	</form>
	<!-- Search Widget End -->
</div>

<div class="section-block">
    <div class="container">
        <div class="row">
        	<c:forEach items="${list }" var="dto">
        		<div class="col-md-3 col-sm-6 col-12">
	                <div class="shop-1">
	                    <a href="<%=contextPath %>/product/detail?product_code=${dto.product_code}"><img src="${pageContext.request.contextPath}/resources/img/products/${dto.product_img }" alt="img"/></a>
	                    <div class="shop-classic-sale-img shop-classic-hot-img">
	                        <h4>-10%</h4>
	                    </div>
	                    <h6>${dto.product_name }</h6>
	                    <p>${dto.product_price }원</p>
	                </div>
	            </div>
        	</c:forEach>
        </div>

        <!-- Pagination Start -->
<!--         <div class="pagination mt-50"> -->
<!--             <a href="#" class="active">1</a> -->
<!--             <a href="#">2</a> -->
<!--             <a href="#">3</a> -->
<!--         </div> -->
        <!-- Pagination End -->
    </div>
</div>

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
<script>
	var idCheck = false;
	var pwdCheck = false;

	$(document).ready(
		function() {
	
	 $("#search").click(function () {
		 $("#search_key").attr("action", "<%=contextPath %>/product/homeSearch");
		 $("#search_key")[0].submit()
        }); //end : search
			
}); // end : function()
</script>
</body>
</html>