<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="<c:url value="/resources/css/profileform.css" />"rel="stylesheet">
</head>
<body>

    <%@ include file="../include/header.jsp" %>
    
    <form action="profileForm.do" name="profiles" method="POST">    
        <div class="profile-container">
            <h1>프로필 변경</h1>
            <div class="profile-entry">
                <div class="left-entry">
                    <div class="profile_img_box">
                        <img src="https://occ-0-395-325.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABdLE65M0RqgkEkkKEgn4l0iumsWlqoMW6bvJkNMcm04WpEBR7p2tnK-RjavnW_33-9gsxZpAN8gb4OS7YWgNq0jxgmkk.png?r=6ce"" alt="">
                    </div>
                </div>
                <div class="right-entry">
                    <div class="inputs-edit">
                        <label for="profile-name-entry" id="profile-name" class="visual-hidden"></label>
                        <input type="text" class="profile-name-entry" placeholder="이름" value="${profile_name}" name ="profile_name">
                        <input type="hidden" value="${row_num}" name="row_num">
                    </div>
                    <div class="drop-entry">
                        <div class="profile-drop">
                            <h2 class="entry-header">언어</h2>
                            <div class="select_lang">
                                <select name="language" id="lang-sel">
                                    <option value="한국어" selected>한국어</option>
                                    <option value="English">English</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="entry-restrictions">
                        <h2 class="entry-header">관람등급</h2>
                        <p class="entry-level">모든 관람등급</p>
                        <p class="entry-level-info">이 프로필에서는 <b>모든 관람등급</b>의 콘텐츠가 표시됩니다.</p>
                    </div>
                    <div class="autoplay-entry">
                        <h2 class="entry-header">자동 재생 설정</h2>
                        <div class="autoplay-option">
                            <input name="series_ap" type="checkbox" id="nextepi-profile" value="true" checked >
                            <label for="nextepi-profile" role="checkbox" aria-checked="true" aria-labelledby="nextepi-marker" tabindex="0"><span></span></label>
                            <span class="nextepi-marker" id="nextepi-marker">모든 디바이스에서 시리즈의 다음화 자동 재생</span>
                        </div>
                        <div class="autoplay-option">
                            <input name="preview_ap" type="checkbox" id="videomerch-profile" value="true" checked>
                            <label for="videomerch-profile" role="checkbox" aria-checked="true" aria-labelledby="videomerch-marker"><span></span></label>
                            <span class="videomerch-marker" id="videomerch-marker">모든 디바이스에서 탐색 중 미리보기 자동 재생</span>
                        </div>
                    </div>
                </div>
            </div><!-- profile_name/ row_num/ lang/  series_ap/ preview_ap-->
            <input type="submit" value="저장" class="profiles-btn profiles-save">
            <input type="reset" value="취소" class="profiles-btn profiles-cancel">
        </div>
    </form>
</body>
</html>