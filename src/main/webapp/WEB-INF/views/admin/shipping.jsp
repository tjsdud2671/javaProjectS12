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

</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/pop.jsp" />
<jsp:include page="/WEB-INF/views/include/nav1.jsp" />
<jsp:include page="/WEB-INF/views/include/nav3.jsp" />



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
  <br/>
  <div align="center">
	<img src="${ctp}/images/주문및배송정보.png"  width="90%"; style="margin-left: 2.5%; margin-right: 2.5%">
  </div>
  

   




<div class="footer">
<!-- End page content -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>

</body>
</html>
