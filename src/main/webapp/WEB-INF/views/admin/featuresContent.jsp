<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
.container{
	text-align: center;
	margin-top: 10px;
}
.title_name{
	font-size: 30px;
  	margin-bottom: 2%;
}
td{
  font-size: 12px;
}
</style>
<head>
  <meta charset="UTF-8">
  <title></title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/pop.jsp" />
  <jsp:include page="/WEB-INF/views/include/nav1.jsp" />
  
  <table class="container">
  <c:forEach var="vo" items="${vos}" varStatus="st">
    <tr>
    	<td class="title_name"><b>${vo.title}</b></td><br/><br/>
    </tr>
    <tr>
    	<td>${fn:substring(vo.wdate, 0, 10)}<br/><br/><br/><br/></td>
    </tr>
    <tr>
    	<td><p style="white-space: pre-line;">${vo.content}</p><br/><br/><br/><br/></td>
    	<!-- jsp 상에서 textarea 로 입력한 값을 다시 textarea로 출력할 때 줄바꿈이 되지 않아 따로 처리를 해주어야 한다.  -->
    </tr>
  	<tr>
  		<td>${vo.fname}</td>
  	</tr>
  </c:forEach>
  </table>
  
  
  
<div class="footer">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
<script>
function myFunction() {
  const element = document.getElementById("cimg_cnt");
  element.scrollIntoView();
}
function myFunction(id) {
	  var x = document.getElementById(id);
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	  }
	}
	
function openRightMenu() {
	  document.getElementById("rightMenu").style.display = "block";
	}

function closeRightMenu() {
  document.getElementById("rightMenu").style.display = "none";
}
</script>
</body>
</html>