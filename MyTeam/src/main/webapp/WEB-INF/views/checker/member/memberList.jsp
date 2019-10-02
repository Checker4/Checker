<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.myapp.checker.dto.MemberDto"%>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>

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
</head>
<body>

<div class="section-block">
	<div class="container">

		<div>

			<%-- <h1>회원 전체 조회${fn:length(list)}</h1> --%>
			<h1>회원 전체 조회(<%= selectResultList.size() %>)</h1>
			<hr>
			<a href="<%=contextPath%>/admin/memberAddForm">
			<button
					type="button" class="btn btn-sm btn-primary">회원추가</button></a>
<%-- 				<form id="searchForm" action="<%=contextPath %>/admin/memberSearch?search_key=member_code&search_value=1" method="post"> --%>
				<form id="searchForm" method="post">
				<select name="search_key" id="select_search_key">
					<option value="">선택</option>
					<option value="member_code">회원코드</option>
					<option value="member_id">아이디</option>
					<option value="member_name">이름</option>
					<option value="member_phone">휴대폰번호</option>
					<option value="member_emil">이메일</option>
					<option value="member_buy_code">구매코드</option>
					<option value="member_level">분류</option>
				</select>
				<input type="text" name="search_value" class="input_class" id="input_search_value">
<!-- 					<input type="button" value="검색" id="btn_search"> -->
				<!-- <input type="submit" value="검색"> -->
				<input type="button" value="검색" id="search">
				
			</form>
			<table border="1">
				<c:choose>
					<c:when test="${fn:length(list) > 0 }">
						<tr style="background-color: gainsboro; text-align: center;">
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

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>
	
<script>
	var idCheck = false;
	var pwdCheck = false;

	$(document).ready(
		function() {
			
			$("#btn_search").click(
				function() {
					var data = {};
					data["searchKey"] = $("#userId").val();
					data["searcValue"] = $("#input_search_value").val();
					var key = $("#select_search_key").val();
					var value = $("#input_search_value").val();
					if (key == null || key == "" || key == undefined) {
						alert("검색 조건을 선택해 주세요.");
					} else {
						$.ajax({
						url : '${pageContext.request.contextPath}/admin/memberSearch?',
						type : "post", //데이터 처리 방식
						data : { //파라미터. 서버로 전송할 데이터
						search_key : key,
						search_value : value
					},
					success : function(data) { //반응이 성공했을 때
					console.log(data);
					},
					error : function(data) { //에러가 발생했을 경우 
					console.log("noooooo");
					}
				});
		}

	}); // end : btn_search
	
	 $("#search").click(function () {
		 $("#searchForm").attr("action", "<%=contextPath %>/admin/memberSearch");
		 $("#searchForm")[0].submit()
        }); //end : search
			
}); // end : function()
</script>

</body>
</html>