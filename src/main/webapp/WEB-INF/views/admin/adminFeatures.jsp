<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    .textarea {
    width: 100%;
    height: 6.25em;
    border: none;
    resize: none;
  }
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h4 class="text-center">FEATURES</h4>
  <form name="myform" method="post">
    <table class="table table-bordered">
      <tr>
        <th>제목</th>
        <td><input type="text" name="title" id="title" placeholder="제목을 입력하세요" autofocus required class="form-control"/></td>
      </tr>
      <tr>
        <th>날짜</th>
        <td><input type="date" name="wDate" id="wdate" placeholder="등록일" class="form-control"/></td>
      </tr>
			
      <tr>
        <th>내용</th>
        <td><textarea class="textarea" name="content" id="content" placeholder="내용을 입력해 주세요"></textarea></td>
      </tr>
      <tr>
        <th>이미지</th>
        <td><textarea rows="6" name="fname" id="CKEDITOR" class="form-control" required></textarea></td>
        <script>
	        CKEDITOR.replace("fname",{
	        	height:480,
	        	filebrowserUploadUrl:"${ctp}/imageUpload2",		/* 파일(이미지) 업로드시에 매핑경로 */
	        	uploadUrl : "${ctp}/imageUpload2"							/* 여러개의 그림파일을 드래그&드롭해서 올릴수 있다. */
	        });
        </script>
      </tr>
     
      <tr>
        <td colspan="2" class="text-center">
          <input type="button" onclick="location.href='${ctp}/admin/adminPage';" value="돌아가기" class="w3-button w3-black" />
          <input type="submit" value="등록" class="w3-button w3-khaki" /> &nbsp;
        </td>
      </tr>
    </table>

  </form>
</div>
<p><br/></p>
</body>
</html>