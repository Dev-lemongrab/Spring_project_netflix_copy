<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="ko" data-triggered="true">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>flix</title>
<link type="text/css" rel="stylesheet"
	href="../resources/css/NewFile.css"
	data-uia="botLink">
</head>
<body>
	<div id="appMountPoint">
		<div class="netflix-sans-font-loaded">
			<div
				class="basicLayout notMobile modernInApp hasExtendedDiacritics memberSimplicity-billingDateEditMode simplicity"
				lang="ko-KR" dir="ltr">
				<div class="nfHeader noBorderHeader signupBasicHeader">
					<a href="/" class="svg-nfLogo signupBasicHeader"
						data-uia="netflix-header-svg-logo"><svg viewBox="0 0 111 30"
							class="svg-icon svg-icon-netflix-logo" focusable="true">
							<g id="netflix-logo">
							<path
								d="M105.06233,14.2806261 L110.999156,30 C109.249227,29.7497422 107.500234,29.4366857 105.718437,29.1554972 L102.374168,20.4686475 L98.9371075,28.4375293 C97.2499766,28.1563408 95.5928391,28.061674 93.9057081,27.8432843 L99.9372012,14.0931671 L94.4680851,-5.68434189e-14 L99.5313525,-5.68434189e-14 L102.593495,7.87421502 L105.874965,-5.68434189e-14 L110.999156,-5.68434189e-14 L105.06233,14.2806261 Z M90.4686475,-5.68434189e-14 L85.8749649,-5.68434189e-14 L85.8749649,27.2499766 C87.3746368,27.3437061 88.9371075,27.4055675 90.4686475,27.5930265 L90.4686475,-5.68434189e-14 Z M81.9055207,26.93692 C77.7186241,26.6557316 73.5307901,26.4064111 69.250164,26.3117443 L69.250164,-5.68434189e-14 L73.9366389,-5.68434189e-14 L73.9366389,21.8745899 C76.6248008,21.9373887 79.3120255,22.1557784 81.9055207,22.2804387 L81.9055207,26.93692 Z M64.2496954,10.6561065 L64.2496954,15.3435186 L57.8442216,15.3435186 L57.8442216,25.9996251 L53.2186709,25.9996251 L53.2186709,-5.68434189e-14 L66.3436123,-5.68434189e-14 L66.3436123,4.68741213 L57.8442216,4.68741213 L57.8442216,10.6561065 L64.2496954,10.6561065 Z M45.3435186,4.68741213 L45.3435186,26.2498828 C43.7810479,26.2498828 42.1876465,26.2498828 40.6561065,26.3117443 L40.6561065,4.68741213 L35.8121661,4.68741213 L35.8121661,-5.68434189e-14 L50.2183897,-5.68434189e-14 L50.2183897,4.68741213 L45.3435186,4.68741213 Z M30.749836,15.5928391 C28.687787,15.5928391 26.2498828,15.5928391 24.4999531,15.6875059 L24.4999531,22.6562939 C27.2499766,22.4678976 30,22.2495079 32.7809542,22.1557784 L32.7809542,26.6557316 L19.812541,27.6876933 L19.812541,-5.68434189e-14 L32.7809542,-5.68434189e-14 L32.7809542,4.68741213 L24.4999531,4.68741213 L24.4999531,10.9991564 C26.3126816,10.9991564 29.0936358,10.9054269 30.749836,10.9054269 L30.749836,15.5928391 Z M4.78114163,12.9684132 L4.78114163,29.3429562 C3.09401069,29.5313525 1.59340144,29.7497422 0,30 L0,-5.68434189e-14 L4.4690224,-5.68434189e-14 L10.562377,17.0315868 L10.562377,-5.68434189e-14 L15.2497891,-5.68434189e-14 L15.2497891,28.061674 C13.5935889,28.3437998 11.906458,28.4375293 10.1246602,28.6868498 L4.78114163,12.9684132 Z"
								id="Fill-14"></path></g></svg><span class="screen-reader-text">flix</span></a><a
						href="/signout" class="authLinks signupBasicHeader"
						data-uia="header-signout-link">로그아웃</a>
				</div>
				<div class="simpleContainer" data-transitioned-child="true">
					<div class="centerContainer firstLoad">
						<div class="billingDate--container">
							<div>
								<div class="stepHeader-container" data-uia="header">
									<div class="stepHeader" data-a11y-focus="true">
										<h1 class="stepTitle" data-uia="stepTitle-billingDateEditMode">새
											결제일을 선택하세요.</h1>
									</div>
								</div>
								<div class="billingDate--subtitle"
									data-uia="stepSubtitle-billingDateEditMode">
									<span id="" data-uia="">현재 멤버십 요금은 <b>매월 10일</b>에 청구됩니다.
										더 선호하는 날짜가 있으면 얼마든지 변경하세요.
									</span>
								</div>
							</div>
							<div>
								<div class="billingDate--infoContainer">
									<div class="billingDate--infoTitle">새 결제일</div>
									<form method="POST" name="edit-billing-date">
										<div class="billingDate--scheduleContainer">
											<div
												class="billingDate--scheduleRow billingDate--newDateSelector">
												<div class="billingDate--scheduleColumn">
													<ul class="simpleForm structural ui-grid">
														<li data-uia="field-newBillingDay+wrapper"
															class="nfFormSpace"><div
																class="nfSelectWrapper nfSelectOversize selectArrow"
																data-uia="field-newBillingDay+container">
																<div class="nfSelectPlacement">
																	<select data-uia="field-newBillingDay" class="nfSelect"
																		name="newBillingDay" tabindex="0">
																		<option></option>
																		<option value="01" label="1일">1일</option>
																		<option value="02" label="2일">2일</option>
																		<option value="03" label="3일">3일</option>
																		<option value="04" label="4일">4일</option>
																		<option value="05" label="5일">5일</option>
																		<option value="06" label="6일">6일</option>
																		<option value="07" label="7일">7일</option>
																		<option value="08" label="8일">8일</option>
																		<option value="09" label="9일">9일</option>
																		<option value="10" label="10일">10일</option>
																		<option value="11" label="11일">11일</option>
																		<option value="12" label="12일">12일</option>
																		<option value="13" label="13일">13일</option>
																		<option value="14" label="14일">14일</option>
																		<option value="15" label="15일">15일</option>
																		<option value="16" label="16일">16일</option>
																		<option value="17" label="17일">17일</option>
																		<option value="18" label="18일">18일</option>
																		<option value="19" label="19일">19일</option>
																		<option value="20" label="20일">20일</option>
																		<option value="21" label="21일">21일</option>
																		<option value="21" label="21일">22일</option>
																		<option value="23" label="23일">23일</option>
																		<option value="24" label="24일">24일</option>
																		<option value="25" label="25일">25일</option>
																		<option value="26" label="26일">26일</option>
																		<option value="27" label="27일">27일</option>
																		<option value="LAST_OF_THE_MONTH" label="해당 월의 말일">해당월의 말일</option>
																</select><label class="nfLabel placeLabel"></label>
																</div>
															</div></li>
													</ul>
												</div>
												<div class="billingDate--scheduleColumn -left">(매월)</div>
											</div>
										</div>
										<div class="submitBtnContainer">
											<button type="submit" autocomplete="off" 
												class="nf-btn nf-btn-primary nf-btn-solid nf-btn-oversize"
												data-uia="submitBtn-billingDateEditMode">검토 및 확인</button>
												
												
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
							<div class="site-footer-wrapper centered">
					<div class="footer-divider"></div>

					<div class="site-footer">
						<p class="footer-top">
							질문이 있으신가요? 문의 전화: &nbsp;<a class="footer-top-a"
								href="tel:010-123-4567">010-123-4567</a>
						</p>

						<ul class="footer-links structural">
							<li class="footer-link-item"
								placeholder="footer_responsive_link_faq_item"><a
								class="footer-link" data-uia="footer-link" href=00
								placeholder="footer_responsive_link_faq"> <span id=""
									data-uia="data-uia-footer-label">자주 묻는 질문</span></a></li>
							<li class="footer-link-item"
								placeholder="footer_responsive_link_help_item"><a
								class="footer-link" data-uia="footer-link" href=00
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
								placeholder="footer_responsive_link_corporate_information_item">

								<a class="footer-link" data-uia="footer-link" href=00
								placeholder="footer_responsive_link_corporate_information">

									<span id="" data-uia="data-uia-footer-label">회사 정보</span>
							</a>
							</li>
						</ul>

						<div class="lang-selection-container" id="lang-switcher">
							<div class="nfSelectWrapper inFooter selectArrow prefix"
								data-uia="language-picker+container">

								<label class="nfLabel" for="lang-switcher-select">언어 선택</label>
								<div class="nfSelectPlacement globe">

									<select data-uia="language-picker" class="nfSelect"
										id="lang-switcher-select" name="__langSelect" tabindex="0">

										<option selected="" value="/signup/registration?locale=ko-KR"
											label="한국어" lang="ko">한국어</option>

										<option value="/signup/registration?locale=en-KR"
											label="English" lang="en">English</option>
									</select>
								</div>
							</div>
						</div>

						<div class="copy-text">
							<div class="copy-text-block">가자플릭스서비시스코리아 유한회사 통신판매업신고번호:
								제2021-서울종로-0001호 전화번호: 010-1234-5678</div>
							<div class="copy-text-block">대표: kim KG</div>
							<div class="copy-text-block">이메일 주소: korea@kajaflix.com</div>
							<div class="copy-text-block">주소: 대한민국 서울특별시 종로구 아무대로,
								KG건물어디 3층 305호 우편번호 00001</div>
							<div class="copy-text-block">사업자등록번호: 111-22-33333</div>
							<div class="copy-text-block">클라우드 호스팅: Amazon Web Services
								Inc.</div>
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