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
<div class="section-block">
    <div class="container">
			<h2>board Content</h2><br>
			<h4>${boardDto.board_code}</h4>	<br>		
				<c:out value="${boardDto.board_title}"/><br>
					<c:out value="${boardDto.board_create_date}"/>,<c:out value="${boardContent.reg_dt}"/><br>
					${boardDto.board_contents}<br>
				작성자 : <c:out value="${boardDto.board_name}"/><br>
				<a href="<%=contextPath %>/board/getBoardList"><button type="button" class="btn btn-sm btn-primary">목록</button></a>
				<a href="<%=contextPath %>/board/updateBoard?board_code=${boardDto.board_code}"><button type="button" class="btn btn-sm btn-primary">수정</button></a>
				<a href="<%=contextPath %>/board/deleteBoard?board_code=${boardDto.board_code}"><button type="button" class="btn btn-sm btn-primary">삭제</button></a>
	 </div>
</div>					
<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
</body>
</html>