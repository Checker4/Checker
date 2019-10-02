<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" >
</head>
<body>

    <header>
        <div>
            <ul>
                <li><a href="<%=contextPath %>/index">INDEX</a></li>
                <li><a href="<%=contextPath %>/member/signup">회원가입</a></li>
                <li><a href="<%=contextPath %>/member/login">로그인</a></li>
                <li><a href="<%=contextPath %>/member/logout">로그아웃</a></li>
                <li><a href="<%=contextPath %>/board/question_board">1:1문의 게시판</a></li>
                <li><a href="<%=contextPath %>/board/question_write">1:1문의 글쓰기</a></li>
                <li><a href="<%=contextPath %>/board/admin_member">회원관리</a></li>
                <li><a href="<%=contextPath %>/product/admin_stock">재고관리</a></li>
                <li><a href="<%=contextPath %>/product/search">상품검색</a></li>
                <li><a href="<%=contextPath %>/product/detail">상품상세</a></li>
                <li><a href="<%=contextPath %>/product/cart">장바구니</a></li>
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