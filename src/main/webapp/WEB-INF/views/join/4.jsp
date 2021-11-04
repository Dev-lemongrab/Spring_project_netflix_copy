<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	
<html lang="ko" data-triggered="true">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>netflix</title>

<link type="text/css" rel="stylesheet"
	href=<c:url value="/resources/css/NewFile.css" />
	data-uia="botLink">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>

	$(document).ready(function(){
		   $('.text3').css("color","#e50914");
		   $('.text1').css("color","#737373");
		   $('.text2').css("color","#737373");
		init();
	   
	   
	   function init(){
		   $('#planGrid_planChoice_0').click(function(){
			   $('.text1').css("color","#e50914");
			   $('.text2').css("color","#737373");
			   $('.text3').css("color","#737373");
		   });
		   
		   $('#planGrid_planChoice_1').click(function(){
			   $('.text2').css("color","#e50914");
			   $('.text1').css("color","#737373");
			   $('.text3').css("color","#737373");
		   });
		   
		   $('#planGrid_planChoice_2').click(function(){
			   $('.text3').css("color","#e50914");
			   $('.text1').css("color","#737373");
			   $('.text2').css("color","#737373");
		   });


	   }

			  
 });
			  


	</script>
</head>
<body>
	<div id="appMountPoint">
		<div class="netflix-sans-font-loaded">
			<div
				class="basicLayout notMobile modernInApp hasExtendedDiacritics signupSimplicity-planSelection simplicity"
				lang="ko-KR" dir="ltr">
				
				<div class="nfHeader noBorderHeader signupBasicHeader">
				<c:if test="${!empty authInfo}"><!-- 세션이 있으면 나오게끔 설정 -->
					<a href="<c:url value="/logout.do"/>" class="authLinks signupBasicHeader"
						data-uia="header-signout-link">로그아웃</a>
				</c:if>
				</div>
				
				<div class="simpleContainer" data-transitioned-child="true">
					
					<div class="centerContainer narrowCenterContainer"
						style="display: block; transform: none; opacity: 1; transition-duration: 250ms;">
						<form:form action ="step5.do" method="post" >
						<div class="planFormContainer" data-uia="form-plan-selection">
							<div class="">
								<div class="stepHeader-container" data-uia="header">

									<div class="stepHeader" data-a11y-focus="true" tabindex="0">
										<span id="" class="stepIndicator" data-uia=""><b>2</b>/<b>3단계</b></span>

										<h1 class="stepTitle" data-uia="stepTitle">원하는 멤버십을
											선택하세요.</h1>
									</div>
								</div>
								<div class="changeAnytime">
									<ul class="checkmark-group -compact" data-uia="checkmark-group">

										<li class="checkmark-group--row -compact"
											data-uia="checkmark-group+row-0"><svg
												viewBox="0 0 24 24" class="checkmark-group--icon"
												aria-hidden="true">

									<path fill="currentColor"
													d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg>

											<span class="checkmark-group--text"
											data-uia="checkmark-group+row-0+content">광고 없이 무제한으로
												시청.</span></li>

										<li class="checkmark-group--row -compact"
											data-uia="checkmark-group+row-1"><svg
												viewBox="0 0 24 24" class="checkmark-group--icon"
												aria-hidden="true">

								<path fill="currentColor"
													d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg>

											<span class="checkmark-group--text"
											data-uia="checkmark-group+row-1+content">취향에 꼭 맞는 콘텐츠를
												추천해 드립니다.</span></li>

										<li class="checkmark-group--row -compact"
											data-uia="checkmark-group+row-2"><svg
												viewBox="0 0 24 24" class="checkmark-group--icon"
												aria-hidden="true">

								<path fill="currentColor"
													d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg>

											<span class="checkmark-group--text"
											data-uia="checkmark-group+row-2+content">멤버십은 언제든지 변경
												또는 해지 가능.</span></li>
									</ul>
								</div>
							</div>

							<div class="planGrid planGrid--has3Plans" data-uia="plan-grid">
								<div class="planGrid__header">

									<div class="planGrid__selector planGrid__planSelector"
										role="radiogroup" aria-label="멤버십"
										aria-describedby="planGrid_planChoice_description"
										data-uia="plan-grid-plan-selector">

										<span class="planGrid__selectorDescription"
											id="planGrid_planChoice_description"
											data-uia="plan-grid-plan-selector+description"
											aria-hidden="true">원하는 멤버십을 선택하세요</span> <label
											class="planGrid__selectorChoice planGrid__planChoice"
											for="planGrid_planChoice_0"
											data-uia="plan-grid-plan-selector+label-text_1_stream_name">

											<input type="radio" name="planChoice"
											class="planGrid__selectorInput planGrid__planInput"
											id="planGrid_planChoice_0"
											data-uia="plan-grid-plan-selector+input-text_1_stream_name"
											value="basic"> <span
											class="planGrid__selectorLabel planGrid__planLabel">베이식</span>
										</label> <label class="planGrid__selectorChoice planGrid__planChoice"
											for="planGrid_planChoice_1"
											data-uia="plan-grid-plan-selector+label-text_2_stream_name">

											<input type="radio" name="planChoice"
											class="planGrid__selectorInput planGrid__planInput"
											id="planGrid_planChoice_1"
											data-uia="plan-grid-plan-selector+input-text_2_stream_name"
											value="standard"> <span
											class="planGrid__selectorLabel planGrid__planLabel">스탠다드</span>
										</label> <label class="planGrid__selectorChoice planGrid__planChoice"
											for="planGrid_planChoice_2"
											data-uia="plan-grid-plan-selector+label-text_4_stream_name">

											<input type="radio" name="planChoice"
											class="planGrid__selectorInput planGrid__planInput"
											id="planGrid_planChoice_2"
											data-uia="plan-grid-plan-selector+input-text_4_stream_name"
											value="premium" checked=""> <span
											class="planGrid__selectorLabel planGrid__planLabel">프리미엄</span>
										</label>
									</div>
								</div>

								<table class="planGrid__featureTable" role="table"
									data-uia="plan-grid-feature-table">
									<caption class="planGrid__featureTableCaption">넷플릭스
										멤버십 유형별 혜택</caption>

									<tbody class="planGrid__featureTableBody"
										data-uia="plan-grid-feature-table-body">

										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--planPrice">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-feature">월
												요금</td>

											<td 
												class="planGrid__cell planGrid__cell--isSelected planGrid__stringCell text1"
												role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-text_1_stream_name"
												aria-label="베이식">9,500원</td>

											<td  
												class="planGrid__cell planGrid__stringCell text2" role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-text_2_stream_name"
												aria-label="스탠다드">12,000원</td>

											<td class="planGrid__cell planGrid__stringCell text3" role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-text_4_stream_name"
												aria-label="프리미엄">14,500원</td>
										</tr>

										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--videoQuality text3">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-feature">영상
												화질</td>

											<td
												class="planGrid__cell planGrid__cell--isSelected planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-text_1_stream_name"
												aria-label="베이식">

												<div class="planGrid__videoQualityLabel text1">좋음</div>
											</td>

											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-text_2_stream_name"
												aria-label="스탠다드">

												<div class="planGrid__videoQualityLabel text2">매우 좋음</div>
											</td>

											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-text_4_stream_name"
												aria-label="프리미엄">

												<div class="planGrid__videoQualityLabel text3">가장 좋음</div>
											</td>
										</tr>

										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--resolution">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-feature">해상도</td>

											<td
												class="planGrid__cell planGrid__cell--isSelected planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-text_1_stream_name"
												aria-label="베이식">

												<div class="planGrid__videoQualityLabel text1">480p</div>
											</td>
											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-text_2_stream_name"
												aria-label="스탠다드">

												<div class="planGrid__videoQualityLabel text2">1080p</div>
											</td>
											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-text_4_stream_name"
												aria-label="프리미엄">

												<div class="planGrid__videoQualityLabel text3">4K+HDR</div>
											</td>
										</tr>
										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--noField">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+3-feature">TV,
												컴퓨터, 스마트폰, 태블릿으로 시청</td>

											<td
												class="planGrid__cell planGrid__cell--isSelected planGrid__booleanCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+3-text_1_stream_name"
												aria-label="베이식"><span class="planGrid__booleanIcon text1" aria-hidden="true">V</span></td>

											<td class="planGrid__cell planGrid__booleanCell text2" role="cell"
												data-uia="plan-grid-feature-table-cell+3-text_2_stream_name"
												aria-label="스탠다드"><span class="planGrid__booleanLabel text2">예</span>

												<span class="planGrid__booleanIcon" aria-hidden="true">V</span></td>

											<td class="planGrid__cell planGrid__booleanCell text3" role="cell"
												data-uia="plan-grid-feature-table-cell+3-text_4_stream_name"
												aria-label="프리미엄"><span class="planGrid__booleanLabel text3">예</span>

												<span class="planGrid__booleanIcon" aria-hidden="true">V</span></td>
					 					</tr>
									</tbody>
								</table>

								<small class="planGrid__disclaimer planGrid__standardDisclaimer"><span
									id="" data-uia="plan-grid-legal">HD(720p), 풀 HD(1080p),
										UHD(4K), HDR 화질 제공 여부는 사용하는 인터넷 서비스와 디바이스의 성능에 따라 달라질 수 있습니다.
										모든 콘텐츠가 모든 화질로 제공되지는 않습니다. 자세한 내용은 <a
										href="https://help.netflix.com/legal/termsofuse"
										target="_blank">이용 약관</a>을 확인하세요.
								</span></small> <small
									class="planGrid__disclaimer planGrid__standardDisclaimer"><span
									id="" data-uia="plan-grid-legal">한집에 사는 사람들만 계정을 함께 이용할
										수 있습니다. 프리미엄 멤버십은 동시접속 4명, 스탠다드 멤버십은 2명, 베이식 멤버십은 1명까지 가능합니다.</span></small>
							</div>
						</div>
						<div class="submitBtnContainer">
							<button type="submit" autocomplete="off"
								class="nf-btn nf-btn-primary nf-btn-solid nf-btn-oversize"
								data-uia="cta-plan-selection"
								placeholder="planSelection_button_continue">다음</button>
						</div>
						</form:form>
					</div>
				</div>
			</div>




			<div class="site-footer-wrapper centered"
				style="transition-duration: 250ms; opacity: 1;">

				   <div class="footer-divider"></div>
               <div class="site-footer">
                  <p class="footer-top">
                     질문이 있으신가요? 문의 전화: &nbsp;<a class="footer-top-a"
                        href="tel:080-001-9587">080-001-9587</a>
                  </p>

                  <ul class="footer-links structural">
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_faq_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_faq"><span id=""
                           data-uia="data-uia-footer-label">자주 묻는 질문</span></a></li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_help_item"><a
                        class="footer-link" data-uia="footer-link"
                        href="https://help.netflix.com"
                        placeholder="footer_responsive_link_help"><span id=""
                           data-uia="data-uia-footer-label">고객 센터</span></a></li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_terms_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_terms"> <span id=""
                           data-uia="data-uia-footer-label">이용 약관</span></a></li>
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_privacy_separate_link_item">

                        <a class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_privacy_separate_link">
                           <span id="" data-uia="data-uia-footer-label">개인정보</span>
                     </a>
                     </li>
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_cookies_separate_link_item">

                        <a class="footer-link" data-uia="footer-link" href="#"
                        placeholder="footer_responsive_link_cookies_separate_link"><span
                           id="" data-uia="data-uia-footer-label">쿠키 설정</span></a>
                     </li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_corporate_information_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_corporate_information">
                           <span id="" data-uia="data-uia-footer-label">회사 정보</span>
                     </a></li>
                  </ul>
                  <div class="lang-selection-container" id="lang-switcher">
                     <div class="nfSelectWrapper inFooter selectArrow prefix"
                        data-uia="language-picker+container">
                        <label class="nfLabel" for="lang-switcher-select">언어 선택</label>

                        <div class="nfSelectPlacement globe">
                           <select data-uia="language-picker" class="nfSelect"
                              id="lang-switcher-select" name="__langSelect" tabindex="0"><option
                                 selected="" value="/signup/regform?locale=ko-KR" label="한국어"
                                 lang="ko">한국어</option>
                              <option value="/signup/regform?locale=en-KR" label="English"
                                 lang="en">English</option></select>
                        </div>
                     </div>
                  </div>

                  <div class="copy-text">
                     <div class="copy-text-block">넷플릭스서비시스코리아 유한회사 통신판매업신고번호: 제2018-서울종로-0426호 전화번호:
                        080-001-9587</div>

                     <div class="copy-text-block">대표: 레지널드 숀 톰프슨</div>
                     <div class="copy-text-block">이메일 주소: korea@netflix.com</div>

                     <div class="copy-text-block">주소: 대한민국 서울특별시 종로구 우정국로 26, 센트로폴리스 A동 20층 우편번호 03161</div>

                     <div class="copy-text-block">사업자등록번호: 165-87-00119</div>
                     <div class="copy-text-block">클라우드 호스팅: Amazon Web Services Inc.</div>

                     <div id="" class="copy-text-block" data-uia="">
                        <a
                           href="">공정거래위원회
                           웹사이트</a>
                     </div>
                  </div>
               </div>
            </div>
			<div class="a11yAnnouncer" aria-live="assertive" tabindex="-1">

			</div>
		</div>
	</div>
	</div>
	<div></div>

	<div id="onetrust-consent-sdk">
		<div class="onetrust-pc-dark-filter ot-hide ot-fade-in"></div>
	</div>
</body>
</html>