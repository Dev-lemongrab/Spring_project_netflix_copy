<%@page import="com.mgr.netflix.client.vo.ProfileInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
    	List<ProfileInfo> profileList = (List<ProfileInfo>)session.getAttribute("profileList");
    	ProfileInfo profileInfo0=null;
    	ProfileInfo profileInfo1=null;
    	ProfileInfo profileInfo2=null;
    	for(int i = 0; i< profileList.size(); i++){
	    	if(i==0){
    			profileInfo0 = profileList.get(i);
	    		session.setAttribute("profileInfo0", profileInfo0);
	    	}
	    	else if(i==1){
    			profileInfo1 = profileList.get(i);
	    		session.setAttribute("profileInfo1", profileInfo1);
	    		
	    	}
	    	else{
    			profileInfo2 = profileList.get(i);		
	    		session.setAttribute("profileInfo2", profileInfo2);
	    		
	    	}
    	}
  
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    <div class="container">
        <div class="main">
            <div class="main_top">
                <label class="main_text">계정</label>
                <label id="membership_text"><img src="https://assets.nflxext.com/ffe/siteui/account/svg/membersince.svg">멤버십 시작일 : 9월 2020</label>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">멤버십 & 결제 정보</div><br>
                    <div class="title1_btn" onclick="location='planCancel.do'">멤버십 해지</div>
                </div>
                <div class="row_content1">
                    <div class="content_all content1">
                        <div class="text_all text1">
                            <p id="font_weight">${authInfo.email}</p>
                            <a href="changeemail.do">계정 이메일 변경</a>
                        </div>
                        <div class="text_all text2">
                            <p>비밀번호: ********</p>
                            <a href="changePw.do">비밀번호 변경</a>
                        </div>
                        <div class="text_all text3">
                            <p>전화번호: ${phone}</p>
                            <a href="changephone.do">휴대폰 번호 변경</a>
                        </div>
                    </div>
                    <div class="content_all content2">
                        <div class="text_all text1">
                            <p id="font_weight">신용카드 **** **** **** ${lastCardNum }</p>
                            <a href="managePaymentInfo.do">결제 정보 관리</a>
                        </div>
                        <div class="text_all text2">
                            <p>다음 결제일은 ${nextMonth}입니다.</p>
                            <a href="paymentdetail.do">결제 상세 정보</a>
                        </div>
                        <div class="text_all text3">
                            <p>&nbsp;</p>
                            <a href="changepaymentdate.do">결제일 변경</a>
                        </div>
                    </div>
                    <div class="content_all2">
                        <div class="text_all text1">
                            <p>&nbsp;</p>
                            <a href="#">기프트카드 또는 할인 코드 입력</a>
                        </div>
                        <div class="text_all text2">
                            <p>&nbsp;</p>
                            <a href="#">기프트카드 판매처</a>
                        </div>
                    </div>
                </div>
            </div>

            <hr>

            <div class="row">
                <div class="content_div">
                    <div class="title1">멤버십 상세 정보</div><br>
                </div>
                <div class="row_content1">
                    <div class="content_all2">
                    <div class="text_all text1">
                        <p id="font_weight" class="membership-info">${authInfo.membership }</p>
                        <a href="changeplan.do">멤버십 변경</a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">설정</div>
                </div>
                <div class="content_all2">
                    <p class="text_all"><a href="#">넷플릭스 테스터로 참여</a></p>
                    <p class="text_all"><a href="#">영상 저장 디바이스 관리</a></p>
                    <p class="text_all"><a href="#">디바이스 활성화</a></p>
                    <p class="text_all"><a href="#">디바이스 최근 시청 기록</a></p>
                    <p class="text_all"><a href="#">모든 디바이스에서 로그아웃</a></p>
                    <p class="text_all"><a href="#">개인 정보 다운로드</a></p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">프로필 & 자녀 보호 설정</div>
                </div>
                <div class="row_content1">
                
                    <div class="content_all content3 user_content1">
                        <div class="user_all user1">
                            <img src='<c:url value="/resources/img/profile1.png"/>'>
                        </div>
                        <div class="user_text">
                            <strong><%=profileInfo0.getProfile_name() %></strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src='<c:url value="/resources/img/down2_icon.png"/>' id="down_btn">
                    </div>
                    <div class="click_div1">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p><%=profileInfo0.getLanguage() %></p>
                            </div>
                            <a href='<c:url value="/profile/profileEdit2.do?profile_name=${profileInfo0.profile_name}&row_num=${profileInfo0.row_num}"/>'>변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href='<c:url value="/viewed.cdo"/>'>변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="viewed.jsp?tab=2">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href='<c:url value="/profile/profileEdit2.do?profile_name=${profileInfo0.profile_name}&row_num=${profileInfo0.row_num}"/>'>변경</a>
                        </div>
                    </div>
                    <div class="content_all content3 user_content2">
                        <div class="user_all user2">
                            <img src='<c:url value="/resources/img/profile2.png"/>'>
                        </div>
                        <div class="user_text">
                            <strong><%=profileInfo1.getProfile_name() %></strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src='<c:url value="/resources/img/down2_icon.png"/>' id="down_btn">
                    </div>
                    <div class="click_div2">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p><%=profileInfo1.getLanguage() %></p>
                            </div>
                             <a href='<c:url value="/profile/profileEdit2.do?profile_name=${profileInfo1.profile_name}&row_num=${profileInfo1.row_num}"/>'>변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                             <a href='<c:url value="/profile/profileEdit2.do?profile_name=${profileInfo1.profile_name}&row_num=${profileInfo1.row_num}"/>'>변경</a>
                        </div>

                    </div>
                    <div class="content_all content3 user_content3">
                        <div class="user_all user3">
                            <img src='<c:url value="/resources/img/profile3.png"/>'>
                        </div>
                        <div class="user_text">
                            <strong><%=profileInfo2.getProfile_name() %></strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src='<c:url value="/resources/img/down2_icon.png"/>' id="down_btn">
                    </div>
                    <div class="click_div3">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p><%=profileInfo2.getLanguage()%></p>
                            </div>
 						<a href='<c:url value="/profile/profileEdit2.do?profile_name=${profileInfo2.profile_name}&row_num=${profileInfo2.row_num}"/>'>변경</a>
                        </div>

                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
 						<a href='<c:url value="/profile/profileEdit2.do?profile_name=${profileInfo2.profile_name}&row_num=${profileInfo2.row_num}"/>'>변경</a>
                        </div>

                    </div>
                    <div class="content_all content3 user_content4">
                        <div class="user_all user4">
                            <img src='<c:url value="/resources/img/profile4.png"/>'>
                        </div>
                        <div class="user_text">
                            <strong>유화</strong>
                            <p>모든 관람 등급</p>
                        </div>
                       <img src='<c:url value="/resources/img/down2_icon.png"/>' id="down_btn">
                    </div>
                    <div class="click_div4">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p>한국어</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                    </div>
                </div>
            </div>
                <div class="margin"></div>
        </div>
    </div>
     <%@ include file="../include/footer.jsp" %>
    <script src="../resources/js/mypage.js"></script>
</body>
</html>