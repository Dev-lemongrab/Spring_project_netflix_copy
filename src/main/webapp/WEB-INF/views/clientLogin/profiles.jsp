<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="UTF-8">
<title>넷플릭스</title>

<link href="<c:url value="/resources/css/profiles.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/header.css" />"
	rel="stylesheet">

</head>

<body>
	<header>
		<div class="header_container">
			<div class="logo">
				<a href=""> <img
					src="<c:url value="/resources/images/Netflix_Logo.png" />"
					alt="NETFLIX">
				</a>
			</div>
		</div>
	</header>
	<section id="section1">
		<div class="profiles_container">
			<h2 class="profile_hr">넷플릭스를 시청할 프로필을 선택하세요.</h2>
			<div class="profiles_list">
				<ul class="choose_list">
					<c:forEach var="i" items="${profileList }">
						<li>
							<div class="profile_link">
							   <div class="profiles_icon" onclick="location='<c:url value="/profile/profile2.do?profile_name=${i.profile_name }&row_num=${i.row_num }"/>'"></div>
							   <span class="profiles_name">${i.profile_name }</span>
							</div>
						</li>
					</c:forEach>
                    <li>
                        <div class="profile_link">
                           <div class="profiles_icon"></div>
                           <span class="profiles_name">키즈</span>
                        </div>
                    </li>
				</ul>
			</div>
            <button class="profiles_edit_btn" onclick="location='<c:url value="/profile/profileEdit.do"/>'">프로필 편집</button>
		</div>
	</section>






</body>
</html>