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
	margin-top: 30%;
}
</style>
<head>
  <meta charset="UTF-8">
  <title>memberLogin.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/pop.jsp" />
  <jsp:include page="/WEB-INF/views/include/nav1.jsp" />
<p><br/></p>
<div class="container">
	<div class="login">
	<form name="myform" method="post">
		<h4><b>로그인</b></h4>
		<br/>
		<br/>
		<p>     
		<label for="email" class="w3">이메일</label></p>
		<input class="w3-input" type="text" name="email" id="email" required>
		<p>     
		<label for="password" class="w3">비밀번호</label></p>
		<input class="w3-input" type="password" name="password" id="password">
		<br/>
		<br/>
		<button class="w3-button w3-block w3-light-grey" style="border: 1px solid black;" onclick="fCheck()"><div class="w3-2" >로그인</div></button>
		<br/>
		<button class="w3-button w3-block w3-white" style="border: 1px solid black;" onclick="#"><div class="w3-2" style="color: black;" >비밀번호 찾기</div></button>
	</form>
	</div>
<div class="join">
	<br/>
	<h4><b>아직 회원이 아니신가요?</b></h4>
		<br/><br/>
		<button class="w3-button w3-block w3-white" style="border: 1px solid black;" onclick="location.href='memberJoin';"><div class="w3-2" style="color: black;" >회원가입</div></button>
</div>
</div>


<div class="footer">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
</body>
</html>