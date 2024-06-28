<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.w3-container{
	color: gray;
}
.sp{
	color: gray;
	font-size: 13px;
}

</style>
</head>
<body>
<center>
<div class="w3-container">
  <c:forEach var="vo" items="${vos}" varStatus="st">
	  <p>주문번호 : ${vo.onum }</p>
	  <div class="w3-card-4" style="width:70%">
	    <header class="w3-container w3-black">
			<span class="sp">${vo.email}</span><br/>
			<span class="sp">${vo.name}님</span>
		</header>
	    <div class="w3-container">
	      <p>${vo.part}</p>
	      <hr>
	      <p>${vo.content }</p><br/><br/>
	    </div>
	    <a href="mailto:${vo.email}">답변하기</a>
	  </div>
   </c:forEach>
   <br/>
</div>
</body>
</html>