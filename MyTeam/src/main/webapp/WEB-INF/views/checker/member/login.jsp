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

<!--Primary 4 Form START-->
<!-- <div class="section-block-parallax jarallax" data-jarallax data-speed="0.6" style="background-image: url('http://via.placeholder.com/1500x620');"> -->
<div class="section-block-parallax jarallax" data-jarallax data-speed="0.6">
    <div class="container">
        <div class="section-heading text-center">
            <h2 class="semi-bold font-size-35">로그인</h2>
        </div>
        <form method="post" class="primary-form-4 mt-50" id="loginForm">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-12 col-centered" style="margin: auto; text-algin: center;">
                    <input type="text" name="id" placeholder="Id" id="input_id">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-6 col-12 col-centered" style="margin: auto; text-algin: center;">
                    <input type="password" name="pwd" placeholder="Password" id="input_pwd">
                </div>
<!--                 <div class="col-12"> -->
<!--                     <select name="subject"> -->
<!--                         <option>Subject</option> -->
<!--                         <option>Development Manager</option> -->
<!--                         <option>Project Lead</option> -->
<!--                         <option>Solutions Analyst</option> -->
<!--                     </select> -->
<!--                 </div> -->
<!--                 <div class="col-12"> -->
<!--                     <textarea placeholder="Message*" name="message"></textarea> -->
<!--                 </div> -->
            </div>
<!--             <a href="#" class="button-sm button-grey">Home</a> -->
<!--             <a href="#" class="button-sm button-grey">로그인</a> -->
			<div class="row">
                <div class="col-md-6 col-sm-6 col-12 col-centered" style="margin: auto; text-algin: center; width: 200px;">
                    <input type="button" value="로그인" id="btn_login" class="button-sm button-dark-bordered extra-rounded">
<%--                     <button value="로그인" id="btn_login"><img src="${pageContext.request.contextPath}/resources/img/minji/login.png" alt="로그인" style="width: 180px;"></button> --%>
                </div>
            </div>
            
        </form>
    </div>
</div>
<!--Primary 4 Form END-->

<%@ include file="/WEB-INF/views/checker/layout/footer.jsp"%>

<script>
$(document).ready(function() {

	 $("#btn_login").click(function () {
 		var idCheck = $("#input_id").val();
 		var pwdCheck = $("#input_pwd").val();
 		console.log(idCheck);
 		console.log(pwdCheck);
 		if (idCheck == null || idCheck == "" || idCheck == false || idCheck == undefined) {
			alert("아이디를 입력해 주세요.")
			return;
		}
		if (pwdCheck == null || pwdCheck == "" || pwdCheck == false || pwdCheck == undefined) {
			alert("비밀번호를 입력해 주세요.")
			return;
		}
		
		
		$.ajax({
			url : '${pageContext.request.contextPath}/member/loginCheck?',
			type : "GET", //데이터 처리 방식
			data : {  //파라미터. 서버로 전송할 데이터
				id : idCheck,
				pwd : pwdCheck
			},
			success : function(data) { //반응이 성공했을 때
				console.log(data);

				if (data == "success") {
					alert("로그인이 완료되었습니다.");
					
			 		 $("#loginForm").attr("action", "${pageContext.request.contextPath}/member/loginSession");
			 		 $("#loginForm").submit();					
				}
				else {
					alert("아이디 혹은 비밀번호를 다시 입력해 주세요.");
				}
			},
			error : function(data) { //에러가 발생했을 경우 
				console.log("noooooo");
				alert("아이디 혹은 비밀번호를 다시 입력해 주세요.");
			}
		});
    }); //end : search
	
});

</script>

</body>
</html>