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
	        <h1>상품 상세 조회</h1>
	        <hr>
	        <table>
				<tr>
					<th>상품코드</th>
					<td>${ProductDto.product_code }</td>
				</tr>
				<tr>
					<th>상품명</th>
					<td>${ProductDto.product_name }</td>
				</tr>
				<tr>
					<th>가격</th>
					<td>${ProductDto.product_price }</td>
				</tr>
				<tr>
					<th>용량</th>
					<td>${ProductDto.product_size }</td>
				</tr>
				<tr>
					<th>설명</th>
					<td>${ProductDto.product_contents }</td>
				</tr>
				<tr>
					<th>재고</th>
					<td>${ProductDto.product_stock_count }</td>
				</tr>
				<tr>
					<th>품절 여부</th>
					<td>${ProductDto.product_stock_status }</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td>${ProductDto.product_img }</td>
				</tr>
				<tr>
					<th>등록일</th>
					<td>${ProductDto.product_create_date }</td>
				</tr>
				<tr>
					<th>판매점 코드</th>
					<td>${ProductDto.product_store_code }</td>
				</tr>
				<tr>
					<th>이벤트 유무</th>
					<td>${ProductDto.product_event_status }</td>
				</tr>
				<tr>
					<th>이벤트 내용</th>
					<td>${ProductDto.product_event_contents }</td>
				</tr>
				<tr>
					<th>이벤트 기간</th>
					<td>${ProductDto.product_event_start_date }</td>
				</tr>
	        </table>
	    </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>

</body>
</html>