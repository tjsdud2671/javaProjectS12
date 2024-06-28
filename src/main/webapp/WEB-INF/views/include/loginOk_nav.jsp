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
.w3-container{
	border-style: none;
	margin-left: 8%;
	font-size: 12px;
	font-weight: bold;
}
 
</style>
</head>
<body>


<div class="w3-container">
<div class="w3-bar">
  <a href="${ctp}/member/memberPage" class="w3-bar-item w3-button">ACCOUNT DETAILS</a>
  <a href="#" class="w3-bar-item w3-button">ADDRESSES</a>
  <a href="${ctp}/admin/shipping" class="w3-bar-item w3-button">SHIPPING & RETURNS</a>
  <span style="float: right;"><a href="${ctp}/member/memberLogout" class="w3-bar-item w3-button">로그아웃</a></span>
  <span style="float: right; text-transform: uppercase; color: lightgrey;"><a class="w3-bar-item w3-button">${sMid}</a></span>
</div>
</div>


<%-- 
<div class="nav2">
  <a href="${ctp}/admin/teesList" class="w3-bar-item w3-button">ACCOUNT DETAILS</a>
  <a href="#" class="w3-bar-item w3-button">ADDRESSES</a>
  <a href="${ctp}/admin/shipping" class="w3-bar-item w3-button">SHIPPING & RETURNS</a>
  <a href="${ctp}/admin/shipping" class="w3-bar-item w3-button">로그아웃</a>
</div>
   --%>

<script>

function openRightMenu() {
  document.getElementById("rightMenu").style.display = "block";
}

function closeRightMenu() {
  document.getElementById("rightMenu").style.display = "none";
}
</script>
</body>
</html>