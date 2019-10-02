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

<div class="section-block">
    <div class="container">
    
        <div>
	        <h1>상품 전체 조회${fn:length(list)}</h1>
	        <hr>
	        <a href="<%=contextPath %>/product/stockAddForm"><button type="button" class="btn btn-sm btn-primary">상품추가</button></a>
	        <form id="searchForm" method="post">
		        <select name="search_key" id="select_search_key">
				    <option value="">선택</option>
				    <option value="product_code">상품코드</option>
				    <option value="product_name">상품명</option>
				    <option value="product_price">상품가격</option>
				</select>
				<input type="text" name="search_value" class="input_class" >
				<input type="button" value="검색" id="search">
			</form>
	        <table border="1">
	        	<c:choose>
	        		<c:when test="${fn:length(list) > 0 }">
	        			<tr style="background-color: gainsboro; text-align: center;">
	        				<th>상품코드</th>
	        				<th>상품명</th>
	        				<th>가격</th>
	        				<th>용량</th>
	        				<th>설명</th>
	        				<th>재고</th>
	        				<th>품절 여부</th>
	        				<th>이미지</th>
	        				<th>등록일</th>
	        				<th>판매점코드</th>
	        				<th>이벤트유무</th>
	        				<th>이벤트내용</th>
	        				<th>이벤트기간</th>
	        				<th></th>
			            </tr>
	        		</c:when>
	        	</c:choose>
	        	<c:forEach items="${list }" var="dto">
	        		<tr>
		                <td>${dto.product_code }</td>
		                <td><a href="<%=contextPath%>/product/stockDetail?product_code=${dto.product_code} ">${dto.product_name }</a></td>
<%-- 		                <td>${dto.product_name }</td> --%>
		                <td>${dto.product_price }</td>
		                <td>${dto.product_size }</td>
		                <td>${dto.product_contents }</td>
		                <td>${dto.product_stock_count }</td>
		                <td>${dto.product_stock_status }</td>
		                <td>${dto.product_img }
		                	<img src="${pageContext.request.contextPath}/resources/img/products/${dto.product_img }" alt="product" class="stock-list-product-img-class" style="width: 80px;">
		                </td>
		                <td>${dto.product_create_date }</td>
		                <td>${dto.product_store_code }</td>
		                <td>${dto.product_event_status }</td>
		                <td>${dto.product_event_contents }</td>
		                <td>${dto.product_event_start_date }</td>
		                <td style="width: 30px; display: inline;">
		                	<div style="width: 30px; display: inline;">
			                	<a href="<%=contextPath %>/product/stockUpdateForm?product_code=${dto.product_code}"><button type="button" class="btn_class">수정</button></a>
								<a href="<%=contextPath %>/product/stockDelete?product_code=${dto.product_code}" ><button type="button" class="btn_class">삭제</button></a>
		                	</div>
		                </td>
		            </tr>
	        	</c:forEach>
	        </table>
	    </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
<script>
	var idCheck = false;
	var pwdCheck = false;

	$(document).ready(
		function() {
	
	 $("#search").click(function () {
		 $("#searchForm").attr("action", "<%=contextPath %>/product/stockSearch");
		 $("#searchForm")[0].submit()
        }); //end : search
			
}); // end : function()
</script>
</body>
</html>