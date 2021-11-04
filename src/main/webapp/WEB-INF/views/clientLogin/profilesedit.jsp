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
<script src="https://kit.fontawesome.com/c7adb7b803.js"
	crossorigin="anonymous"></script>
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
			<h2 class="profile_hr">프로필 관리</h2>
			<div class="profiles_list">
				<ul class="choose_list">
						
					
					<c:forEach var="i" items="${profileList }">
						<li>
							<div class="profile_wrapper">
								<div class="profile_link"  style="opacity: 0.5">
									<div class="profiles_icon" onclick="location='<c:url value="/profile/profileEdit2.do?profile_name=${i.profile_name }&row_num=${i.row_num }"/>'">
									</div>
									<span class="profiles_name">${i.profile_name }</span>	
								</div>
								<i class="fas fa-pencil-alt edit_icon"></i>
							</div>
						</li>
					</c:forEach>
                    <li>
                        <div class="profile_wrapper">
                            <div class="profile_link"  style="opacity: 0.5">
                                <div class="profiles_icon" >
                                </div>
                                <span class="profiles_name">키즈</span>    
                            </div>
                            <i class="fas fa-pencil-alt edit_icon"></i>
                        </div>
                    </li>
				</ul>
			</div>   
			<button class="profiles_complate_btn"
				onclick="location='<c:url value="/profile/profile.do"/>'">완료</button>
		</div>
	</section>






</body>
</html>