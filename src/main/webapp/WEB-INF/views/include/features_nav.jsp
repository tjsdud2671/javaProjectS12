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
.pop{
	text-align: center;
	font-size: 13px;
	margin-top: 4px;
	margin-bottom: 4px;
}
.nav1,.header_nav{
	background-color: white;
	height: 55px;
	font-size: 13px;
	font-weight: bold;
}

.nav2{
	background-color: white;
	font-size: 13px;
	font-weight: bold;
	margin-left: 150px;
	margin-top: 3px;
	margin-bottom: 3px;
}

 
</style>
</head>
<body>


<div class="nav2" style="margin-left: 170px">
  <a href="#" class="w3-bar-item w3-button">ALL</a>
  <a href="#" class="w3-bar-item w3-button">COLLABORATIONS</a>
  <a href="#" class="w3-bar-item w3-button">COLLECTIONS</a>
  <a href="#" class="w3-bar-item w3-button">FEATURES</a>
  <a href="#" class="w3-bar-item w3-button">LOOKBOOKS</a>
</div>
  

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