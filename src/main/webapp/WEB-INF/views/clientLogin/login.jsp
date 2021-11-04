<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="resources/css/login.css?ver=1">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<script>
	function detail() {
		var con = document.getElementById("detail");
		if (con.style.display == 'none') {
			con.style.display = 'block';
		} else {
			con.style.display = 'none';
		}
	}
</script>
</head>
<body>
	<section class="LoginSection">
		<div class="LoginDiv">
			<div class="title">
				<h1>로그인</h1>
			</div>
			<div class="form">
				<form:form id="login" commandName="loginVo">
					<p>
						<input type="text" name="email" placeholder="이메일 주소 또는 전화번호">
						<%-- <form:errors path="email"/> --%>
					</p>
					<p>
						<input type="password" name="password" placeholder="비밀번호">
						<%-- <form:errors path="password"/> --%>
					</p>
					<p>
						<input type="submit" value="로그인">
						<a class="admin_login" href="admin_login.ado">관리자 접속</a>
					<p>
					<input id="infoCk" type="checkbox" name="loginInfo">
					<label for="infoCk">로그인정보 저장</label>
					<a href="#">도움이 필요하신가요?</a>
					<!-- 회원정보찾는 페이지로 이동 -->
				</form:form>
			</div>
		
			<div class="facebookLogin">
				<a href="#"><i id="icon" class="fab fa-facebook-square fa-2x facebook_icon"></i>Facebook으로 로그인</a>
			</div>
			<div class="joinQ">
				Netfilx 회원이 아닌가요?
				<!--누르면 회원가입으로 이동하게 함 -->
				<a href="#"> 지금 가입하세요</a>
				<!-- 회원가입페이지로 이동 -->
			</div>
			<div class="caution">
				<p>이 페이지는 Google reCAPTCHA의 보호를 받아 사용자가 로봇이 아님을 확인합니다.<a href="javascript:detail();">자세히 알아보기</a></p>
				
			</div>
			<div id=detail>Google reCAPTCHA가 수집하는 정보에는 Google 개인정보처리방침과
				서비스약관이 적용되며, 해당정보는 reCAPTCHA 서비스제공, 관리 및 개선과 일반적인 보안유지에 사용됩니다.
				(Google의 개인 맞춤광고에 사용 안함.</div>
		</div>
	</section>
</body>
</html>