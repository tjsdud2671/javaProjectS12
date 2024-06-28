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
img:hover{opacity: 0.8}
</style>
</head>
<body>

<!-- 팝업창 -->
<jsp:include page="/WEB-INF/views/include/pop.jsp" />

<!-- nav -->
<jsp:include page="/WEB-INF/views/include/nav1.jsp" />
<jsp:include page="/WEB-INF/views/include/nav2.jsp" />

<!-- content -->
<div class="w3-content" style="max-width:1600px">
  <!-- Image header -->
  <p><br/></p>
  <header class="w3-display-container w3-wide" id="home">
   <a href="${ctp}/admin/newPartList"><img class="w3-image" src="${ctp}/images/stussyMain.png"  width="1450" height="800" style="margin-left: 2.5%; margin-right: 2.5%"></a>
  </header>
</div>


<!-- Footer -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />

<script>
// Toggle between hiding and showing blog replies/comments
document.getElementById("myBtn").click();
function myFunction(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

function likeFunction(x) {
  x.style.fontWeight = "bold";
  x.innerHTML = "✓ Liked";
}
</script>

</body>
</html>

