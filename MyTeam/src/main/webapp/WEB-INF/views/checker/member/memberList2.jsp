<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.myapp.checker.dto.MemberDto"%>
<%
	String contextPath = request.getContextPath();
%>

<%
	System.out.println(this.getClass().getName());
	Enumeration en = request.getAttributeNames();
	while (en.hasMoreElements()) {
		String name = (String) en.nextElement();
		System.out.println(this.getClass().getName() + "::name=" + name);
	}
	List<MemberDto> selectResultList = (List) request.getAttribute("list");
	System.out.println(this.getClass().getName() + "::selectResultList.size()=" + selectResultList.size());
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checker</title>
<link rel="shortcut icon" href="img/logos/logo-shortcut.png" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Bootstrap CSS-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<!-- Themify icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">

<!-- Font-Awesome -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css">

<!-- Icomoon -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">

<!-- Plugins -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/plugins.css">

<!-- Animate.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">

<!-- Owl Carousel  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">

<!-- Revolution Slider  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/rev-settings.css">

<!-- Revolution Slider  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/rev-settings.css">

<!-- Main Styles -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styles.css"
	id="main_styles">

<!-- 체커 -->
<%-- 	<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" > --%>
</head>
<body>

	<!-- Preloader Start-->
	<div id="preloader">
		<div class="lds-ellipsis">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- Preloader End -->

	<!-- Top-Bar START -->
	<div id="top-bar" class="hidden-md-down">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-12">
					<ul class="top-bar-info">
						<li><i class="fas fa-phone"></i>ㅇㅇㅇ님 안녕하세요!</li>
					</ul>
				</div>
				<div class="col-md-3 col-12">
					<!--                 <ul class="social-icons hidden-sm"> -->
					<!--                     <li><a href="#"><i class="fab fa-facebook"></i></a></li> -->
					<!--                     <li><a href="#"><i class="fab fa-twitter"></i></a></li> -->
					<!--                     <li><a href="#"><i class="fab fa-linkedin"></i></a></li> -->
					<!--                 </ul> -->
					<ul class="top-bar-info">
						<li><a href="<%=contextPath%>/member/login">로그인</a></li>
						<li><a href="<%=contextPath%>/member/signup">회원가입</a></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Top-Bar END -->

	<!-- Navbar START -->
	<header>
		<nav id="navigation4" class="container navigation">
			<div class="nav-header">
				<a class="nav-brand" href="<%=contextPath%>/home"> <img
					src="${pageContext.request.contextPath}/resources/img/minji/logo2.png"
					alt="logo" class="main-logo" id="main_logo">
				</a>
				<div class="nav-toggle"></div>
			</div>
			<div class="nav-menus-wrapper">
				<ul class="nav-menu align-to-right">
					<li><a href="<%=contextPath%>/home">Home</a></li>
					<li><a href="#">상품검색</a>
						<ul class="nav-dropdown">
							<li><a href="#">지점별 검색</a></li>
							<li><a href="#">상품별 검색</a></li>
						</ul></li>
					<li><a href="<%=contextPath%>/product/cart">장바구니</a></li>
					<li><a href="<%=contextPath%>/board/getBoardList">문의하기</a></li>
					<li><a href="#">Admin</a>
						<ul class="nav-dropdown">
							<li><a href="<%=contextPath%>/admin/memberList">회원관리</a></li>
							<li><a href="<%=contextPath%>/product/stockList">재고관리</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Navbar END -->

	<div class="section-block">
		<div class="container">

			<div>

				<%-- <h1>회원 전체 조회${fn:length(list)}</h1> --%>
				<h1>회원 전체 조회(<%= selectResultList.size() %>)</h1>
				<hr>
				<a href="<%=contextPath%>/admin/memberAddForm"><button
						type="button" class="btn_class">회원추가</button></a>
				<%-- 	        <form action="<%=contextPath %>/admin/memberSearch?search_key=hi&search_value=${param.search_value}" method="post"> --%>
				<select name="search_key" id="select_search_key">
					<option value="">선택</option>
					<option value="member_code">회원코드</option>
					<option value="member_id">아이디</option>
					<option value="member_name">이름</option>
					<option value="member_phone">휴대폰번호</option>
					<option value="member_emil">이메일</option>
					<option value="member_buy_code">구매코드</option>
					<option value="member_level">분류</option>
				</select> <input type="text" name="search_value" class="input_class"
					id="input_search_value"> <input type="button" value="검색"
					id="btn_search">
				<!-- 				<input type="submit" value="검색"> -->
				<!-- 			</form> -->
				<table border="1">
					<c:choose>
						<c:when test="${fn:length(list) > 0 }">
							<tr>
								<th>회원코드</th>
								<th>아이디</th>
								<th>이름</th>
								<th>휴대폰번호</th>
								<th>이메일</th>
								<th>등록일</th>
								<th>구매코드</th>
								<th>분류</th>
								<th></th>
							</tr>
						</c:when>
					</c:choose>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.member_code }</td>
							<td>${dto.member_id }</td>
							<td>${dto.member_name }</td>
							<td>${dto.member_phone }</td>
							<td>${dto.member_email }</td>
							<td>${dto.member_create_date }</td>
							<td>${dto.member_buy_code }</td>
							<td>${dto.member_level }</td>
							<td style="width: 30px; display: inline;">
								<div style="width: 30px; display: inline;">
									<a
										href="<%=contextPath %>/admin/memberUpdateForm?member_code=${dto.member_code}"><button
											type="button" class="btn_class">수정</button></a> <a
										href="<%=contextPath %>/admin/memberDelete?member_code=${dto.member_code}"><button
											type="button" class="btn_class">삭제</button></a>
								</div>
							</td>
						</tr>
					</c:forEach>
				</table>

			</div>
		</div>
	</div>

	<!--Footer START-->
	<footer>
		<div class="footer-1">
			<div class="container">

				<div class="footer-1-bar">
					<p>Checker © 2019. All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</footer>
	<!--Footer END-->

	<!-- Scroll to top button Start -->
	<a href="#" class="scroll-to-top"><i class="fas fa-chevron-up"></i></a>
	<!-- Scroll to top button End -->

	<!-- Jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

	<!-- Plugins JS-->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>

	<!-- Chart JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/Chart.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/utils.js"></script>

	<!-- Navbar JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/navigation.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/navigation.fixed.js"></script>

	<!-- Revolution Slider -->
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/jquery.themepunch.tools.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/jquery.themepunch.revolution.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.actions.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.kenburn.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.migration.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.parallax.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.navigation.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.slideanims.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.video.min.js"></script>

	<!-- Google Map -->
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	<script>
		var idCheck = false;
		var pwdCheck = false;

		$(document)
				.ready(
						function() {

							$("#btn_search")
									.click(
											function() {
												var data = {};
												data["searchKey"] = $("#userId")
														.val();
												data["searcValue"] = $(
														"#input_search_value")
														.val();

												var key = $(
														"#select_search_key")
														.val();
												var value = $(
														"#input_search_value")
														.val();

												if (key == null || key == ""
														|| key == undefined) {
													alert("검색 조건을 선택해 주세요.");
												} else {
													$
															.ajax({
																url : '${pageContext.request.contextPath}/admin/memberSearch?',
																type : "post", //데이터 처리 방식
																data : { //파라미터. 서버로 전송할 데이터
																	search_key : key,
																	search_value : value
																},
																success : function(
																		data) { //반응이 성공했을 때
																	console
																			.log(data);
																},
																error : function(
																		data) { //에러가 발생했을 경우 
																	console
																			.log("noooooo");
																}
															});

												}

											});

						});
	</script>

</body>
</html>