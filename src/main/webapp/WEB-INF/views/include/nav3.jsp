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


.nav3{
	background-color: white;
	font-size: 13px;
	font-weight: bold;
	margin-top: 3px;
	margin-bottom: 3px;
	margin-left: 165px;
}

</style>
</head>
<body>

<div class="nav3">
  <a href="${ctp}/contact/contact" class="w3-bar-item w3-button">CUSTOMER SUPPORT</a>
  <a href="${ctp}/admin/shipping" class="w3-bar-item w3-button">SHIPPING & RETURNS</a>
  <a href="${ctp}/admin/size" class="w3-bar-item w3-button">SIZE GUIDE</a>
  <a href="${ctp}/admin/careers" class="w3-bar-item w3-button">CAREERS</a>
  <a href="${ctp}/admin/legal" class="w3-bar-item w3-button">LEGAL</a>
</div>
</body>
</html>