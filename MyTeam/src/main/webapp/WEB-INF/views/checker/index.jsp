<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/main.css' />" rel="stylesheet">
<%-- <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" > --%>
</head>
<body>

    <header>
        <div>
            <ul>
                <li><a href="<%=contextPath %>/index">INDEX</a></li>
                <br>
                <li><a href="<%=contextPath %>/member/signup">회원가입</a></li>
                <li><a href="<%=contextPath %>/member/login">로그인</a></li>
                <li><a href="<%=contextPath %>/member/logout">로그아웃</a></li>
                <br>
                <li><a href="<%=contextPath %>/board/">1:1문의 게시판</a></li>
                <li><a href="<%=contextPath %>/board/">1:1문의 글쓰기</a></li>
                <li><a href="<%=contextPath %>/board/">회원관리</a></li>
                <br>
                <li><a href="<%=contextPath %>/product/list">1.상품전체조회</a></li>
                <li><a href="<%=contextPath %>/product/search">1-1.상품검색</a></li>
                <li><a href="<%=contextPath %>/product/detail">2.상품상세</a></li>
                <li><a href="<%=contextPath %>/product/cart">3.장바구니</a></li>
                <li><a href="<%=contextPath %>/product/stockList">4.재고전체조회</a></li>
                <li><a href="<%=contextPath %>/product/stockAdd">4-1.재고추가</a></li>
                <li><a href="<%=contextPath %>/product/stockAdd">4-2.재고조건조회</a></li>
                <li><a href="<%=contextPath %>/product/pay">상품결제</a></li>
            </ul>
        </div>
    </header>
    
    <section>
        
    </section>
    
    <footer>
        
    </footer>
    
</body>
</html>