<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	        <h1>회원 수정</h1>
	        <hr>
	        <form action="<%=contextPath %>/admin/memberUpdate" method="post">
	        	<input type="hidden" name="member_code" value="${MemberDto.member_code}">
	        	<input type="hidden" name="member_create_date" value="${MemberDto.member_create_date}">
		        <table>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id" value="${MemberDto.member_id}" required class="input_class"></td>
					</tr>
<!-- 					<tr> -->
<!-- 						<th>비밀번호</th> -->
<%-- 						<td><input type="password" name="password" value="${MemberDto.member_password}" required class="input_class"></td> --%>
<!-- 					</tr> -->
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" value="${MemberDto.member_name}" required class="input_class"></td>
					</tr>
					<tr>
						<th>휴대폰번호</th>
						<td><input type="text" name="phone" value="${MemberDto.member_phone}" class="input_class"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="email" value="${MemberDto.member_email}" required class="input_class"></td>
					</tr>
					<tr>
						<th>구매 코드</th>
						<td><input type="text" name="buy_code" value="${MemberDto.member_buy_code}" class="input_class"></td>
					</tr>
					<tr>
						<th>분류</th>
						<td><input type="text" name="level" value="${MemberDto.member_level}" class="input_class"></td>
					</tr>
		        </table>
		        <input type="submit" value="수정">
				<input type="reset" value="돌아가기">
		    </form>
	    </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>

</body>
</html>