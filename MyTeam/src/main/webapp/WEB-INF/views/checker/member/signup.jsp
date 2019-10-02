<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="/WEB-INF/views/checker/layout/header.jsp"%>
<% String checking = "false"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<div class="section-block">
    <div class="container">
    
        <div>
        	<h1>회원가입</h1>
	        <hr>

			<form action="<%=contextPath %>/admin/memberAdd" method="post">
	            <table>
	                <tr>
	                    <td id="title">아이디</td>
	                    <td>
	                        <input type="text" name="id" id="input_id" maxlength="20" required>
<%-- 	                        <a href="<%=contextPath%>/member/idCheck?member_id=1 "><button type="button" class="btn_class">중복확인</button></a> --%>
	                        <input type="button" value="중복확인" name="idCheck" id="btn_id">
	                    </td>
	                </tr>
	                <tr>
	                    <td id="title">비밀번호</td>
	                    <td>
	                        <input type="password" name="password" maxlength="15" required id="input_pwd">
	                    </td>
	                </tr>
	                <tr>
	                    <td id="title">비밀번호 확인</td>
	                    <td>
	                        <input type="password" name="passwordCheck" maxlength="15" required id="input_pwd_check">
	                        <div id="pwd_check"></div>
	                    </td>
	                </tr>
	                <tr>
	                    <td id="title">이름</td>
	                    <td>
	                        <input type="text" name="name" maxlength="40" required id="input_name">
	                    </td>
	                </tr>
	                 <tr>
	                    <td id="title">휴대전화</td>
	                    <td>
	                        <input type="text" name="phone" placeholder="010-1234-5678" id="input_phone"/>
	                    </td>
	                </tr>
	                <tr>
	                <tr>
	                    <td id="title">이메일</td>
	                    <td>
	                        <input type="text" name="email" maxlength="30" required placeholder="checker@gmail.com" id="input_email">
<!-- 	                        @ -->
<!-- 	                        <select name="email_2"> -->
<!-- 	                            <option>naver.com</option> -->
<!-- 	                            <option>daum.net</option> -->
<!-- 	                            <option>gmail.com</option> -->
<!-- 	                            <option>nate.com</option> -->
<!-- 	                        </select> -->
	                    </td>
	                </tr>
	            </table>
	            <br>
	            
<%-- 	            <c:set var="validation" value="<%=checking %>"/> --%>
<%-- 				<c:choose> --%>
<%-- 			        <c:when test="${validation == false}"> --%>
<!-- 			            <input type="button" value="join" title="회원가입을 합니다^_^&" id="btn_join_false"> -->
<%-- 			        </c:when> --%>
<%-- 			        <c:when test="${validation == true}"> --%>
<!-- 			        	<input type="submit" value="회원가입" title="회원가입을 합니다^_^&" id="btn_join_true"> -->
<%-- 			        </c:when> --%>
<%-- 			        <c:otherwise> --%>
<%-- 			        </c:otherwise> --%>
<%-- 			    </c:choose> --%>
			    
			    <input type="button" value="회원가입" title="회원가입을 합니다^_^&" id="btn_join">
	            <input type="reset" value="cancle" title="취소 합니다^_ㅠ!">
	        </form>

	    </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>

<script>
var idCheck = false;
var pwdCheck = false;

$(document).ready(function() {
	
	
	// 아이디 유효성 검사(1 = 중복.사용 불가능 / 0 = 중복아님.사용가능)
	$("#btn_id").click(function() {
		var userId = $('#input_id').val();
		
		if (userId === null || userId === "") {
			alert("아이디를 입력해 주세요.");	
		}
		else {
// 			alert(userId);
			$.ajax({
// 				url : '${pageContext.request.contextPath}/member/idCheck?member_id='+userId, //실행 대상 URL.
				url : '${pageContext.request.contextPath}/member/idCheck?',
				type : "get", //데이터 처리 방식
				data : {  //파라미터. 서버로 전송할 데이터
					member_id : userId
				},
				success : function(data) { //반응이 성공했을 때
					console.log(data);
					idCnt = data;
					if (idCnt === "0") {
						alert("사용가능한 아이디 입니다.")
						idCheck = true;
					}
					else {
						alert("사용 불가능한 아이디 입니다. 다른 아이디를 사용해 주세요.")
						idCheck = false;
					}
				},
				error : function(data) { //에러가 발생했을 경우 
					console.log("noooooo");
				}
			});
			
		}
		
		
		checking();
	});
	
	$("#input_pwd").blur(function() {
		var pwdFirst = $('#input_pwd').val();
		var pwdSecond = $('#input_pwd_check').val();
// 		console.log(pwdFirst);
// 		console.log(pwdSecond);
		
		if (pwdFirst !== pwdSecond) {
			$("#pwd_check").text("비밀번호가 일치하지 않습니다. 다시 입력해 주세요.");
			pwdCheck = false;
		}
		else {
			$("#pwd_check").text("");
			pwdCheck = true;
		}
		
		checking();
	});
	
	$("#input_pwd_check").blur(function() {
		var pwdFirst = $('#input_pwd').val();
		var pwdSecond = $('#input_pwd_check').val();
// 		console.log(pwdFirst);
// 		console.log(pwdSecond);
		
		if (pwdFirst !== pwdSecond) {
			$("#pwd_check").text("비밀번호가 일치하지 않습니다. 다시 입력해 주세요.");
			pwdCheck = false;
		}
		else {
			$("#pwd_check").text("");
			pwdCheck = true;
		}
		
		checking();
	});
	
	$("#btn_join_false").click(function() {
// 		alert("haha");
		var value = "<c:out value='${validation}' />";
		console.log("check!!!!"+value);
// 		console.log(idCnt);
// 		console.log(pwdCheck);

		if (idCheck == null || idCheck == "" || idCheck == false || idCheck == undefined) {
			alert("아이디 중복체크를 해주세요.")
		}
		if (pwdCheck == null || pwdCheck == "" || pwdCheck == false || pwdCheck == undefined) {
			alert("비밀번호를 확인해 주세요.")
		}
	});
	
	function checking(){
		
// 		if (idCheck == true && pwdCheck == true) {
<%-- 			<% checking = "true"; %> --%>
// 			<c:set var="validation" value="true"/>
// 			alert("yeah");	
// 			var value = "<c:out value='${validation}' />";
// 			console.log("check!!!!"+value);
// 		}
	}
	
	$("#btn_join").click(function() {

		console.log(idCheck);
		console.log(pwdCheck);

		if (idCheck == null || idCheck == "" || idCheck == false || idCheck == undefined) {
			alert("아이디 중복체크를 해주세요.")
		}
		if (pwdCheck == null || pwdCheck == "" || pwdCheck == false || pwdCheck == undefined) {
			alert("비밀번호를 확인해 주세요.")
		}
		
		if (idCheck == true && pwdCheck == true) {
			var userId = $("#input_id").val();
			var userPwd = $("#input_pwd").val();
			var userName = $("#input_name").val();
			var userPhone = $("#input_phone").val();
			var userEmail = $("#input_email").val();
			
// 			console.log(userId);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/member/signupOk?',
				type : "post", //데이터 처리 방식
				data : {  //파라미터. 서버로 전송할 데이터
					id : userId,
					password : userPwd,
					name : userName,
					phone : userPhone,
					email : userEmail
				},
				success : function(data) { //반응이 성공했을 때
// 					console.log(data);
					alert("회원가입이 완료되었습니다.");
					window.location.replace("${pageContext.request.contextPath}/home");
				},
				error : function(data) { //에러가 발생했을 경우 
					console.log("noooooo");
				}
			});
		}
	});
	
	
});

</script>


</body>
</html>