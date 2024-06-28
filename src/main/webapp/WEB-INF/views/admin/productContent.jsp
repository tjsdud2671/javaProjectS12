<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
.aa{
	float: left;
	width: 45%;
}
.bb{
	float: right;
	width: 45%;
}
.footer{
	margin-top: 20%;
}
#myDIV{
  overflow: auto;
  width: 600px;
  
} 
#cimg_cnt{
   margin:0px;
   width: 10px;
   height: 600px;
}
#myDIV::-webkit-scrollbar {
    display: none; /* 크롬, 사파리, 오페라, 엣지 */
}
.txt_cnt{
	font-size:30px;
	font-weight: bolder;
}
.txt_cnt2{
	font-size: 12px;
}
.cc{
	float: right;
	width: 45%;
	margin-top: 5%;
	font-size: 12px;
}
.dd{
	float: right;
	width: 45%;
	font-size: 12px;
	margin-top:9%;
	margin-bottom: 3%;
} 
.productInformation{
	margin-left: 20%;
}
.ee{
	float: right;
	width: 45%;
	margin-top: 3%;
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
  <jsp:include page="/WEB-INF/views/include/nav4.jsp" />
<p><br/></p>
<div class="container" >
	<div class="aa" id="myDIV">
		<div class="img_cnt" id="cimg_cnt">
			<c:forEach var="vo" items="${vos}" varStatus="st">
			${vo.fname}
			</c:forEach>
		</div>
	</div>	
	<div class="productInformation">	
		<div class="bb">
				<c:forEach var="vo" items="${vos}" varStatus="st">
				<br/><br/><br/><span class="txt_cnt">${vo.name}</span><br/>
				<span class="txt_cnt2">￦<fmt:formatNumber value="${vo.price}" pattern="#,###"></fmt:formatNumber></span>
				</c:forEach>
		</div>	
		<div class="cc">
			<c:forEach var="vo" items="${vos}" varStatus="st">
			<span >${vo.color}</span>
			</c:forEach>
		</div>	
		<div class="cc">
			<span >7만원 이상 구매 시 무료 배송</span>
		</div>	
		<div class="ee">
			<button style="border: none; outline: none; background: transparent;" onclick="myFunction('Demo1')">
			<b>DETAILS ></b></button>
			<div id="Demo1" class="w3-hide">
			</div>
		</div>	
		<div class="ee">
			<button style="border: none; outline: none; background: transparent;" onclick="myFunction('Demo2')">
			<b>SIZE GUIDE ></b></button>
			<div id="Demo2" class="w3-hide">
			<p>&nbsp;<a href="${ctp}/admin/size" >사이즈 가이드</a></p>
			</div>
		</div>	
		<div class="ee">
			<button style="border: none; outline: none; background: transparent;" onclick="myFunction('Demo3')">
			<b>SHIPPING ></b></button>
			<div id="Demo3" class="w3-hide">
			<p></p>
			<p>&nbsp;롯데택배 (1588-2121)</p>
			</div>
		</div>	
	</div>		
</div>
	<div class="dd">
			<button class="w3-button w3-black" style="display: inline-block; width: 45%; height: 40px;" onclick="#" >쇼핑백에 추가</button>
			<button class="w3-button w3-white" style="display: inline-block; border:1px solid black; width: 45%; height: 40px;" onclick="">바로 구매</button>
	</div>
<br/>
<div class="footer">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
<script>
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