<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Checker</title>
	<link rel="shortcut icon" href="img/logos/logo-shortcut.png" />	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Bootstrap CSS-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<!-- Themify icons -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
	<!-- Font-Awesome -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css">  
	<!-- Icomoon -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	<!-- Plugins -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/plugins.css">
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">	
	<!-- Owl Carousel  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
    <!-- Revolution Slider  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rev-settings.css">
	<!-- Revolution Slider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rev-settings.css">
	<!-- Main Styles -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" id="main_styles">	
	<!-- 체커 -->
<%-- 	<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" > --%>

</head>
<body>
<!-- Preloader Start-->
<div id="preloader">
    <div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>
</div>
<!-- Preloader End -->

<!-- Top-Bar START -->
<div id="top-bar" class="hidden-md-down">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-12">
            	<ul class="top-bar-info">
                    <li>
<!--                     	<i class="fas fa-phone"></i> -->
						<c:choose>
	                		<c:when test="${sessionScope.userId != null}">
					            <img src="${pageContext.request.contextPath}/resources/img/user.png" alt="userImg" style="width: 20px;">
		                    	<span style="color: royalblue;"> ${sessionScope.userId }</span>
		                    	  님 안녕하세요!
					        </c:when>
					        <c:otherwise>
					        </c:otherwise>
	                	</c:choose>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 col-12">
<!--                 <ul class="social-icons hidden-sm"> -->
<!--                     <li><a href="#"><i class="fab fa-facebook"></i></a></li> -->
<!--                     <li><a href="#"><i class="fab fa-twitter"></i></a></li> -->
<!--                     <li><a href="#"><i class="fab fa-linkedin"></i></a></li> -->
<!--                 </ul> -->
                <ul class="top-bar-info">
                	<c:choose>
                		<c:when test="${sessionScope.userId == null}">
				            <li><a href="<%=contextPath %>/member/login">로그인</a></li>
		                   	<li><a href="<%=contextPath %>/member/signup">회원가입</a></li>
				        </c:when>
				        <c:otherwise>
				        	<li><a href="<%=contextPath %>/member/logout">로그아웃</a></li>
				        </c:otherwise>
                	</c:choose>
                    <li> </li>
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
            <a class="nav-brand" href="<%=contextPath %>/home">
                <img src="${pageContext.request.contextPath}/resources/img/minji/logo2.png" alt="logo" class="main-logo" id="main_logo">
            </a>
            <div class="nav-toggle"></div>
        </div>
        <div class="nav-menus-wrapper">
            <ul class="nav-menu align-to-right">
                <li><a href="<%=contextPath %>/home">Home</a></li>
<!--                 <li><a href="#">상품검색</a> -->
<!--                     <ul class="nav-dropdown"> -->
<!--                         <li><a href="#">지점별 검색</a></li> -->
<!--                         <li><a href="#">상품별 검색</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
                <li><a href="<%=contextPath %>/product/cartlist">장바구니</a></li>
                <li><a href="<%=contextPath %>/board/getBoardList">문의하기</a></li>
                <li><a href="#">Admin</a>
                    <ul class="nav-dropdown">
                        <li><a href="<%=contextPath %>/admin/memberList">회원관리</a></li>
                        <li><a href="<%=contextPath %>/product/stockList">재고관리</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- Navbar END -->
</body>
</html>