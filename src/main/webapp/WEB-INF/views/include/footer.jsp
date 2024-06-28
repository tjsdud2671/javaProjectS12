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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
.modal-header{
	margin-top: 5px;
	margin-left:3px;
	font-size: 14px;
}
.modal-body{
	font-size:12px;
	margin-top:2%;
	margin-bottom:2%;
	margin-left: 5%;
	
}
.h4{
	text-transform: uppercase;
	font-size: 13px;
}

</style>
</head>
<body>
<footer class="w3-container w3-white" style="padding:32px; margin-left: 0">
<div class="footer1">
  <a href="#" class="w3-bar-item w3-button" data-toggle="modal" data-target="#myModal">NEWSLETTER</a>
  <a href="${ctp}/contact/contact" class="w3-bar-item w3-button">CONTACT</a>
  <c:if test="${sLevel == null}">
  <a href="${ctp}/member/memberLogin" class="w3-bar-item w3-button">ACCOUNT</a>
  </c:if>
  <c:if test="${sLevel==1 || sLevel==99}">
  <a href="${ctp}/member/memberPage" class="w3-bar-item w3-button">ACCOUNT</a>
  </c:if>
  <a href="https://vimeo.com/stussy" target="_blank"><img class="vimeo" src="${ctp}/images/vimeo.png"/></a>
  <a href="https://www.instagram.com/stussy" target="_blannk"><img class="insta" src="${ctp}/images/instagram.png"/></a>
</div>
<div class="footer2">
  <a href="${ctp}/admin/featuresList" class="w3-bar-item w3-button">FEATURES</a>
  <a href="${ctp}/admin/chapters" class="w3-bar-item w3-button">&nbsp;&nbsp;&nbsp;&nbsp;CHAPTERS</a>
  <a href="#" class="w3-bar-item w3-button" data-toggle="modal" data-target="#myModal-country" >COUNTRY</a>

  <img class="cLogo" src="${ctp}/images/cLogo.png"/>
</div>
<br/>
<div class="footer3">
 <div class="text-10 col-span-full border-t border-gray-light p-sm text-center tabletp:px-md ">코리아트라이브 유한회사 | 대표 SEJIN PARK | 사업자등록번호 561-87-00715 | 서울특별시 강남구 대치동 942 해성빌딩 | 통신판매신고번호 제 2018 - 서울서초 - 0860 호 [사업자정보<a href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=5618700715" target="_blank" rel="noopener noreferrer" style="color: #000000;"><u>확인</u></a>] | 전화 00-30832-10322 | 이메일 <a href="mailto:support@stussy.co.kr">support@stussy.co.kr</a> | 개인정보관리책임자 KOREA TRIBE, INC. | <a href="https://kr.stussy.com/pages/legal" target="_blank" rel="noopener noreferrer" style="color: #000000;"><u>개인정보취급방침</u></a></div>
</div>
</footer>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <p>구독하시면 새로운 스투시 소식을 받아 보실 수 있습니다.</p>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
		<div>
		<input class="modal-body" type="text" style="border: none; width: 90%;" name="email" id="email" placeholder="이메일" required>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button class="w3-button w3-block w3-black" onclick="#"><div class="w3-2" style="color: white; font-size: 13px;" >구독하기</div></button>
        </div>
        
      </div>
    </div>
  </div>

  <!-- The Modal -->
  <div class="modal fade" id="myModal-country">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
        <p class="h4"><b>Welcome to Stüssy</b></p>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
		<div >
		 <label for="CountryModalSelect" style="color: grey; font-size: 12px; margin-left: 15px;">배송지:</label>
		 <br/>
    	<select name="country_code" id="CountryModalSelect" class="form__select mt-sm h-40" data-canonical="/blogs/features" js-country-select style="margin-left: 15px; margin-bottom:10px; width: 90%; height: 40px;">
      
        <option value="AR">Argentina / ARS</option>
        <option value="AT">Austria / EUR</option>
        <option value="BH">Bahrain / USD</option>
        <option value="BE">Belgium / EUR</option>
        <option value="BR">Brazil / BRL</option>
        <option value="BG">Bulgaria / BGN</option>
        <option value="CA">Canada / CAD</option>
        <option value="CL">Chile / CLP</option>
        <option value="CO">Colombia / COP</option>
        <option value="CR">Costa Rica / CRC</option>
        <option value="HR">Croatia / EUR</option>
        <option value="CY">Cyprus / EUR</option>
        <option value="CZ">Czechia / CZK</option>
        <option value="DK">Denmark / DKK</option>
        <option value="DO">Dominican Republic / DOP</option>
        <option value="EC">Ecuador / USD</option>
        <option value="EG">Egypt / EGP</option>
        <option value="SV">El Salvador / USD</option>
        <option value="EE">Estonia / EUR</option>
        <option value="FI">Finland / EUR</option>
        <option value="FR">France / EUR</option>
        <option value="DE">Germany / EUR</option>
        <option value="GR">Greece / EUR</option>
        <option value="GT">Guatemala / GTQ</option>
        <option value="GG">Guernsey / GBP</option>
        <option value="HK">Hong Kong SAR / HKD</option>
        <option value="HU">Hungary / HUF</option>
        <option value="IS">Iceland / ISK</option>
        <option value="IN">India / INR</option>
        <option value="ID">Indonesia / IDR</option>
        <option value="IE">Ireland / EUR</option>
        <option value="IL">Israel / ILS</option>
        <option value="IT">Italy / EUR</option>
        <option value="JM">Jamaica / JMD</option>
        <option value="JP">Japan / JPY</option>
        <option value="JE">Jersey / GBP</option>
        <option value="KZ">Kazakhstan / KZT</option>
        <option value="KW">Kuwait / USD</option>
        <option value="LV">Latvia / EUR</option>
        <option value="LB">Lebanon / LBP</option>
        <option value="LT">Lithuania / EUR</option>
        <option value="LU">Luxembourg / EUR</option>
        <option value="MT">Malta / EUR</option>
        <option value="MX">Mexico / MXN</option>
        <option value="MC">Monaco / EUR</option>
        <option value="MN">Mongolia / MNT</option>
        <option value="NL">Netherlands / EUR</option>
        <option value="NG">Nigeria / NGN</option>
        <option value="NO">Norway / NOK</option>
        <option value="PK">Pakistan / PKR</option>
        <option value="PA">Panama / USD</option>
        <option value="PE">Peru / PEN</option>
        <option value="PH">Philippines / PHP</option>
        <option value="PL">Poland / PLN</option>
        <option value="PT">Portugal / EUR</option>
        <option value="QA">Qatar / QAR</option>
        <option value="RO">Romania / RON</option>
        <option value="SA">Saudi Arabia / SAR</option>
        <option value="SG">Singapore / SGD</option>
        <option value="SK">Slovakia / EUR</option>
        <option value="SI">Slovenia / EUR</option>
        <option value="ZA">South Africa / ZAR</option>
        <option value="KR" selected>South Korea / KRW</option>
        <option value="ES">Spain / EUR</option>
        <option value="SE">Sweden / SEK</option>
        <option value="CH">Switzerland / CHF</option>
        <option value="TW">Taiwan / TWD</option>
        <option value="TH">Thailand / THB</option>
        <option value="TR">Turkey / TRY</option>
        <option value="AE">United Arab Emirates / AED</option>
        <option value="GB">United Kingdom / GBP</option>
        <option value="US">United States / USD</option>
        <option value="UY">Uruguay / UYU</option>
        <option value="VE">Venezuela / USD</option>
        <option value="VN">Vietnam / VND</option>
      
    </select>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button class="w3-button w3-block w3-black" onclick="#"><div class="w3-2" style="color: white; font-size: 13px;" >저장</div></button>
        </div>
        
      </div>
    </div>
  </div>
  </body>
 </html>
  