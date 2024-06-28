<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>adminLeft.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
  <style>
    th {
      text-align: center;
      background-color: #eee;
    }
    .bg{
    background-repeat: no-repeat;
    background-size: 100%;
    }
  </style>
</head>
<body style="background-color: black; color: white;">
<!-- Sidebar/menu -->
<div>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>STUSSY</b></h3>
  </div>
  <div class="w3-bar-block">
    <a href="http://localhost:9090/javaProjectS12" target="_top" class="w3-bar-item w3-button w3-hover-white">HOME</a> 
    <a href="${ctp}/admin/adminProduct" target="adminContent" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">PRODUCT</a> 
    <a href="${ctp}/admin/adminFeatures" target="adminContent" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">FEATURES</a> 
    <a href="${ctp}/contact/contactList" target="adminContent" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">QUESTION</a> 
    <a href="${ctp}/admin/management" target="adminContent" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"></a> 
  </div>
</div>
<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>
</body>
</html>