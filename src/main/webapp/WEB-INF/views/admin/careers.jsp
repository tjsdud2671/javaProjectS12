<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
.content{
	margin-top: 2%;
	margin-left: 12%;
}
.content2{
	margin-top: 3%;
	font-size: 9pt;
	font-style: italic;
}
.footer{
	margin-top: 10%;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/pop.jsp" />
<jsp:include page="/WEB-INF/views/include/nav1.jsp" />
<jsp:include page="/WEB-INF/views/include/nav3.jsp" />

  <div class="content">
	<h5><b>CAREERS</b></h5>
	<p class="content2">현재 구하는 포지션이 없습니다.</p>
  </div>
  <div class="footer">
  <!-- End page content -->
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
