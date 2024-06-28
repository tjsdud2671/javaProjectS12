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
.content{
	margin-top: 2%;
	margin-left: 11%;
	float: left;
	width: 45%;
	font-size: 12px;
}
.footer{
	margin-top: 30%;
}
.w3-hide{
	margin-left: 2%;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/pop.jsp" />
<jsp:include page="/WEB-INF/views/include/nav1.jsp" />
<jsp:include page="/WEB-INF/views/include/nav3.jsp" />

  <div class="content">
	<h5><b>LEGAL</b></h5>
	<div class="que">
		<br/>
		<hr/>
		<button onclick="myFunction('Demo1')" class="w3-button w3-block w3-left-align">
		<b>이용약관</b></button>
		<div id="Demo1" class="w3-hide">
		제1조 (목적)<br/><br/>이 약관은 스투시 코리아 트라이브(이하 “회사”)에서 운영하는 STUSSY스토어를 통하여 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.<br/><br/><br/>PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다<br/><br/><br/>스투시 챕터 매장 래플 응모<br/><br/>본 추첨에 응모하는 것은 응모 및 출시제품 구매에 관한 모든 사항에 있어 최종적이며 구속력이 있는 본 약관에 대한 완전하고 무조건적인 합의를 구성합니다. 응모자격은 본 약관에 명시된 모든 요건에 대한 이행을 조건으로 합니다.<br/><br/>등록된 이메일 주소, 전화번호, 우편번호 및 선택하신 사이즈/색상을 기재해야 합니다.<br/>매장 내 구매 시 사진이 부착된 유효한 정부 발급 신분증을 제시해야 합니다. 응모자의 성명은 사진이 부착된 신분증에 기재된 성명과 일치해야 합니다.<br/>인당 한 개의 색상, 한 개의 출시 제품으로 제한됩니다. 동일한 색상에 중복 응모하는 경우 부적격 처리 됩니다.<br/>응모가 완료되면 등록 내역은 수정할 수 없습니다.<br/>구매는 추첨 응모 시 명시된 등록된 성명과 이메일 주소, 제품, 사이즈 및 색상에 대한 경우에만 유효합니다.<br/>당첨자의 출시 제품 구매 기회는 재고 여부에 따라 달라질 수 있습니다.<br/>응모는 양도할 수 없습니다.<br/>응모는 타인에게 판매, 양도, 이전 또는 달리 제공될 수 없습니다. 계정 보유자가 이러한 행위를 한 사실이 확인되는 경우 부적격 처리됩니다.<br/>추첨 응모 절차는 Stussy, Inc.의 재량으로 언제든지 변경될 수 있습니다.<br/>추첨이 종료되면 당첨자들은 문자로 통지를 받게 됩니다.<br/>Stussy, Inc.는 단독 재량으로 응모 절차나 추첨 응모 및/또는 제품 구매의 운영을 조작하거나 본 약관을 위반하는 행동을 하는 것으로 판단되는 개인의 자격을 박탈할 수 있습니다. 누구든 등록 및/또는 제품 구매의 정당한 운영을 저해하려는 시도를 할 경우 민·형사상 법률에 위배될 수 있으며, 그러한 시도가 있는 경우 Stussy, Inc.는 그를 상대로 법률상 허용되는 최대 범위의 손해배상을 청구할 수 있습니다.<br/>제2조 (정의)<br/><br/>“회사”란 스투시 코리아 트라이브 가 재화 또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br/>이용자란 “회사”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br/>회원이라 함은 “회사”에 개인정보를 제공하여 회원등록을 한 자로서, “회사”의 정보를 지속적으로 제공받으며, “회사”가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br/>비회원이라 함은 회원에 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말합니다.<br/>제3조 (약관등의 명시와 설명 및 개정)<br/><br/>“회사”는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호,모사전송번호,전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록“회사”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br/>“회사”는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회,배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br/>“회사” 은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br/>“회사”가약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께“회사”의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “회사”는 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br/>“회사”가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 ‘회“에 송신하여 ”회사“의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br/>이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br/>제4조 (서비스의 제공 및 변경)<br/><br/>“회사”는 다음과 같은 업무를 수행합니다.<br/><br/>재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br/>구매계약이 체결된 재화 또는 용역의 배송<br/>기타 “회사”가 정하는 업무<br/>“회사”는재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br/><br/><br/>“회사”가제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br/><br/>전항의 경우”회사”는이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br/><br/>제5조(서비스의 중단)<br/><br/>“회사”는  컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br/><br/><br/>“회사”는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br/><br/><br/>사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는”회사”는제8조에 정한 방법으로 이용자에게 통지하고 당초 “회사”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “회사”가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “회사”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br/><br/><br/>제6조(회원가입)<br/><br/>이용자는 “회사”가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br/><br/>“회사”는제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.<br/>가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실후 3년이 경과한 자로서 “회사”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br/>등록 내용에 허위, 기재누락, 오기가 있는 경우<br/>중복 가입을 시도하는 경우<br/>기타 회원으로 등록하는 것이 “회사”의 기술상 현저히 지장이 있다고 판단되는 경우<br/>회원가입계약의 성립시기는 “회사”의 승낙이 회원에게 도달한 시점으로 합니다.<br/><br/><br/>회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로”회사”에 대하여 그 변경사항을 알려야 합니다.<br/><br/><br/>제7조 (회원 탈퇴 및 자격 상실 등)<br/><br/>회원은 “회사”에 언제든지 탈퇴를 요청할 수 있으며 “회사”는 즉시 회원탈퇴를 처리합니다.<br/><br/><br/>회원이 다음 각호의 사유에 해당하는 경우,”회사”는 회원자격을 제한 및 정지시킬 수 있습니다.<br/><br/>가입 신청시에 허위 내용을 등록한 경우<br/>“회사”를 이용하여 구입한 재화등의 대금, 기타 “회사”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 <br/>다른 사람의 “회사” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br/>재판매를 목적으로 재화 등을 중복 구매하여 “회사”의 정상적인 영업 및 운영을 방해하는 경우 (예컨대, 중복 가입을 통해 대량 구매하는 경우)<br/>“회사”를 이용하여 법령에 반하는 행위를 하는 경우<br/>“회사”가 회원 자격을 제한, 정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 “회사”은 회원자격을 상실시킬 수 있습니다.<br/><br/><br/>“회사”가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br/><br/><br/>제8조 (회원에 대한 통지)<br/>“회사”가 회원에 대한 통지를 하는 경우, 회원이  “회사”와 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br/>“회사”는불특정다수 회원에 대한 통지의 경우 1주일이상 “회사” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br/>제9조 (구매신청)<br/><br/>“회사”이용자는 “회사”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “회사”는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.<br/><br/>재화등의 검색 및 선택<br/>성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br/>약관내용, 청약철회권이 제한되는 서비스, 배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인<br/>이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br/>재화등의 구매신청 및 이에 관한 확인 또는 “회사”의 확인에 대한 동의<br/>결제방법의 선택<br/>제10조 (계약의 성립)<br/><br/><br/>“회사”는 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br/><br/>신청 내용에 허위, 기재누락, 오기가 있는 경우<br/>미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br/>기타 구매신청에 승낙하는 것이”회사” 기술상 현저히 지장이 있다고 판단하는 경우<br/>재판매 목적으로 재화 등을 대량으로 중복 구매하여 “회사”의 거래질서를 방해하는 것으로 판단되는 경우 (예컨대, 동일한 이용자가 중복 가입을 통해 대량 구매하는 경우)<br/>“회사”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br/><br/><br/>“회사”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소등에 관한 정보등을 포함하여야 합니다.<br/><br/><br/>제11조 (지급방법)<br/><br/>“회사”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중 가용한 방법으로 할 수 있습니다. 단, “회사”는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br/><br/>폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체<br/>선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br/>온라인무통장입금<br/>전자화폐에 의한 결제<br/>수령시 대금지급<br/>마일리지 등“회사”가 지급한 포인트에 의한 결제<br/>“회사”와계약을 맺었거나 “회사”가 인정한 상품권에 의한 결제<br/>기타 전자적 지급 방법에 의한 대금 지급 등<br/>제12조 (수신확인통지 구매신청 변경 및 취소)<br/><br/>“회사”는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br/><br/>수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고“회사”는 배송전에 이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.<br/>제13조(재화등의 공급)<br/><br/>“회사”는 이용자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “회사”가 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를 취합니다. 이때 “회사”는 이용자가 재화등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br/><br/><br/>“회사”는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “회사”가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “회사”가 고의, 과실이 없음을 입증한 경우에는 그러하지 아니합니다.<br/><br/><br/>제14조 (환급)<br/><br/><br/>“회사”는 이용자가 구매신청한 재화등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.<br/><br/><br/>제15조(청약철회 등)<br/><br/><br/>“회사” 재화등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.<br/><br/><br/>이용자는 재화등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br/><br/>이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br/>이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br/>시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br/>같은 성능을 지닌 재화등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br/>제2항제2호 내지 제4호의 경우에“회사”가사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.<br/><br/>이용자는 제1항 및 제2항의 규정에 불구하고 재화등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화등을 공급받은 날부터 3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.<br/>제16조 (청약철회 등의 효과)<br/>“회사”는 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화등의 대금을 환급합니다. 이 경우  “회사”가 이용자에게 재화등의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br/>“회사”는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br/>청약철회등의 경우 공급받은 재화등의 반환에 필요한 비용은 이용자가 부담합니다.“회사”는이용자에게 청약철회등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는 경우 재화등의 반환에 필요한 비용은 “회사”가 부담합니다.<br/>이용자가 재화등을 제공받을때 발송비를 부담한 경우에  “회사”는 청약철회시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.<br/>제17조(개인정보보호)<br/><br/><br/>“회사”는 이용자의 정보수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.<br/><br/>성명<br/>주소<br/>전화번호<br/>희망ID (회원의 경우)<br/>비밀번호 (회원의 경우)<br/>전자우편주소 (또는 이동전화번호)<br/>“회사”는 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.<br/><br/><br/>제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은“회사”가집니다. 다만, 다음의 경우에는 예외로 합니다.<br/><br/><br/>배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우<br/><br/>통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br/>재화등의 거래에 따른 대금정산을 위하여 필요한 경우<br/>도용방지를 위하여 본인확인에 필요한 경우<br/>법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우<br/><br/>“회사”가제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 정보통신망이용촉진등에관한법률 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br/><br/>이용자는 언제든지 “회사”가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “회사” 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “회사”는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br/>“회사”는개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br/>&quot;회사” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체없이 파기합니다.<br/><br/><br/>제18조 (“회사” 의 의무)<br/> “회사”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화, 용역을 제공하는데 최선을 다하여야 합니다.<br/>“회사”는이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보 (신용정보 포함) 보호를 위한 보안 시스템을 갖추어야 합니다.<br/>“회사”가상품이나 용역에 대하여 「표시?광고의공정화에관한법률」 제3조 소정의 부당한 표시 광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br/>“회사”는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br/>제19조 (회원의 ID 및 비밀번호에 대한 의무)<br/><br/>제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br/>회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br/>회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “회사”에 통보하고 “회사”의 안내가 있는 경우에는 그에 따라야 합니다.<br/>각 회원은 하나의 ID만을 갖는 것을 원칙으로 합니다.<br/>제20조 (이용자의 의무)<br/><br/>이용자는 다음 행위를 하여서는 안됩니다.<br/><br/>신청 또는 변경시 허위 내용의 등록<br/>타인의 정보 도용<br/>“회사”에 게시된 정보의 변경<br/>“회사”가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br/>“회사” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br/>“회사” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br/>외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 회사에 공개 또는 게시하는 행위<br/>제21조 (연결“회사”와 피연결“회사” 간의 관계)<br/><br/>상위 “회사”와 하위 “회사”가 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “회사”(웹 사이트)이라고 하고 후자를 피연결 “회사”(웹사이트)이라고 합니다.<br/>연결“회사”는 피연결“회사”가 독자적으로 제공하는 재화등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.<br/>제22조 (저작권의 귀속 및 이용제한)<br/><br/>“회사”가 작성한 저작물에 대한 저작권 기타 지적재산권은 ”회사“에 귀속합니다.<br/>이용자는 “회사”를 이용함으로써 얻은 정보 중 “회사”에게 지적재산권이 귀속된 정보를 “회사”의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br/>“회사”는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.<br/>제23조 (분쟁해결)<br/><br/>“회사”는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치,운영합니다.<br/>“회사”는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br/>“회사”와 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br/>제24조 (재판권 및 준거법)<br/><br/>“회사”와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br/>“회사”와 이용자간에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br/>관련된 정보는 SUPPORT@STUSSY.CO.KR 로 영업일 오전 9시부터 오후 4시까지 문의해 주시기 바랍니다.
		</div>
		<hr/>
		<button onclick="myFunction('Demo2')" class="w3-button w3-block w3-left-align">
		<b>개인정보 보호정책</b></button>
		<div id="Demo2" class="w3-hide">
		‘STUSSY’는 (이하 ‘회사’는) 고객님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지) 을 통하여 공지할 것입니다.<br/><br/><br/>개인정보 수집 및 이용목적<br/><br/>대부분의 몰 서비스는 별도의 회원가입 절차 없이 언제든지 사용할 수 있습니다.<br/><br/>그러나 몰 회원서비스 (메일, 마이페이지, 쇼핑 등)을 통하여 이용자들에게 맞춤식 서비스를 비롯한 보다 더 향상된 양질의 서비스를 제공하기 위하여 이용자 개인의 정보를 수집하고 있습니다.<br/><br/><br/>몰은 이용자들이 몰의 개인정보 보호정책 또는 이용약관의 내용에 대하여 「동의함」버튼 또는 「동의안함」버튼을 클릭할 수 있는 절차를 마련하여, 「동의함」 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.<br/><br/><br/>몰 이용자의 사전 동의 없이는 이용자의 개인 정보를 함부로 공개하지 않으며 수집된 정보는 아래와 같이 이용하고 있습니다.<br/><br/><br/>(수집항목 : 이름, 로그인ID, 비밀번호, 전화번호, 주소, 휴대전화번호, 이메일 등)<br/><br/>서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금 결제. 구매 및 요금 결제, 물품배송 또는 사은품 등 발송.<br/>회원 관리. 회원제 서비스 이용에 따른 본인확인, 가입 의사 확인,  만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리, 고지사항 전달.<br/>마케팅 및 광고에 활용. 신규 서비스(제품) 개발,  이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계.<br/>개인정보 보유 및 이용기간<br/><br/><br/>몰의 회원이 자신의 개인정보 열람, 수정 및 삭제 절차에 따라 ID를 삭제하거나 가입해지를 요청한 경우에 수집된 개인의 정보는 재생할 수 없는 방법에 의하여 하드디스크에서 완전히 삭제되며 어떠한 용도로도 열람 또는 이용할 수 없도록 처리됩니다.<br/><br/><br/>그리고 회원의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다.<br/><br/><br/>단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.<br/><br/>계약 또는 청약철회 등에 관한 기록 : 5년<br/>대금결제 및 재화등의 공급에 관한 기록 : 5년<br/>소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br/>개인정보 파기절차 및 방법<br/><br/><br/>몰은 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br/><br/><br/>파기절차<br/><br/>회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.<br/>별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.<br/>파기방법<br/><br/>전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br/>종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br/>개인정보 제공 및 공유<br/><br/><br/>원칙적으로 몰 이용자의 개인정보를 서비스와 무관한 타인 또는 타기업, 기관에 공개하지 않습니다. <br/><br/>다만 아래의 경우에는 예외적으로 동의 없이 개인정보를 제공할 수 있습니다.<br/><br/> 몰 서비스 이용약관을 위배하거나 몰 서비스를 이용하여 타인에게 법적인 피해를 주거나 미풍양속을 해치는 행위를 한 경우<br/>기타 법적인 조치를 취하기 위하여 개인정보를 공개해야 한다고 판단되는 충분한 근거가 있는 경우<br/>주문상품 배송시 업무상 배송업체에게 최소한의 배송 정보를 제공하는 경우<br/>개인정보 위탁처리<br/><br/><br/>몰은 회원의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.<br/><br/><br/>이용자 및 법정 대리인의 권리와 행사방법<br/><br/><br/>회원은 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.<br/><br/><br/>개인정보 조회 및 수정을 위해서는 로그인 후에「마이페이지」버튼을 클릭하여 직접 열람, 정정 또는 회원탈퇴가 가능합니다.<br/><br/>혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.<br/>귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.<br/><br/>또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.<br/>몰은 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 몰이 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br/><br/><br/>개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항<br/><br/><br/>이용자에게 특화된 맞춤서비스를 제공하기 위해서 몰 이용자의 정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’ 를 사용합니다.<br/><br/>쿠키는 웹사이트를 운영하는데 이용되는 서버(HTTP)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br/>쿠키를 이용하여 이용자들이 방문한 몰의 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 이용자 규모 등을 파악하여 더욱 더 편리한 서비스를 만들어 제공할 수 있고 이용자에게 최적화된 정보를 제공할 수 있습니다.<br/>이용자는 쿠키에 대하여 사용여부를 선택할 수 있습니다.<br/>웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용할 수도 있으며 쿠키가 저장될 때마다 확인을 거치거나 모든 쿠키의 저장을 거부할 수도 있습니다.<br/>다만 쿠키의 저장을 거부할 경우에는 로그인이 필요한 몰의 일부 서비스는 이용할 수 없습니다.<br/>미성년자 및 아동의 보호정책<br/><br/>현행법상 만14세 미만의 어린이들은 온라인으로 타인에게 개인정보를 보내기 전에 반드시 개인정보의 수집 및 이용목적에 대하여 충분히 숙지하고 법정대리인의 동의를 받아야 합니다.<br/>만14세 미만 어린이의 법정대리인은 어린이의 개인정보 열람, 정정, 동의철회를 요청할 수 있으며 이러한 요청이 있을 경우 회사는 지체없이 필요한 조치를 취합니다.<br/>개인정보에 관한 민원 서비스<br/><br/><br/>고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.<br/><br/>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.<br/><br/>회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.<br/><br/>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br/><br/>개인분쟁조정위원회 (http://www.1336.or.kr/1336)<br/>정보보호마크인증위원회 (http://www.eprivacy.or.kr/02-580-0533~4)<br/>대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)<br/>경찰청 사이버테러대응센터 (http://www.ctrc.go.kr/02-392-0330)<br/>관련된 정보는 support@stussy.co.kr 로 영업일 오전 9시부터 오후 4시까지 문의해주세요.
		</div>
		<hr/>
	</div>
  </div>
  <div class="footer">
  <!-- End page content -->
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
