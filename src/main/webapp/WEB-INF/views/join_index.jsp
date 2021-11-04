<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>넷플릭스</title>
<link rel="shortcut icon" type="image/x-icon" href="media/로고.png">

<link rel="icon"
	href="https://cdn-icons-png.flaticon.com/512/732/732228.png"
	type="image/x-icon" sizes="16x16">

<script src="https://kit.fontawesome.com/c7adb7b803.js"
    crossorigin="anonymous"></script>
<link href="<c:url value="/resources/css/join_index.css" />"
    rel="stylesheet">

</head>
<body>
	<div id="page_area">
		<div class="logo">
			<img src="https://i.ibb.co/r5krrdz/logo.png" width="180px"
				height="50px" alt="" />
		</div>
		<div class="back1"></div>
		<select class="language">
			<option>한국어</option>
			<option>English</option>
		</select>
		

		
		<c:if test="${empty authInfo}">
     		 <button onclick="location='<c:url value="/clientLogin.do" />'" class="loginBtn">로그인</button>
		</c:if>
		<c:if test="${!empty authInfo }">
			 <button onclick="location='<c:url value="/logout.do" />'" class="loginBtn">로그아웃</button>
		</c:if>
		

		<div class="con_Text">
			<div class="con_Text1">회원님, 반갑습니다.</div>
			<div class="con_Text2">영화, TV 프로그램을<br> 무제한으로.</div>
			<div class="con_Text3">다양한 디바이스에서 시청하세요. 언제든 해지하실 수 있습니다.</div>

			<button onclick="location='<c:url value="/join/step4.do" />'" class="emailBtn">
				가입마무리하기 <i class="fas fa-chevron-right btn-icon"></i>
			</button>
		</div>
	</div>
</body>

</html>