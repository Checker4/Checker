<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/12.4.0/classic/ckeditor.js"></script>
</head>
<body>
<div class="section-block">
    <div class="container">
			<h2>문의사항 작성하기</h2>
			<form name="form" method="post" action="<%=contextPath %>/board/saveBoard">
					제목
					<div class="mb-3">
					<input type="text" name="board_title" placeholder="제목을 입력해 주세요" class="form-control">
					</div>
					작성자
					<div class="mb-3">
					<input type="text" name="board_name" value="${sessionScope.userId }" class="form-control" readonly="readonly">	
					</div>	
					내용
					<textarea rows="20" name="board_contents" placeholder="내용을 입력해 주세요" id="content"></textarea>
					<script src="${pageContext.request.contextPath}/resources/js/ckeditor.js"></script>
						
				<button type="submit" class="btn btn-sm btn-primary" class="btn btn-sm btn-primary">저장</button>
				<a href="<%=contextPath %>/board/getBoardList"><button type="button" class="btn btn-sm btn-primary">목록</button></a>
		</form>		
		    </div>
</div>		
				
				<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
</body>
</html>