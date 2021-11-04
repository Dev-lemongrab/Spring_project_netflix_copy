<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넷플릭스</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/mypage.css?ver=2">
	<link rel="stylesheet" type="text/css" href="../resources/css/all.css?ver=2">
   <style>
    .header_container{
       background: #000 !important;
    }
    #footer{
    background-color: #f3f3f3 !important;
    padding:0 0 50px 0 !important;
    }
    .admin-table{
   display:table !important;
   background-color:#f3f3f3 !important;
    }
    #footer_wrap{
       width: 90% !important;
    }
</style>
</head>
<body>
     <%@ include file="../include/header.jsp" %>
     <div class="pwcontainer">
     	<div class="email_div form-div">
     	<form:form method="post" commandName="changeEmail">
     	<p>이메일 변경</p>
     	<input type="text" name="currenEmail" class="hastext textbox" id="currenEmail" tabindex="0" value="${authInfo.email} " readonly>
     	   <label for="currenEmail" class="placeLabel pl1 ">현재 이메일</label>
     	   
     	   <input type="email" name="newEmail" 
                class="hastext textbox1 " id="newEmail" tabindex="0" autocomplete="off" maxlength="60" minlength="6" placeholder ="새 이메일">
             <br><form:errors path="newEmail"/>
             <div class="pw_btn_div">
                    <input type="submit" value="저장" class="pw_btn pw_btn1">
                    <input type="reset" value="취소" class="pw_btn pw_btn2">
                </div>
     	</form:form>
     	</div>
     </div>

     <%@ include file="../include/footer.jsp" %>
    <script src="../js/mypage.js?ver=2"></script>
</body>
</html>