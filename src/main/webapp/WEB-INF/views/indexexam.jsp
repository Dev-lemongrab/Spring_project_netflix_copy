<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<h2>메인</h2>
<c:if test="${empty authInfo }">
	<p><a href="<c:url value="/join/step1.do"/>">회원가입</a></p>
	<p><a href="<c:url value="/clientLogin.do"/>">로그인</a>
	<p><a href="<c:url value="/main.do"/>">메인으로 가기</a>"
</c:if>
<c:if test="${!empty authInfo }">
	<p>${authInfo.name }님으로 로그인</p>
	<p><a href="<c:url value=""/>">비밀번호변경</a></p>
	<p><a href="<c:url value=""/>">로그아웃</a>
</c:if>
</body>
</html>