<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/mypage.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/all.css">
</head>
<body>
     <%@ include file="../include/header.jsp" %>
     <div class="pwcontainer">
     	<div class="pw_div">
     	<form:form method="post" commandName="phoneChangeVO">
     	<p><strong>전화번호를 변경하세요</strong></p>

     	<input type="text" name="currenPhone" class="hastext textbox2" id="currenPhone" value="${phone}" readonly>
     	<label for="currenPassword" class="placeLabel pl1"></label>
     	
     	<input type="text" name="newPhone" class="hastext textbox1 " id="newPhone" placeholder="새로운 전화번호" ><br>
     	
     	 <div><p><form:errors path="newPhone"/></p>등록하신 전화번호는 나중에 접속 문제를 해결하거나 계정을 복구하는데 사용됩니다.</div>
     	 <br><br>
             <div class="pw_btn_div">
                    <input type="submit" value="저장" class="pw_btn pw_btn1">
                    <input type="reset" value="취소" class="pw_btn pw_btn2">
                </div>
     	</form:form>
     	</div>
     </div>

     <%@ include file="../include/footer.jsp" %>
     	    <script src="../resources/js/mypage.js"></script>
</body>
</html>