<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>

<%
	String storeName = "";
	String storeLocation = "";	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

</head>
<body>
                        
<!-- Shop Single START -->
<div class="section-block">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-12">
                <!-- Product Images & Alternates -->
                <div class="product-images">
                    <!-- Begin Product Images Slider -->
                    <div class="main-img-slider">
                        <figure>
                            <a href="#" data-size="1400x1400">
<!--                                 <img src="http://via.placeholder.com/570x600"  alt="" /> -->
                                <img src="${pageContext.request.contextPath}/resources/img/products/${ProductDto.product_img }" alt="img"/>
                            </a>
                        </figure>
                    </div>
                    <!-- End Product Images Slider -->
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-12">
                <div class="single-product">
                    <h2>${ProductDto.product_name }</h2>
                    <div class="product-review-area">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <span>(1 customer review)</span>
                    </div>

                    <!-- Price Start -->
                    <div class="single-product-price">
                        <h4>${ProductDto.product_price }원</h4>
                    </div>
                    <!-- Price End -->
                    <p>${ProductDto.product_contents }</p>
                    <!-- Quantity Form and Button Start -->
                    <form method="post" action="<%=contextPath %>/product/addCart">
                       <div class="mb-3">
                     <input type="hidden" name="product_price" value="${ProductDto.product_price }">
                     <input type="hidden" name="product_name" value="${ProductDto.product_name }">
                     <input type="hidden" name="product_img" value="${ProductDto.product_img }">
                  </div>
                             <div class="quantity mt-30">                                                                                                                                                
                         <input type="number" name="product_count" min="1" max="99" step="1" value="1">
                         <button type="submit" class="add-to-cart-button">카트에 담기</button>
                          </div>
                    </form>
                    <!-- Quantity Form and Button End -->

                    <div class="product-categories">
                        <div class="display-b">
                            <span>상품 용량: </span>
                            <ul>
                                <li>${ProductDto.product_size }</li>
                            </ul>
                        </div>
                        <div class="display-b">
                            <span>상품 설명: </span>
                            <ul>
                                <li>${ProductDto.product_contents }</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <section>
        	<hr>
        	<table border="1" style="text-algin: center; margin: auto; width:700px;">
        		<c:choose>
					<c:when test="${fn:length(list) > 0 }">
						<tr>
							<th>번호</th>
							<th>편의점명</th>
							<th>편의점위치</th>
							<th>재고</th>
						</tr>
					</c:when>
				</c:choose>
				<c:forEach items="${list }" var="dto" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td><a href="#map" id="click_storeName" onclick="mapFunction('${dto.store_name }', '${dto.store_location }');">${dto.store_name }</a></td>
						<td id="click_storeLocation">${dto.store_location }</td>
						<td>${dto.stock_count }</td>
					</tr>
				</c:forEach>
			</table>
			<hr>
        </section>
        
        
        
        <!-- Map Start -->
		      <div id="map" style="width:700px;height:500px; margin:auto;"></div>
		         <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d2614813ff270cd90bf5a7444f83288f&libraries=services"></script>
		            <script>
// 		            function mapFunction (nameHi, locationHi) {
// 		            	alert("plz111");
		            	console.log("plz111");
		            	
		               var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		                   mapOption = {
		                       center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		                       level: 3 // 지도의 확대 레벨
		                   };  
		               
		               // 지도를 생성합니다    
		               var map = new kakao.maps.Map(mapContainer, mapOption); 
		               
		               // 주소-좌표 변환 객체를 생성합니다
		               var geocoder = new kakao.maps.services.Geocoder();
		               
		               // 주소로 좌표를 검색합니다
		               geocoder.addressSearch('서울특별시 영등포구 당산동6가 324-5', function(result, status) {
		               
		                   // 정상적으로 검색이 완료됐으면 
		                    if (status === kakao.maps.services.Status.OK) {
		               
		                       var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		               
		                       // 결과값으로 받은 위치를 마커로 표시합니다
		                       var marker = new kakao.maps.Marker({
		                           map: map,
		                           position: coords
		                       });
		               
		                       // 인포윈도우로 장소에 대한 설명을 표시합니다
		                       var infowindow = new kakao.maps.InfoWindow({
		                           content: '<div style="width:150px;text-align:center;padding:6px 0;">CU 당산중앙점</div>'
		                       });
		                       infowindow.open(map, marker);
		               
		                       // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		                       map.setCenter(coords);
		                   } 
		               });
// 		            }
		               function mapFunction (nameHi, locationHi) {
			            	console.log("pl22222z");
			            	
			            	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			                   mapOption = {
			                       center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			                       level: 3 // 지도의 확대 레벨
			                   };  
			               
			               // 지도를 생성합니다    
			               var map = new kakao.maps.Map(mapContainer, mapOption); 
			               
			               // 주소-좌표 변환 객체를 생성합니다
			               var geocoder = new kakao.maps.services.Geocoder();
			               
			               // 주소로 좌표를 검색합니다
			               geocoder.addressSearch(locationHi, function(result, status) {
			               
			                   // 정상적으로 검색이 완료됐으면 
			                    if (status === kakao.maps.services.Status.OK) {
			               
			                       var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			               
			                       // 결과값으로 받은 위치를 마커로 표시합니다
			                       var marker = new kakao.maps.Marker({
			                           map: map,
			                           position: coords
			                       });
			               
			                       // 인포윈도우로 장소에 대한 설명을 표시합니다
			                       var infowindow = new kakao.maps.InfoWindow({
//			                           content: '<div style="width:150px;text-align:center;padding:6px 0;">' + ${name} + '</div>'
//			                        	   content: '<div style="width:150px;text-align:center;padding:6px 0;">CU 당산중앙점</div>'
			                           content: '<div style="width:150px;text-align:center;padding:6px 0;">'+nameHi+'</div>'
			                       });
			                       infowindow.open(map, marker);
			               
			                       // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			                       map.setCenter(coords);
			                   } 
			               });    
			            }

		            </script>
		      
		      <!-- Map END -->
       
      
    </div>
</div>
<!-- Shop Single END -->
 <%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>   

</body>
</html>