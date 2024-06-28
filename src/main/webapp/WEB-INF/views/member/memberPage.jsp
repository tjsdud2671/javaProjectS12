<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
.lgp1, .lgp2{
	margin-top : 5%;
	margin-bottom:5%;
	font-size: 12px;
	
}
.lgp4{
	
}
.footer{
	margin-top: 5%;
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
  <jsp:include page="/WEB-INF/views/include/loginOk_nav.jsp" />
<p><br/></p>
<div class="container">
	<div class="lgp1">
		<h5><b>내 계정</b></h5>
		<b>${sLastName}&nbsp;${sName}</b><br/>
		${sMid}
		<div style="width: 400px;">
		<hr/>
			<a href="${ctp}/member/address" style="color: black;">주소록보기</a>
		<hr/>	
		</div>
	</div>
	<div class="lgp2">
		<h5><b>고객지원</b></h5>
		이메일<br/>
		<span style="text-decoration: underline;">support@stussy.com</span><br/>
		<br/>
		온라인 고객지원 운영시간<br/>
		월요일-금요일 오전 8시부터 오후 4시까지 문의해 주시기 바랍니다.<br/>
		*공휴일 제외
	<div style="width: 400px;">
	<hr/>
		<a href="${ctp}/contact/contact" style="color: black;">문의하기</a>
	<hr/>	
		<a href="${ctp}/contact/contact" style="color: black;">자주 묻는 질문</a>
	<hr/>	
		<a href="${ctp}/admin/shipping" style="color: black;">배송 및 반품 정보</a>
	<hr/>	
	</div>
</div>  
</div>
<div class="footer">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
</body>
</html>