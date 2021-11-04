<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko" data-triggered="true">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<title>넷플릭스</title>
<script type="text/javascript">
	function OptanonWrapper() {
	};
</script>

<link type="text/css" rel="stylesheet"
	href=<c:url value="/resources/css/NewFile.css" /> data-uia="botLink">

<style type="text/css" id="onetrust-style">
#onetrust-banner-sdk {
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%
}

#onetrust-banner-sdk .onetrust-vendors-list-handler {
	cursor: pointer;
	color: #1f96db;
	font-size: inherit;
	font-weight: bold;
	text-decoration: none;
	margin-left: 5px
}

#onetrust-banner-sdk .onetrust-vendors-list-handler:hover {
	color: #1f96db
}

#onetrust-banner-sdk .ot-close-icon, #onetrust-pc-sdk .ot-close-icon {
	background-image:
		url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMzQ4LjMzM3B4IiBoZWlnaHQ9IjM0OC4zMzNweCIgdmlld0JveD0iMCAwIDM0OC4zMzMgMzQ4LjMzNCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMzQ4LjMzMyAzNDguMzM0OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+PGc+PHBhdGggZmlsbD0iIzU2NTY1NiIgZD0iTTMzNi41NTksNjguNjExTDIzMS4wMTYsMTc0LjE2NWwxMDUuNTQzLDEwNS41NDljMTUuNjk5LDE1LjcwNSwxNS42OTksNDEuMTQ1LDAsNTYuODVjLTcuODQ0LDcuODQ0LTE4LjEyOCwxMS43NjktMjguNDA3LDExLjc2OWMtMTAuMjk2LDAtMjAuNTgxLTMuOTE5LTI4LjQxOS0xMS43NjlMMTc0LjE2NywyMzEuMDAzTDY4LjYwOSwzMzYuNTYzYy03Ljg0Myw3Ljg0NC0xOC4xMjgsMTEuNzY5LTI4LjQxNiwxMS43NjljLTEwLjI4NSwwLTIwLjU2My0zLjkxOS0yOC40MTMtMTEuNzY5Yy0xNS42OTktMTUuNjk4LTE1LjY5OS00MS4xMzksMC01Ni44NWwxMDUuNTQtMTA1LjU0OUwxMS43NzQsNjguNjExYy0xNS42OTktMTUuNjk5LTE1LjY5OS00MS4xNDUsMC01Ni44NDRjMTUuNjk2LTE1LjY4Nyw0MS4xMjctMTUuNjg3LDU2LjgyOSwwbDEwNS41NjMsMTA1LjU1NEwyNzkuNzIxLDExLjc2N2MxNS43MDUtMTUuNjg3LDQxLjEzOS0xNS42ODcsNTYuODMyLDBDMzUyLjI1OCwyNy40NjYsMzUyLjI1OCw1Mi45MTIsMzM2LjU1OSw2OC42MTF6Ii8+PC9nPjwvc3ZnPg==");
	background-size: contain;
	background-repeat: no-repeat;
	background-position: center;
	height: 12px;
	width: 12px
}

#onetrust-banner-sdk .powered-by-logo, #onetrust-banner-sdk .ot-pc-footer-logo a,
	#onetrust-pc-sdk .powered-by-logo, #onetrust-pc-sdk .ot-pc-footer-logo a
	{
	background-size: contain;
	background-repeat: no-repeat;
	background-position: center;
	height: 25px;
	width: 152px;
	display: block
}

#onetrust-banner-sdk h3 *, #onetrust-banner-sdk h4 *,
	#onetrust-banner-sdk h6 *, #onetrust-banner-sdk button *,
	#onetrust-banner-sdk a[data-parent-id] *, #onetrust-pc-sdk h3 *,
	#onetrust-pc-sdk h4 *, #onetrust-pc-sdk h6 *, #onetrust-pc-sdk button *,
	#onetrust-pc-sdk a[data-parent-id] * {
	font-size: inherit;
	font-weight: inherit;
	color: inherit
}

#onetrust-banner-sdk .ot-hide, #onetrust-pc-sdk .ot-hide {
	display: none !important
}

#onetrust-pc-sdk .ot-sdk-row .ot-sdk-column {
	padding: 0
}

#onetrust-pc-sdk .ot-sdk-container {
	padding-right: 0
}

#onetrust-pc-sdk .ot-sdk-row {
	flex-direction: initial;
	width: 100%
}

#onetrust-pc-sdk [type="checkbox"]:checked, #onetrust-pc-sdk [type="checkbox"]:not
	(:checked ) {
	pointer-events: initial
}

#onetrust-pc-sdk [type="checkbox"]:disabled+label::before,
	#onetrust-pc-sdk [type="checkbox"]:disabled+label:after,
	#onetrust-pc-sdk [type="checkbox"]:disabled+label {
	pointer-events: none;
	opacity: 0.7
}

#onetrust-pc-sdk #vendor-list-content {
	transform: translate3d(0, 0, 0)
}

#onetrust-pc-sdk li input[type="checkbox"] {
	z-index: 1
}

#onetrust-pc-sdk li .ot-checkbox label {
	z-index: 2
}

#onetrust-pc-sdk li .ot-checkbox input[type="checkbox"] {
	height: auto;
	width: auto
}

#onetrust-pc-sdk li .host-title a, #onetrust-pc-sdk li .ot-host-name a,
	#onetrust-pc-sdk li .accordion-text, #onetrust-pc-sdk li .ot-acc-txt {
	z-index: 2;
	position: relative
}

#onetrust-pc-sdk input {
	margin: 3px 0.1ex
}

#onetrust-pc-sdk .toggle-always-active {
	opacity: 0.6;
	cursor: default
}

#onetrust-pc-sdk .screen-reader-only, #onetrust-pc-sdk .ot-scrn-rdr {
	border: 0;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px
}

#onetrust-pc-sdk .pc-logo, #onetrust-pc-sdk .ot-pc-logo {
	height: 60px;
	width: 180px;
	background-position: center;
	background-size: contain;
	background-repeat: no-repeat
}

#onetrust-pc-sdk .ot-tooltip .ot-tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: #555;
	color: #fff;
	text-align: center;
	padding: 5px 0;
	border-radius: 6px;
	position: absolute;
	z-index: 1;
	bottom: 125%;
	left: 50%;
	margin-left: -60px;
	opacity: 0;
	transition: opacity 0.3s
}

#onetrust-pc-sdk .ot-tooltip .ot-tooltiptext::after {
	content: "";
	position: absolute;
	top: 100%;
	left: 50%;
	margin-left: -5px;
	border-width: 5px;
	border-style: solid;
	border-color: #555 transparent transparent transparent
}

#onetrust-pc-sdk .ot-tooltip:hover .ot-tooltiptext {
	visibility: visible;
	opacity: 1
}

#onetrust-pc-sdk .ot-tooltip {
	position: relative;
	display: inline-block;
	z-index: 3
}

#onetrust-pc-sdk .ot-tooltip svg {
	color: grey;
	height: 20px;
	width: 20px
}

#onetrust-pc-sdk.ot-fade-in, .onetrust-pc-dark-filter.ot-fade-in {
	animation-name: onetrust-fade-in;
	animation-duration: 400ms;
	animation-timing-function: ease-in-out
}

#onetrust-pc-sdk.ot-hide {
	display: none !important
}

.onetrust-pc-dark-filter.ot-hide {
	display: none !important
}

#ot-sdk-btn.ot-sdk-show-settings, #ot-sdk-btn.optanon-show-settings {
	color: #68b631;
	border: 1px solid #68b631;
	height: auto;
	white-space: normal;
	word-wrap: break-word;
	padding: 0.8em 2em;
	font-size: 0.8em;
	line-height: 1.2;
	cursor: pointer;
	-moz-transition: 0.1s ease;
	-o-transition: 0.1s ease;
	-webkit-transition: 1s ease;
	transition: 0.1s ease
}

#ot-sdk-btn.ot-sdk-show-settings:hover, #ot-sdk-btn.optanon-show-settings:hover
	{
	color: #fff;
	background-color: #68b631
}

#ot-sdk-btn.ot-sdk-show-settings:focus, #ot-sdk-btn.optanon-show-settings:focus
	{
	outline: none
}

.onetrust-pc-dark-filter {
	background: rgba(0, 0, 0, 0.5);
	z-index: 2147483646;
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0
}

@
keyframes onetrust-fade-in { 0%{
	opacity: 0
}

100
%
{
opacity


:


1
}
}
@media only screen and (min-width: 426px) and (max-width: 896px) and
	(orientation: landscape) {
	#onetrust-pc-sdk p {
		font-size: 0.75em
	}
}

#onetrust-banner-sdk, #onetrust-pc-sdk, #ot-sdk-cookie-policy {
	font-size: 16px
}

#onetrust-banner-sdk *, #onetrust-banner-sdk ::after,
	#onetrust-banner-sdk ::before, #onetrust-pc-sdk *, #onetrust-pc-sdk ::after,
	#onetrust-pc-sdk ::before, #ot-sdk-cookie-policy *,
	#ot-sdk-cookie-policy ::after, #ot-sdk-cookie-policy ::before {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box
}

#onetrust-banner-sdk div, #onetrust-banner-sdk span,
	#onetrust-banner-sdk h1, #onetrust-banner-sdk h2, #onetrust-banner-sdk h3,
	#onetrust-banner-sdk h4, #onetrust-banner-sdk h5, #onetrust-banner-sdk h6,
	#onetrust-banner-sdk p, #onetrust-banner-sdk img, #onetrust-banner-sdk svg,
	#onetrust-banner-sdk button, #onetrust-banner-sdk section,
	#onetrust-banner-sdk a, #onetrust-banner-sdk label,
	#onetrust-banner-sdk input, #onetrust-banner-sdk ul,
	#onetrust-banner-sdk li, #onetrust-banner-sdk nav, #onetrust-banner-sdk table,
	#onetrust-banner-sdk thead, #onetrust-banner-sdk tr,
	#onetrust-banner-sdk td, #onetrust-banner-sdk tbody,
	#onetrust-banner-sdk .ot-main-content, #onetrust-banner-sdk .ot-toggle,
	#onetrust-banner-sdk #ot-content, #onetrust-banner-sdk #ot-pc-content,
	#onetrust-banner-sdk .checkbox, #onetrust-pc-sdk div, #onetrust-pc-sdk span,
	#onetrust-pc-sdk h1, #onetrust-pc-sdk h2, #onetrust-pc-sdk h3,
	#onetrust-pc-sdk h4, #onetrust-pc-sdk h5, #onetrust-pc-sdk h6,
	#onetrust-pc-sdk p, #onetrust-pc-sdk img, #onetrust-pc-sdk svg,
	#onetrust-pc-sdk button, #onetrust-pc-sdk section, #onetrust-pc-sdk a,
	#onetrust-pc-sdk label, #onetrust-pc-sdk input, #onetrust-pc-sdk ul,
	#onetrust-pc-sdk li, #onetrust-pc-sdk nav, #onetrust-pc-sdk table,
	#onetrust-pc-sdk thead, #onetrust-pc-sdk tr, #onetrust-pc-sdk td,
	#onetrust-pc-sdk tbody, #onetrust-pc-sdk .ot-main-content,
	#onetrust-pc-sdk .ot-toggle, #onetrust-pc-sdk #ot-content,
	#onetrust-pc-sdk #ot-pc-content, #onetrust-pc-sdk .checkbox,
	#ot-sdk-cookie-policy div, #ot-sdk-cookie-policy span,
	#ot-sdk-cookie-policy h1, #ot-sdk-cookie-policy h2,
	#ot-sdk-cookie-policy h3, #ot-sdk-cookie-policy h4,
	#ot-sdk-cookie-policy h5, #ot-sdk-cookie-policy h6,
	#ot-sdk-cookie-policy p, #ot-sdk-cookie-policy img,
	#ot-sdk-cookie-policy svg, #ot-sdk-cookie-policy button,
	#ot-sdk-cookie-policy section, #ot-sdk-cookie-policy a,
	#ot-sdk-cookie-policy label, #ot-sdk-cookie-policy input,
	#ot-sdk-cookie-policy ul, #ot-sdk-cookie-policy li,
	#ot-sdk-cookie-policy nav, #ot-sdk-cookie-policy table,
	#ot-sdk-cookie-policy thead, #ot-sdk-cookie-policy tr,
	#ot-sdk-cookie-policy td, #ot-sdk-cookie-policy tbody,
	#ot-sdk-cookie-policy .ot-main-content, #ot-sdk-cookie-policy .ot-toggle,
	#ot-sdk-cookie-policy #ot-content, #ot-sdk-cookie-policy #ot-pc-content,
	#ot-sdk-cookie-policy .checkbox {
	font-family: inherit;
	font-size: initial;
	font-weight: normal;
	-webkit-font-smoothing: auto;
	letter-spacing: normal;
	line-height: normal;
	padding: 0;
	margin: 0;
	height: auto;
	min-height: 0;
	max-height: none;
	width: auto;
	min-width: 0;
	max-width: none;
	border-radius: 0;
	border: none;
	clear: none;
	float: none;
	position: static;
	bottom: auto;
	left: auto;
	right: auto;
	top: auto;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	white-space: normal;
	background: none;
	overflow: visible;
	vertical-align: baseline;
	visibility: visible;
	z-index: auto;
	box-shadow: none
}

#onetrust-banner-sdk label:before, #onetrust-banner-sdk label:after,
	#onetrust-banner-sdk .checkbox:after, #onetrust-banner-sdk .checkbox:before,
	#onetrust-pc-sdk label:before, #onetrust-pc-sdk label:after,
	#onetrust-pc-sdk .checkbox:after, #onetrust-pc-sdk .checkbox:before,
	#ot-sdk-cookie-policy label:before, #ot-sdk-cookie-policy label:after,
	#ot-sdk-cookie-policy .checkbox:after, #ot-sdk-cookie-policy .checkbox:before
	{
	content: "";
	content: none
}

#onetrust-banner-sdk .ot-sdk-container, #onetrust-pc-sdk .ot-sdk-container,
	#ot-sdk-cookie-policy .ot-sdk-container {
	position: relative;
	width: 100%;
	max-width: 100%;
	margin: 0 auto;
	padding: 0 20px;
	box-sizing: border-box
}

#onetrust-banner-sdk .ot-sdk-column, #onetrust-banner-sdk .ot-sdk-columns,
	#onetrust-pc-sdk .ot-sdk-column, #onetrust-pc-sdk .ot-sdk-columns,
	#ot-sdk-cookie-policy .ot-sdk-column, #ot-sdk-cookie-policy .ot-sdk-columns
	{
	width: 100%;
	float: left;
	box-sizing: border-box;
	padding: 0;
	display: initial
}

@media ( min-width : 400px) {
	#onetrust-banner-sdk .ot-sdk-container, #onetrust-pc-sdk .ot-sdk-container,
		#ot-sdk-cookie-policy .ot-sdk-container {
		width: 90%;
		padding: 0
	}
}

@media ( min-width : 550px) {
	#onetrust-banner-sdk .ot-sdk-container, #onetrust-pc-sdk .ot-sdk-container,
		#ot-sdk-cookie-policy .ot-sdk-container {
		width: 100%
	}
}
#onetrust-banner-sdk

 

.ot-sdk-column
,
#onetrust-banner-sdk

 

.ot-sdk-columns
,
#onetrust-pc-sdk

 

.ot-sdk-column
,
#onetrust-pc-sdk

 

.ot-sdk-columns
,
#o…
</style>
</head>
<body>
	<div id="appMountPoint">
		<div class="netflix-sans-font-loaded">

			<div
				class="basicLayout notMobile modernInApp hasExtendedDiacritics signupSimplicity-planSelectionWithContext simplicity"
				lang="ko-KR" dir="ltr">

				<div class="nfHeader noBorderHeader signupBasicHeader">

					<a href="<c:url value="/main.cdo"/>"
						class="svg-nfLogo signupBasicHeader"
						data-uia="netflix-header-svg-logo"> <svg viewBox="0 0 111 30"
							class="svg-icon svg-icon-netflix-logo" focusable="true">
							<g id="netflix-logo">

<path
								d="M105.06233,14.2806261 L110.999156,30 C109.249227,29.7497422 107.500234,29.4366857 105.718437,29.1554972 L102.374168,20.4686475 L98.9371075,28.4375293 C97.2499766,28.1563408 95.5928391,28.061674 93.9057081,27.8432843 L99.9372012,14.0931671 L94.4680851,-5.68434189e-14 L99.5313525,-5.68434189e-14 L102.593495,7.87421502 L105.874965,-5.68434189e-14 L110.999156,-5.68434189e-14 L105.06233,14.2806261 Z M90.4686475,-5.68434189e-14 L85.8749649,-5.68434189e-14 L85.8749649,27.2499766 C87.3746368,27.3437061 88.9371075,27.4055675 90.4686475,27.5930265 L90.4686475,-5.68434189e-14 Z M81.9055207,26.93692 C77.7186241,26.6557316 73.5307901,26.4064111 69.250164,26.3117443 L69.250164,-5.68434189e-14 L73.9366389,-5.68434189e-14 L73.9366389,21.8745899 C76.6248008,21.9373887 79.3120255,22.1557784 81.9055207,22.2804387 L81.9055207,26.93692 Z M64.2496954,10.6561065 L64.2496954,15.3435186 L57.8442216,15.3435186 L57.8442216,25.9996251 L53.2186709,25.9996251 L53.2186709,-5.68434189e-14 L66.3436123,-5.68434189e-14 L66.3436123,4.68741213 L57.8442216,4.68741213 L57.8442216,10.6561065 L64.2496954,10.6561065 Z M45.3435186,4.68741213 L45.3435186,26.2498828 C43.7810479,26.2498828 42.1876465,26.2498828 40.6561065,26.3117443 L40.6561065,4.68741213 L35.8121661,4.68741213 L35.8121661,-5.68434189e-14 L50.2183897,-5.68434189e-14 L50.2183897,4.68741213 L45.3435186,4.68741213 Z M30.749836,15.5928391 C28.687787,15.5928391 26.2498828,15.5928391 24.4999531,15.6875059 L24.4999531,22.6562939 C27.2499766,22.4678976 30,22.2495079 32.7809542,22.1557784 L32.7809542,26.6557316 L19.812541,27.6876933 L19.812541,-5.68434189e-14 L32.7809542,-5.68434189e-14 L32.7809542,4.68741213 L24.4999531,4.68741213 L24.4999531,10.9991564 C26.3126816,10.9991564 29.0936358,10.9054269 30.749836,10.9054269 L30.749836,15.5928391 Z M4.78114163,12.9684132 L4.78114163,29.3429562 C3.09401069,29.5313525 1.59340144,29.7497422 0,30 L0,-5.68434189e-14 L4.4690224,-5.68434189e-14 L10.562377,17.0315868 L10.562377,-5.68434189e-14 L15.2497891,-5.68434189e-14 L15.2497891,28.061674 C13.5935889,28.3437998 11.906458,28.4375293 10.1246602,28.6868498 L4.78114163,12.9684132 Z"
								id="Fill-14"></path></g></svg> <span class="screen-reader-text">Netflix</span></a><a
						href="<c:url value="/logout.do"/>"
						class="authLinks signupBasicHeader" data-uia="header-signout-link">로그아웃</a>
				</div>

				<div class="simpleContainer" data-transitioned-child="true">
					<div class="centerContainer contextStep"
						style="display: block; transform: none; opacity: 1; transition-duration: 250ms;">

						<div class="planContainer" data-uia="plan-context-page-container">
							<div class="stepLogoContainer">
								<span class="stepLogo planStepLogo"></span>
							</div>

							<div class="stepHeader-container" data-uia="header">
								<div class="stepHeader" data-a11y-focus="true" tabindex="0">
									<span id="" class="stepIndicator" data-uia=""><b>2</b>/<b>3단계</b></span>

									<h1 class="stepTitle" data-uia="stepTitle">원하는 멤버십을 선택하세요.</h1>
								</div>
							</div>

							<div class="contextBody contextRow">
								<ul class="checkmark-group" data-uia="checkmark-group">
									<li class="checkmark-group--row"
										data-uia="checkmark-group+row-0"><svg viewBox="0 0 24 24"
											class="checkmark-group--icon" aria-hidden="true">

<path fill="currentColor"
												d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg><span
										class="checkmark-group--text"
										data-uia="checkmark-group+row-0+content">無약정, 無위약금. 해지도
											쿨하게 언제든지.</span></li>

									<li class="checkmark-group--row"
										data-uia="checkmark-group+row-1"><svg viewBox="0 0 24 24"
											class="checkmark-group--icon" aria-hidden="true">
											<path fill="currentColor"
												d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg><span
										class="checkmark-group--text"
										data-uia="checkmark-group+row-1+content">넷플릭스의 모든 콘텐츠를
											하나의 요금으로.</span></li>

									<li class="checkmark-group--row"
										data-uia="checkmark-group+row-2"><svg viewBox="0 0 24 24"
											class="checkmark-group--icon" aria-hidden="true">
											<path fill="currentColor"
												d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg><span
										class="checkmark-group--text"
										data-uia="checkmark-group+row-2+content">모든 디바이스에서 무제한
											시청.</span></li>
								</ul>
							</div>
						</div>
						<div class="submitBtnContainer">


							<button type="button" onclick="location='step4.do'"
								autocomplete="off"
								class="nf-btn nf-btn-primary nf-btn-solid nf-btn-oversize"
								data-uia="continue-button" placeholder="button_see_plans">다음</button>
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
							<div class="copy-text-block">넷플릭스서비시스코리아 유한회사 통신판매업신고번호:
								제2018-서울종로-0426호 전화번호: 080-001-9587</div>

							<div class="copy-text-block">대표: 레지널드 숀 톰프슨</div>
							<div class="copy-text-block">이메일 주소: korea@netflix.com</div>

							<div class="copy-text-block">주소: 대한민국 서울특별시 종로구 우정국로 26,
								센트로폴리스 A동 20층 우편번호 03161</div>

							<div class="copy-text-block">사업자등록번호: 165-87-00119</div>
							<div class="copy-text-block">클라우드 호스팅: Amazon Web Services
								Inc.</div>

							<div id="" class="copy-text-block" data-uia="">
								<a href="">공정거래위원회 웹사이트</a>
							</div>
						</div>
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