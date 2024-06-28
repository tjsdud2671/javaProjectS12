<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
.lgp1{
	margin-top : 5%;
	margin-bottom:5%;
	font-size: 12px;
	float: left;
	width: 45%;
}
.lgp2{
	margin-top : 5%;
	margin-bottom:5%;
	font-size: 12px;
	float: right;
	width: 45%;
}
.lgp4{
	
}
.footer{
	margin-top: 30%;
}

</style>
<head>
  <meta charset="UTF-8">
  <title>memberLogin.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="${ctp}/js/woo.js"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/pop.jsp" />
  <jsp:include page="/WEB-INF/views/include/nav1.jsp" />
  <jsp:include page="/WEB-INF/views/include/loginOk_nav.jsp" />
<p><br/></p>
<div class="container">
	<div class="lgp1">
		<h5><b>주소록</b></h5>
		<br/><br/>
		<div style="width: 400px;">
			<b>모든주소</b>
			<hr/>
			${sLastName}&nbsp;${sName}
			<hr/>
			주소
			<hr/>
			<br/>
			<button class="w3-button w3-block w3-white" style="border: 1px solid black;" onclick="#';"><div class="w3-2" style="color: black;" ><b>주소추가하기</b></div></button>
		</div>
	</div>
	<div class="lgp2">
		<h5><b>새 주소 추가</b></h5>
		<br/><br/>
		<div style="width: 400px;">
			<b style="color: gray;">성</b><br/>
			${sLastName}
			<hr/ style="border-color: black;">
			<b style="color: gray;">이름</b><br/>
			${sName}
			<hr/ style="border-color: black;"><br/>
		</div>	
		<div class="form-group">
	      <label for="address" style="color: gray;">주소</label>
	      <hr/>
	      <div class="input-group-append">
	        <input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기" class="w3-button w3-block w3-black">
	      </div>
	      <div style="width: 400px;">
	      <br/><br/>
			<div><input class="w3-input" type="text" onkeydown="if(event.keyCode == 13){searcht();}" name="#" id="#" placeholder="상세주소(아파트,동/호수 등)" required></div><br/>
			<div><input class="w3-input" type="text" onkeydown="if(event.keyCode == 13){searcht();}" name="#" id="#" placeholder="구/군/시" required></div><br/>
			<div class="input-group-prepend">
	            <select name="tel1" class="custom-select">
	              <option value="서울">서울</option>
	              <option value="경기">경기</option>
	              <option value="인천">인천</option>
	              <option value="충남">충남</option>
	              <option value="대전">대전</option>
	              <option value="충북" selected>충북</option>
	              <option value="부산">부산</option>
	              <option value="울산">울산</option>
	              <option value="전북">전북</option>
	              <option value="광주">광주</option>
	              </select>
	        </div>
			<br/>
			<div><input class="w3-input" type="text" onkeydown="if(event.keyCode == 13){searcht();}" name="#" id="#" placeholder="우편번호" required></div><br/>
	        <br/>
	        <div><input class="w3-input" type="text" onkeydown="if(event.keyCode == 13){searcht();}" name="#" id="#" placeholder="전화번호" required></div><br/>
			<p>
			<input type="checkbox" >&nbsp;&nbsp;
			<label for="checkAd">기본주소로 설정</label>
			</p>
			<button class="w3-button w3-block w3-lightgray" style="border: 1px solid gray;" onclick="#';"><div class="w3-2" style="color: gray;" ><b>저장</b></div></button><br/>
			<button class="w3-button w3-block w3-white" style="border: 1px solid black;" onclick="#';"><div class="w3-2" style="color: black;" ><b>취소</b></div></button>
		</div>
	    </div>
	</div>
</div>
<div class="footer">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
</body>
</html>