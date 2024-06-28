<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
body {font-family: "Open Sans" }


.nav4{
	background-color: white;
	font-size: 11px;
	color:gray;
	font-weight: bold;
	margin-top: 3px;
	margin-bottom: 3px;
}

</style>
</head>
<body>

<div class="nav4">
  <c:forEach var="vo" items="${vos}" varStatus="st">
  <a href="${ctp}/admin/partList?part=${vo.part}" class="w3-bar-item w3-button"> 〈 BACK TO ${vo.part}</a>
  </c:forEach>
</div>
</body>
</html>