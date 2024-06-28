<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
.table{
	border-collapse: collapse;
	border-spacing: 0;
}
.inf{
	text-align: left;
	font-size: 13px;
	font-weight: bold;
	margin-left: 18px;
}
.pr{
	text-align: left;
	font-size: 12px;
	margin-left: 18px;
}
.list{
	margin-top: 2%;
}
.footer{
	margin-top: 10%;
}

</style>
</head>
<body>


<!-- !PAGE CONTENT! -->

  <!-- First Photo Grid-->
<%--   <table class="table" style="width: 100%; cellspacing=0px; cellpadding:0px;"><tr>
	<c:forEach var="vo" items="${vos}" varStatus="st">
	  <td class="text-center">
	    <c:set var="nextImg" value="${fn:substring(vo.fname,fn:indexOf(vo.fname,'src=')+39,fn:length(vo.fname))}" />
	      <img src='${ctp}/adminProduct/${fn:substring(nextImg,0,fn:indexOf(nextImg,"\""))}' width='300px' /><br/>
	      ${vo.name}<br/>
	      ${vo.price}
	  </td>
	  <c:if test="${st.count % 4 == 0}"></tr><tr></c:if>
	</c:forEach>
	<td></td></tr>
  </table> --%>
  
  <div class="list" align="left">
  	<ul>
  	<li style="list-style-type: none">
  		<div class="imglist">
  		<c:forEach var="vo" items="${vos}" varStatus="st">
  	    <c:set var="nextImg" value="${fn:substring(vo.fname,fn:indexOf(vo.fname,'src=')+39,fn:length(vo.fname))}" />
	    <div style = "display: inline-block; "> <!-- div: 이미지와 상세설명을 한 묶음으로 만들었음, inline-block :  이미지와 상세설명이 한 줄로 나오게 -->
		    <a href="${ctp}/admin/productContent?idx=${vo.idx}"><img src='${ctp}/adminProduct/${fn:substring(nextImg,0,fn:indexOf(nextImg,"\""))}' width='330px' height='400px' style='margin-left: 20px; margin-top: 15px;' /></a>
		     <div class="inf">
		     ${vo.name}<br/></div>
		     <div class="pr">￦${vo.price}</div>
	     </div>
		<c:if test="${st.count % 4 == 0}"><br/></c:if>
		</c:forEach>
		</div>
  	</li>
  	</ul>
  </div>
  


<div class="footer">
<!-- End page content -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}

</script>

</body>
</html>
