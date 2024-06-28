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
	margin-top: 5px;
	margin-bottom: 4px;
}
.w3-bar w3-black{
	width: 1073px;
	height: 19.5px;
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
	margin-left: 105px;
	margin-top: 3px;
	margin-bottom: 3px;
}
.footer1, .footer2{
	font-size: 13px;
}
.footer3{
	font-size: 11px;
	font-weight: lighter;
	margin-left: 15px;
	text-align: center;
}
.insta{
	width: 15px;
	height: 15px;
	float: right;
	margin-right: 13px;
	}
.vimeo{
	width: 15px;
	height: 15px;
	float: right;
	margin-right: 18px;
}
.cLogo{
	width: 155px;
	height: 30px;
	float: right;
}
.btn{
	background-color: black;
	border:none;
	float: right; 
	margin-right: 10px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	'use strict';
	function fCheck(){
		$("#pop").hide();
	}
</script>
</head>
<body>
<div class="w3-bar w3-black">
	<div class="pop" id="pop">7만원 이상 구매 시 무료 배송
		<input type="button"  class="btn" value="닫기" style="color: white; font-size: 13px;" onclick="fCheck()"/>
	</div>
</div>
</body>
</html>