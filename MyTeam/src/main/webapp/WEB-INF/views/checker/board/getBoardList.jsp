<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

</head>
<body>

<div class="section-block">
    <div class="container">
       
        	<h1>문의하기</h1>
	        <hr>
			<table>
				<colgroup>
					<col style="width:5%;" />
					<col style="width:auto;" />
					<col style="width:15%;" />
					<col style="width:10%;" />
					<col style="width:10%;" />
			</colgroup>	
		<thead>
				<c:choose>
					<c:when test="${fn:length(list) > 0 }">
						<tr>
							<th>시퀀스</th>
							<th align="center">제목</th>
							<!-- <th>내용</th> -->
							<th>작성자</th>
			 				<th>작성날짜</th>
							<!--<th>수정날짜</th> -->
							<th>조회수</th>	
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<th>시퀀스</th>
							<th align="center">제목</th>
							<!-- <th>내용</th> -->
							<th>작성자</th>
			 				<th>작성날짜</th>
							<th>조회수</th>	
						</tr>
						<tr>
						 	<td colspan="6">게시물이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.board_code}</td>
						<td align="center">
							<a href="<%=contextPath %>/board/getBoardContent?board_code=${dto.board_code}">
								${dto.board_title}
							</a>
						</td>				
						<%-- <td>${dto.board_contents}</td> --%>
						<td>${dto.board_name}</td>
			 			<td>${dto.board_create_date}</td>
						<%--<td>${dto.board_update_date}</td> --%>
						<td>${dto.board_count}</td>
					</tr>
				</c:forEach>
			</table>

		<a href="<%=contextPath %>/board/writeBoard"><button type="button" class="btn btn-sm btn-primary">글쓰기</button></a>
		
				<!-- search start -->
<!-- 			<div class="search"> -->
<!-- 			 <select name="searchType"> -->
<%-- 			  <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>검색</option> --%>
<%-- 			  <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option> --%>
<%-- 			  <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option> --%>
<%-- 			  <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option> --%>
<%-- 			  <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option> --%>
<!-- 			 </select> -->
			 
<%-- 			 <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/> --%>
			
<!-- 			 <button id="searchBtn">검색</button> -->
			 
			 <script>
			 $(function(){
			  $('#searchBtn').click(function() {
			   self.location = "getBoardList"
			     + '${pageMaker.makeQuery(1)}'
			     + "&searchType="
			     + $("select option:selected").val()
			     + "&keyword="
			     + encodeURIComponent($('#keywordInput').val());
			    });
			 });   
			 </script>
			</div>
		<!-- search end -->
		
		<!-- pageing start  -->
			<div id="pagination mt-50">
			 
			  <c:if test="${pageMaker.prev}">
			   <a class="active" href="<%=contextPath %>/board/getBoardList${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a>
			  </c:if> 
			  
			  <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			   <a class="active" href="<%=contextPath %>/board/getBoardList${pageMaker.makeQuery(idx)}">${idx}</a>
			  </c:forEach>
			    
			  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			   <a class="active" href="<%=contextPath %>/board/getBoardList${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a>
			  </c:if> 
			</div>		
		<!-- pageing end -->

	    
    </div>
</div>
<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
</body>
</html>