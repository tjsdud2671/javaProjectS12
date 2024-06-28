<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" >
	<div class="aa" id="myDIV">
		<div class="img_cnt" id="cimg_cnt">
			<c:forEach var="vo" items="${vos}" varStatus="st">
			${vo.email}
			</c:forEach>
		</div>
	</div>	
</div>

</body>
</html>