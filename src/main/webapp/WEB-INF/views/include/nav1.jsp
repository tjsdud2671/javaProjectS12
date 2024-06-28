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
.filter{
	color: black;
	background-color: white;
	border: none;
	float: right;
}

/* 
#su:hover .nav2 {
    display: none;
    position: absolute;
    background-color: white;
    border: 1px solid #ddd;
    z-index: 1;
}
 */

.bag{
	margin-left: 10px;
	margin-top: 20px;
	text-decoration: underline;
}
.b-footer{
	margin-left:5%;
	margin-right:5%;
	margin-top: 700px;
}
.w3-2{
	margin-top: 6px;
	margin-bottom: 6px;
}
#check-btn { display: none; }
#check-btn:checked ~ .menubars { display: block; } 
.menubars { display: none; }
</style>
</head>
<body>
<div class="nav1">
	<a href="http://localhost:9090/javaProjectS12"><img src="${ctp}/images/logo3.png" class="img" style="width: 100px; height: 45px; margin-top: 3px;"></a>  
	<span style="margin-left: 3.4%">
	<a href="${ctp}/admin/newPartList" class="w3-bar-item w3-button">SHOP</a>
	<a href="${ctp}/admin/featuresList" class="w3-bar-item w3-button">FEATURES</a>
	<a href="${ctp}/contact/contact" class="w3-bar-item w3-button" id="su">SUPPORT</a>
	</span>
	<c:if test="${sLevel==99}">
		<a href="${ctp}/admin/adminPage" class="w3-bar-item w3-button" style="color: #3C5A91; margin-left: 20%;">관리자페이지</a>
	</c:if>
	<div class="header_nav" style="float: right; margin-top: 4px; ">
	  <div class="w3-dropdown-click">
    	<!-- <button onclick="myFunction()" class="w3-button w3-white">SEARCH</button> -->
		    	
    	
	    <div id="Demo" class="w3-dropdown-content w3-bar-block w3-border">
	      <a href="#" class="w3-bar-item w3-button">Link 1</a>
	      <a href="#" class="w3-bar-item w3-button">Link 2</a>
	      <a href="#" class="w3-bar-item w3-button">Link 3</a>
	    </div>
  	 </div>
		<a href="#" class="w3-bar-item w3-button" onclick="openRightMenu()">BAG&nbsp;()</a>
			<div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="display:none;right:0; width: 600px; height: 100%;" id="rightMenu">
		    	<header style="">
		    		<div class="bag" onclick="closeRightMenu()" style="margin-left: 3%">쇼핑백<span style="float: right; margin-right: 5%">X</span></div>
				</header>
			<hr/> 
				<div style="margin-left: 3%; font-weight: lighter;">쇼핑백이 비어 있습니다<br/>7만원 이상 구매 시 무료 배송/제외가 적용됩니다</div>
				<footer class="b-footer">
					<hr/>  
					<button class="w3-button w3-block w3-black" onclick="#"><div class="w3-2" style="color: white;" >계속 쇼핑하기</div></button>
				</footer>
		</div>
	</div>
</div>
<script>

function openRightMenu() {
  document.getElementById("rightMenu").style.display = "block";
}

function closeRightMenu() {
  document.getElementById("rightMenu").style.display = "none";
}

function myFunction() {
  var x = document.getElementById("Demo");
  if (x.className.indexOf("w3-show") == -1) { 
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>
</body>
</html>