<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
.notice{
	font-size: 13px;
}

.w3-button w3-block w3-light-grey{
	width: 50%;
	
}
.w3-2{
	color: grey; 
	font-weight: bold;
	margin-top: 4px;
	margin-bottom: 4px;
}
.ask{
	float: left;
	width: 45%;
}
.que{
	float: right;
	width: 45%;
	font-size: 12px;
}
.footer{
	margin-top: 45%;
}
.check-input{
	font-size: 12px;
	color: grey;
	width: 100%;
	height: 40px;
}
.w3-input{
	font-size:12px;
	outline: none;
}
.w3-3{
	margin-top: 40px;
	font-size: 12px;
}
.w3-hide{
	margin-left: 3%;
}

</style>
<head>
  <meta charset="UTF-8">
  <title>memberLogin.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/pop.jsp" />
  <jsp:include page="/WEB-INF/views/include/nav1.jsp" />
  <jsp:include page="/WEB-INF/views/include/nav3.jsp" />
<p><br/></p>
<div class="container">
	<div class="ask">
	<form name="myform" method="post">
		<h4><b>문의하기</b></h4>
		<br/>
		<br/>
		<div><input class="w3-input" type="text" name="name" id="name" placeholder="이름" required></div>
		<br/>
		<div><input class="w3-input" type="text" name="email" id="email" placeholder="이메일" required></div>
		<br/>
		<div><input class="w3-input" type="text" name="onum" id="onum" placeholder="주문번호" required></div>
		<br/>
		<select class="check-input" name="part" id="part">
		    <option value="기타">분류선택</option>
	  	    <option ${part="주문상태" ? "selected" : ""}>주문 상태</option>
	  	    <option ${part="반품" ? "selected" : ""}>반품</option>
	  	    <option ${part="주소변경" ? "selected" : ""}>주소 변경</option>
	  	    <option ${part="배송조회" ? "selected" : ""}>배송 조회</option>
	  	    <option ${part="오류문의" ? "selected" : ""}>오류 문의</option>
	  	    <option ${part="기타" ? "selected" : ""}>기타</option>
	    </select>
<!-- 		
		<select class="check-input" name="ask_select" id="ask_select">
			<option>please Selecet</option>
			<option selected value="문의사항을 선택해주세요">문의사항을 선택해주세요</option>
			<option value="주문 상태">주문 상태</option>
			<option value="반품">반품</option>
			<option value="주소 변경">주소 변경</option>
			<option value="배송 조회">배송 조회</option>
			<option value="오류 문의">오류 문의</option>
			<option value="기타">기타</option>
		</select> -->
		<br/><br/>
		<div><input class="w3-input" type="text" onkeydown="if(event.keyCode == 13){searcht();}" name="content" id="content" placeholder="내용을 입력해 주세요." required></div>
		<br/>
		<br/>
		<button class="w3-button w3-block w3-black" type="submit"><div class="w3-2" style="color: white;" >확인</div></button>
		<div class="w3-3">
		<b>고객지원</b><br/>
		<p class="w3-4" style="text-decoration: underline;">support@stussy.co.kr</p>
		<b>온라인 고객지원 운영시간</b><br/>
		월요일-금요일 오전 8시부터 오후 4시까지 문의해 주시기 바랍니다.<br/>
		*공휴일 제외
		</div>
	</form>
	</div>
	<div class="que">
		<br/>
		<h4><b>자주 묻는 질문</b></h4>
		<br/>
		<hr/>
		<button onclick="myFunction('Demo1')" class="w3-button w3-block w3-left-align">
		<b>주문취소 절차는 어떻게 되나요?</b></button>
		<div id="Demo1" class="w3-hide">
		<p>주문 취소를 위해 주문자명 / 주문번호 (Order #XXXXXX) 와 함께 support@stussy.co.kr로 문의해 주세요. 배송상태에 따라(이미 출고 준비가 완료되었거나 배송 진행중)취소는 어려울 수 있습니다.</p>
		</div>
		<hr/>
		<button onclick="myFunction('Demo2')" class="w3-button w3-block w3-left-align">
		<b>주문이 왜 취소가 된건가요?</b></button>
		<div id="Demo2" class="w3-hide">
		<p>본인이 취소 요청하신 게 아니라면 죄송스럽게도 상품이 품절되어 발송이 불가능하거나 배송지 주소 오류로 인해 취소 될 수 있습니다. 추가적으로 결제/ 주문 오류가 발생하여 주문 취소 될 수 있습니다.</p>
		</div>
		<hr/>
		<button onclick="myFunction('Demo3')" class="w3-button w3-block w3-left-align">
		<b>반품은 어떻게 하나요?</b></button>
		<div id="Demo3" class="w3-hide">
		<p>반품 신청은 해당 링크로 들어가셔서 반품 요청하실 수 있습니다:<a href="#" style="text-decoration: underline;">반품 신청하기.</a><br/>자세한 정보는 반품 및 환불 규정 페이지에서 확인해주세요.</p>
		</div>
		<hr/>
		<button onclick="myFunction('Demo4')" class="w3-button w3-block w3-left-align">
		<b>반품 완료 처리 후, 환불은 언제 되나요?</b></button>
		<div id="Demo4" class="w3-hide">
		<p>보내주신 상품이 물류센터에 도착한 뒤, 2-3일 정도의 입고/검수 작업을 거쳐 환불 처리로 진행하고 있습니다. <span style="text-decoration: underline;">배송비 제외.</span></p>
		<p>주문과 업무량이 몰리는 시기에는 진행 절차 시간이 영업일 기준 4-5일 이상 소요될 수 있습니다.</p>
		</div>
		<hr/>
		<button onclick="myFunction('Demo5')" class="w3-button w3-block w3-left-align">
		<b>배송 주소지를 잘못 입력했는데, 변경은 어떻게 하나요?</b></button>
		<div id="Demo5" class="w3-hide">
		<p>모든 주소는 한글로 입력해주세요. <span style="text-decoration: underline;">구/군/시, 상세주소 포함.</span><br/>
		배송지 변경이 필요한 경우 <span style="text-decoration: underline;">support@stussy.co.kr</span>로 요청을 할 수 있습니다만, 이미 상품 배송이 시작되었다면 변경이 어려울 수 있습니다.</p>
		</div>
		<hr/>
		<button onclick="myFunction('Demo6')" class="w3-button w3-block w3-left-align">
		<b>주문 완료 후 수정이 가능한가요?</b></button>
		<div id="Demo6" class="w3-hide">
		<p>상품 변경은 불가합니다.</p>
		</div>
		<hr/>
		<button onclick="myFunction('Demo7')" class="w3-button w3-block w3-left-align">
		<b>배송은 얼마나 걸리나요?</b></button>
		<div id="Demo7" class="w3-hide">
		<p>고객님의 주문이 발송되기 전까지 절차의 시간은 영업일 기준 평균 2일 이상이 소요됩니다.<br/>
		-오전 11시 이후 접수된 주문은 익일 영업일에 진행됩니다.<br/>
		-주말과 공휴일에 접수된 주문의 경우 그 다음 영업일에 진행됩니다.<br/>
		-주문량이 많은 시기에는 진행 절차 시간이 영업일 기준 4-5일 이상이 소요될 수 있습니다.<br/>
		안내된 시간이 지나도 상품을 받지 못하셨다면 <span style="text-decoration: underline;">support@stussy.co.kr</span>로 문의해주세요.
		</p>
		</div>
		<hr/>
		
	</div>
</div>  
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

document.addEventListener('keydown', function(event) {
    if ((event.keyCode || event.which) === 13) {
        event.preventDefault();
    }
}, true);
</script>
</body>
</html>