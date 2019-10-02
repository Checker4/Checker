<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	        <h1>상품 추가</h1>
	        <hr>
	        <form action="<%=contextPath %>/product/stockAdd" method="post">
		        <table>
	<!-- 				<tr> -->
	<!-- 					<th>상품코드</th> -->
	<%-- 					<td><input type="text" name="name" value="${ProductDto.product_name}" required class="input_class"></td> --%>
	<!-- 				</tr> -->
					<tr>
						<th>상품명</th>
						<td><input type="text" name="name" value="${ProductDto.product_name}" required class="input_class"></td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input type="text" name="price" value="${ProductDto.product_price}" required class="input_class"></td>
	<%-- 					<td>${ProductDto.product_price }</td> --%>
					</tr>
					<tr>
						<th>용량</th>
						<td><input type="text" name="size" value="${ProductDto.product_size}" required class="input_class"></td>
	<%-- 					<td>${ProductDto.product_size }</td> --%>
					</tr>
					<tr>
						<th>설명</th>
						<td><input type="text" name="contents" value="${ProductDto.product_contents}" class="input_class"></td>
	<%-- 					<td>${ProductDto.product_contents }</td> --%>
					</tr>
					<tr>
						<th>재고</th>
						<td><input type="text" name="stock_count" value="${ProductDto.product_stock_count}" required class="input_class"></td>
	<%-- 					<td>${ProductDto.product_stock_count }</td> --%>
					</tr>
					<tr>
						<th>품절 여부</th>
						<td><input type="text" name="stock_status" value="${ProductDto.product_stock_status}" class="input_class"></td>
	<%-- 					<td>${ProductDto.product_stock_status }</td> --%>
					</tr>
					
	<!-- 				<tr> -->
	<!-- 					<th>등록일</th> -->
	<%-- 					<td><input type="text" name="name" value="${ProductDto.product_name}" class="input_class"></td> --%>
	<%-- 					<td>${ProductDto.product_create_date }</td> --%>
	<!-- 				</tr> -->
					<tr>
						<th>판매점 코드</th>
						<td><input type="text" name="store_code" value="${ProductDto.product_store_code}" class="input_class"></td>
	<%-- 					<td>${ProductDto.product_store_code }</td> --%>
					</tr>
					<tr>
						<th>이벤트 유무</th>
						<td><input type="text" name="event_status" value="${ProductDto.product_event_status}" class="input_class"></td>
	<%-- 					<td>${ProductDto.product_event_status }</td> --%>
					</tr>
					<tr>
						<th>이벤트 내용</th>
						<td><input type="text" name="event_contents" value="${ProductDto.product_event_contents}" class="input_class"></td>
	<%-- 					<td>${ProductDto.product_event_contents }</td> --%>
					</tr>
					<tr>
						<th>이벤트 시작일</th>
						<td><input type="date" name="event_start_date" value="${ProductDto.product_event_start_date}"></td>
	<%-- 					<td>${ProductDto.product_event_start_date }</td> --%>
					</tr>
					<tr>
						<th>이벤트 종료일</th>
						<td><input type="date" name="event_end_date" value="${ProductDto.product_event_end_date}"></td>
	<%-- 					<td>${ProductDto.product_event_end_date }</td> --%>
					</tr>
					<tr>
						<th>이미지</th>
						<td><input type="text" name="img" value="${ProductDto.product_img}" class="input_class"></td>
						<td>${ProductDto.product_img }</td>
					</tr>
		        </table>
		        <input type="submit" value="등록">
				<input type="reset" value="취소">
		    </form>
	    </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>

</body>
</html>