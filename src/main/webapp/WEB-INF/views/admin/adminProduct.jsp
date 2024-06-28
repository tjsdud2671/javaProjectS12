<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="${ctp}/ckeditor/ckeditor.js"></script>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
    th {
      text-align: center;
      background-color: #eee;
    }
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h4 class="text-center">상품등록</h4>
  <form name="myform" method="post">
    <table class="table table-bordered">
      <tr>
        <th>상품명</th>
        <td><input type="text" name="name" id="name" placeholder="상품명을 입력하세요" autofocus required class="form-control"/></td>
      </tr>
        <th>색상</th>
        <td><input type="text" name="color" id="color" placeholder="색상을 입력하세요" autofocus required class="form-control"/></td>
      </tr>
      <tr>
        <th>가격</th>
        <td><input type="text" name="price" id="price" placeholder="가격을 입력하세요" class="form-control"/></td>
      </tr>
      <tr>
        <th>상품사진</th>
        <td><textarea rows="6" name="fname" id="CKEDITOR" class="form-control" required></textarea></td>
        <script>
	        CKEDITOR.replace("fname",{
	        	height:480,
	        	filebrowserUploadUrl:"${ctp}/imageUpload",		/* 파일(이미지) 업로드시에 매핑경로 */
	        	uploadUrl : "${ctp}/imageUpload"							/* 여러개의 그림파일을 드래그&드롭해서 올릴수 있다. */
	        });
        </script>
      </tr>
      <tr>
      	<div class="mb-2">
	    분류 :
	    <select name="part" id="part" class="form-control">
	    <option value="기타">분류선택</option>
  	    <option ${part="TEES" ? "selected" : ""}>TEES</option>
  	    <option ${part="SWEATS" ? "selected" : ""}>SWEATS</option>
  	    <option ${part="OUTWEAR" ? "selected" : ""}>OUTWEAR</option>
  	    <option ${part="BOTTOMS" ? "selected" : ""}>BOTTOMS</option>
  	    <option ${part="DENIM" ? "selected" : ""}>DENIM</option>
  	    <option ${part="KNITS" ? "selected" : ""}>KNITS</option>
  	    <option ${part="TOPS" ? "selected" : ""}>TOPS</option>
  	    <option ${part="SHIRTS" ? "selected" : ""}>SHIRTS</option>
  	    <option ${part="HEADWEAR" ? "selected" : ""}>HEADWEAR</option>
  	    <option ${part="ACCESSORIES" ? "selected" : ""}>ACCESSORIES</option>
	    </select>
	  </div>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <input type="button" onclick="location.href='${ctp}/admin/adminPage';" value="돌아가기" class="w3-button w3-black" />
          <input type="submit" value="상품등록" class="w3-button w3-khaki" /> &nbsp;
        </td>
      </tr>
    </table>

  </form>
</div>
<p><br/></p>
</body>
</html>