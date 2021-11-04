<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넷플릭스</title>
<script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
<link rel="stylesheet" type="text/css"
	href="../resources/css/mypage.css">
<link rel="stylesheet" type="text/css" href="../resources/css/all.css">
<style>
.header_container {
	background: #000 !important;
}

#footer {
	background-color: #f3f3f3 !important;
	padding: 0 0 50px 0 !important;
}

.admin-table {
	display: table !important;
	background-color: #f3f3f3 !important;
}

#footer_wrap {
	width: 90% !important;
}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="paydecontainer">
		<div class="pay_div">
			<p>결제 상세 정보</p>
			<p id="membership_text1">내 멤버십</p>
			<div class="membership">
				<p id="membership_text2">회원님의 멤버십</p>
				<label id="my_membership">${clientVO.membership} </label> : 월 <label
					id="membership_price">${membershipVO.price }</label>원
				<p id="membership_people">동시 접속 0명</p>
				<br>
				<p id="membership_text2">다음 멤버십 요금</p>
				<p id="payment_month">${year}년${month }월 ${day }일</p>
			</div>
			<p id="membership_text3">멤버십 요금은 결제 주기 시작일에 청구되며, 계정에 청구일이 표시될
				때까지 수일이 걸릴 수 있습니다.</p>
		</div>
		<div class="pay_table_div">
			<table class="pay_table">
				<tr class="table_top">
					<th class="top1">날짜</th>
					<th class="top2">설명</th>
					<th class="top3">서비스 기간</th>
					<th class="top4">결제 수단</th>
					<th class="top5">소계</th>
					<th class="top6">총 합계</th>
				</tr>
				<tr class="table_content">
					<td class="table_text1">${clientVO.membership_date}</td>
					<td>스트리밍 서비스</td>
					<td>${clientVO.membership_date}- ${year}년 ${month }월 ${day }일</td>
					<td>신용카드 **** **** **** ${lastCardNum}</td>
					<td class="content5">${membershipVO.price_vat}원<p id="surtax">(+${membershipVO.price_vat_10}원
							부가세)</p></td>
					<td class="content6">${membershipVO.price }원</td>
				</tr>

			</table>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
	<script src="../resources/js/mypage.js"></script>
</body>
</html>