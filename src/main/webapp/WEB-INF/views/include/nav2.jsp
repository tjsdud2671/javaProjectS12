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
	margin-left: 150px;
	font-size: 12px;
	font-weight: bold;
}
</style>
</head>
<body>


<div class="w3-container">
<div class="w3-bar">
  <a href="${ctp}/admin/newPartList" class="w3-bar-item w3-button">NEW</a>
  
  <a href="${ctp}/admin/partList?part=TEES" class="w3-bar-item w3-button">TEES</a>
  <a href="${ctp}/admin/partList?part=SWEATS" class="w3-bar-item w3-button">SWEATS</a>
  <a href="${ctp}/admin/partList?part=OUTWEAR" class="w3-bar-item w3-button">OUTWEAR</a>
  <a href="${ctp}/admin/partList?part=BOTTOMS" class="w3-bar-item w3-button">BOTTOMS</a>
  <a href="${ctp}/admin/partList?part=DENIM" class="w3-bar-item w3-button">DENIM</a>
  <a href="${ctp}/admin/partList?part=KNITS" class="w3-bar-item w3-button">KNITS</a>
  <a href="${ctp}/admin/partList?part=TOPS" class="w3-bar-item w3-button">TOPS</a>
  <a href="${ctp}/admin/partList?part=SHIRTS" class="w3-bar-item w3-button">SHIRTS</a>
  <a href="${ctp}/admin/partList?part=HEADWEAR" class="w3-bar-item w3-button">HEADWEAR</a>
  <a href="${ctp}/admin/partList?part=ACCESSORIES" class="w3-bar-item w3-button">ACCESSORIES</a>
  
  <a href="${ctp}/admin/partList2" class="w3-bar-item w3-button">ALL</a>
 
<!--  	<a href="#" class="w3-bar-item w3-button" style="float: right;" onclick="openRightMenu2()">FILTER</a> -->
		<div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="display:none;right:0; width: 600px; height: 100%;" id="rightMenu2">
    	<header style="">
    	<div class="bag" onclick="closeRightMenu2()" style="margin-left: 3%">쇼핑백<span style="float: right; margin-right: 5%">X</span></div>
		</header>
		<hr/> 
		<div style="margin-left: 3%; font-weight: lighter;">쇼핑백이 비어 있습니다<br/>7만원 이상 구매 시 무료 배송/제외가 적용됩니다</div>
		<footer class="b-footer">
		<hr/>  
		<div>
		<button class="w3-button w3-block w3-black" onclick="#" style="width: 50%">상품보기</button>
		<button class="w3-button w3-block w3-white" onclick="#" style="width: 50%">초기화</button>
		</div>
		</footer>
		</div>
	</div>
 
 

	
</div>

<script>

function openRightMenu2() {
  document.getElementById("rightMenu2").style.display = "block";
}

function closeRightMenu2() {
  document.getElementById("rightMenu2").style.display = "none";
}
</script>
</body>
</html>