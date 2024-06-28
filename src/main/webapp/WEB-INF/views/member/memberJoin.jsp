<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
.notice{
	font-size: 13px;
}
.w3{
	font-size: 13px;
	color: grey;
}
.w3-button w3-block w3-light-grey{
	width: 50%;
	
}
.w3-2{
	color: grey; 
	font-weight: bold;
	margin-top: 4px;
	margin-bottom: 4px;
}
.login{
	float: left;
	width: 45%;
}
.join{
	float: right;
	width: 45%;
}
.footer{
	margin-top: 45%;
}
</style>
<head>
<script>
	function fCheck(){
		
		let regLastName = /^[가-힣a-zA-Z]+$/;
		let regName = /^[가-힣a-zA-Z]+$/;
		let regEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		let regPassword = /(?=.*[0-9a-zA-Z]).{6,24}$/;
		
		let lastName = myform.lastName.value.trim();
		let name = myform.name.value.trim();
		let email = myform.email.value.trim();
		let password = myform.password.value.trim();
		
		let submitFlag=0;
		
	   if(!regLastName.test(lastName)) {
        alert("성명은 한글과 영문대소문자만 사용가능합니다.");
        myform.lastName.focus();
        return false;
      }
	   else if(!regName.test(name)) {
        alert("성명은 한글과 영문대소문자만 사용가능합니다.");
        myform.name.focus();
        return false;
      }
	   else if(!regEmail.test(email)) {
        alert("이메일 형식에 맞지않습니다.");
        myform.email.focus();
        return false;
      }
	   else if(!regPassword.test(password)) {
        alert("비밀번호는 1개 이상의 문자와 특수문자 조합의 6~24 자리로 작성해주세요.");
        myform.password.focus();
        return false;
      }
	   submitFlag==1;
	}
	
	if(submitFlag==1){
		myform.submit();
	}
	else{
		alert("회원가입 실패")
	}
	
</script>
  <meta charset="UTF-8">
  <title>memberJoin.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/pop.jsp" />
<jsp:include page="/WEB-INF/views/include/nav1.jsp" />
<p><br/></p>
<div class="container">
	<div class="login">
	<form name="myform" method="post">
		<h4><b>회원가입</b></h4>
		<br/>
		<p class="notice">회원으로 가입하시면 stussy에서 운영하는 온라인 스토어의 서비스를 아이디로 이용하실 수 있습니다.</p>
		<br/>
		<p>
		<label for="lastName" class="w3">성</label></p>
		<input class="w3-input" type="text" name="lastName" id="lastName" required>
		<p>     
		<label for="name" class="w3">이름</label></p>
		<input class="w3-input" type="text" name="name" id="name" required>
		<p>     
		<label for="email" class="w3">이메일</label></p>
		<input class="w3-input" type="text" name="email" id="email" required>
		<p>     
		<label for="password" class="w3">비밀번호</label></p>
		<input class="w3-input" type="password" name="password" id="password">
		<br/>
		<p>
		<input type="checkbox" required>&nbsp;&nbsp;
		<label class="w3">개인정보 보호정책 및 이용약관 동의</label>
		</p>
		<br/>
		<button class="w3-button w3-block w3-light-grey" style="border: 1px solid black;" onclick="fCheck()"><div class="w3-2" >계정생성</div></button>
	</form>
	</div>
<div class="join">
	<br/>
	<h4><b>아이디가 있으신가요?</b></h4>
		<br/><br/>
		<button class="w3-button w3-block w3-white" style="border: 1px solid black;" onclick="location.href='memberLogin';"><div class="w3-2" style="color: black;" >로그인</div></button>
</div>
</div>  
<div class="footer">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
</body>
</html>