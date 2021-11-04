<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href="<c:url value="/resources/css/header.css" />"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/c7adb7b803.js"
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- header -->
	<header>
		<div class="header_container">
			<div class="logo">
				<a href="<c:url value="/main.cdo"/>"> <img
					src="<c:url value="/resources/img/Netflix_Logo.png" />"
					alt="NETFLIX">
				</a>
				<button class="header_toggleBtn">
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<ul class="main_nav hide_menu">
				<li class="main_nav_tab"><a href="">홈</a></li>
				<li class="main_nav_tab"><a href="">TV 프로그램</a></li>
				<li class="main_nav_tab"><a href="">영화</a></li>
				<li class="main_nav_tab"><a href="">최신 콘텐츠</a></li>
				<li class="main_nav_tab"><a href="">내가 찜한 콘텐츠</a></li>
			</ul>
			<ul class="sub_nav">
				<li class="sub_nav_tab hide_menu"><i class="fas fa-search"></i></li>
				<li class="sub_nav_tab hide_menu">키즈</li>
				<li class="sub_nav_tab hide_menu"><i class="fas fa-gift"></i></li>
				<li class="sub_nav_tab hide_menu"><i class="fas fa-bell"></i></li>
				<li class="sub_nav_tab" onmouseover="mover()" onmouseout="mout()"><img
					src="https://occ-0-395-325.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABbme8JMz4rEKFJhtzpOKWFJ_6qX-0y5wwWyYvBhWS0VKFLa289dZ5zvRBggmFVWVPL2AAYE8xevD4jjLZjWumNo.png?r=a41"
					alt="" />
					<div class="sub_nav_user_tab" id="user_tab_btn">
						<ul class="user_sec1">
							<c:forEach var="i" items="${profileList}">
							<c:if test="${i.row_num != profileInfo.row_num}"><!-- 로그인된 프로필은 안나오게  -->
								<li>
									<div style="display: flex" onclick="location='<c:url value="/profile/profile2.do?profile_name=${i.profile_name}&row_num=${i.row_num }"/>'">
										<img
											src="https://occ-0-395-325.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABbme8JMz4rEKFJhtzpOKWFJ_6qX-0y5wwWyYvBhWS0VKFLa289dZ5zvRBggmFVWVPL2AAYE8xevD4jjLZjWumNo.png?r=a41"
											alt=""/> <span>${i.profile_name}</span>
									</div>
								</li>
							</c:if>
							</c:forEach>
							<li><a href="<c:url value="/profile/profile.do"/>">프로필 관리</a></li>
						</ul>

						<ul>
							<li><a href="<c:url value="/mypage/mypage.do"/>">계정</a></li>
							<li><a href="<c:url value="/mypage/serviceCenter.do"/>">고객 센터</a></li>
							<li><a href="<c:url value="/logout.do"/>">로그아웃</a></li>
						</ul>
					</div></li>

			</ul>
		</div>
	</header>
    <script>
    function mover(){
        var ubox = document.getElementById("user_tab_btn")
        ubox.style.display ='block';
        ubox.style.background ='#black';
    }
    function mout(){
        var ubox = document.getElementById("user_tab_btn")
        ubox.style.display ='none';
    }
    </script>
</body>
</html>