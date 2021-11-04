<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>넷플릭스</title>
   <link rel="shortcut icon" type="image/x-icon" href="media/로고.png">
   
   <link rel="icon" 
    	href="https://cdn-icons-png.flaticon.com/512/732/732228.png" 
    	type="image/x-icon" sizes="16x16">
    
   
   <style>
      body {background-color:black;}

      #logo {
         display:inline-block;
         position:relative;
         left:50px;
         top:20px;
         z-index:2;
         /* background: rgba(0, 0, 0, 0.6); */
      }
      
     
      #back1 {
         display:inline-block;
         position:absolute;
         top:0px;
         left:0px;
         z-index:1;
         background: rgba(0, 0, 0, 0.6);
         box-shadow: inset 150px 120px 150px #000000, inset -120px -100px 250px #000000;
         background-image: url("https://assets.nflxext.com/ffe/siteui/vlv3/45e6f443-8eff-4c7b-ba24-fbdc84c37718/86f2c3aa-4f1b-480c-8ec9-696ba92dd424/KR-ko-20210927-popsignuptwoweeks-perspective_alpha_website_large.jpg");
         width: 3000px;
         height: 900px;

      }
      .back1 {
         opacity: 0.4;
          filter: alpha(opacity=40);
          
          
     
      }
      #language {
         display:inline-block;
         position:absolute;
         right:160px;
         top:25px;
         z-index:2;
         background-color:black;
         font-size:17px;
         color:White;
         padding:5px 10px;
         border-radius:1px;
      }
      #loginBtn {
         display:inline-block;
         position:absolute;
         right:50px;
         top:25px;
         z-index:2;
         background-color:red;
         font-size:17px;
         color:White;
         padding:7px 15px;
         border-radius:5px;
         border: none;
      }
      #headerText {
         display:inline-block;
         z-index:3;
         color:White;
         position: absolute;
           top: 50%;
           left: 50%;
           transform: translate(-50%,-50%);

      }
      #headerText1 {
         width:560px;
         margin-left:220px;
         margin-top:200px;
         font-size:60px;
         font-weight:bold;
         text-align:center;

      }
      #headerText2 {
         width:700px;
         margin-left:150px;
         margin-top:20px;
         font-size:30px;
         text-align:center;

      }
      #headerText3 {
         font-size:20px;
         width:1000px;
         margin-top:20px;
         text-align:center;

      }
      #email {
           width:500px;
           height:70px;
           margin-left:150px;
           margin-top:20px;
           background-color:white;
           vertical-align:middle;
           font-size: 15px;
           padding-left:10px;
      }
      #emailBtn {
         width:200px;
         height:77px;
         background-color:red;
         font-size:20px;
         color:White;
         margin-top:20px;
          margin-left: -10px;
         border-radius:2px;
         vertical-align:middle
      }

      #section1 {
         display:inline-block;
         position:absolute;
         top:900px;
         left:0px;
         width:100%;
         height:500px;
         z-index:1;
      }

      #box1 {
         width:100%;
         height:8px;
         background-color:gray;
         box-shadow: 0 0 100px 100px black;
         opacity: 0.25;
          filter: alpha(opacity=20);
      }
      #section1Text {
         display:inline-block;
         z-index:3;
         color:White;
         position: absolute;
           top: 50%;
           left: 30%;
           transform: translate(-50%,-50%);
      }
      #section1Text1 {
         width:500px;
         font-size:45px;
         font-weight:bold;
         text-align:left;
      }
      #section1Text2 {
         width:500px;
         margin-top:20px;
         font-size:25px;
         text-align:left;
      }
      #tv1 {
         width:500px;
         display:inline-block;
         z-index:3;
         color:White;
         position: absolute;
           top: 50%;
           left: 70%;
           transform: translate(-50%,-50%);
      }
      #video1 {
         width:400px;
         display:inline-block;
         z-index:2;
         color:White;
         position: absolute;
           top: 50%;
           left: 70%;
           transform: translate(-50%,-50%);
      }
      #section2 {
         display:inline-block;
         position:absolute;
         top:1400px;
         left:0px;
         width:100%;
         height:500px;
         z-index:1;
      }
      #section2Text {
         display:inline-block;
         z-index:3;
         color:White;
         position: absolute;
           top: 50%;
           left: 65%;
           transform: translate(-50%,-50%);
      }
      #section2Text1 {
         width:450px;
         font-size:45px;
         font-weight:bold;
         text-align:left;
      }
      #section2Text2 {
         width:520px;
         margin-top:20px;
         font-size:25px;
         text-align:left;
      }
      #save {
         width:500px;
         display:inline-block;
         z-index:3;
         color:White;
         position: absolute;
           top: 50%;
           left: 30%;
           transform: translate(-50%,-50%);
        }
        #section3 {
         display:inline-block;
         position:absolute;
         top:1900px;
         left:0px;
         width:100%;
         height:500px;
         z-index:1;
      }
      #video2 {
         width:300px;
         display:inline-block;
         z-index:2;
         color:White;
         position: absolute;
           top: 35%;
           left: 70%;
           transform: translate(-50%,-50%);
      }

      #section4 {
         display:inline-block;
         position:absolute;
         top:2400px;
         left:0px;
         width:100%;
         height:500px;
         z-index:1;
      }
      #section5 {
         display:inline-block;
         position:absolute;
         top:2900px;
         left:0px;
         width:100%;
         height:900px;
         z-index:1;
      }
      #section5Text {
         display:inline-block;
         z-index:3;
         color:White;
         position: absolute;
         top:50px;
         left:45%;
           transform: translate(-50%,-50%);
      }

      #detailsDiv {
         margin-top: 50px;
         margin-bottom: 100px;
         position: absolute;
         top:300px;
         left:8%;
         font-size:25px;
      }
      #summary {
         margin-top: 5px;
         background-color:#2E2E2E;
         width:800px;
         padding:20px 40px;
      }
      #p {
         margin-top: 2px;
         margin-bottom: 5px;
         background-color:#2E2E2E;
   
         padding:20px 40px;
      }
      
      #last {
         position: absolute;
         top:870px;
      }
      #section5Text1 {
         
         font-size:20px;
         width:1000px;
         margin-top:20px;
         text-align:center;
      }
      #email2 {
           width:500px;
           height:70px;
           margin-left:150px;
           margin-top:20px;
           background-color:white;
           vertical-align:middle;
           font-size: 15px;
           padding-left:10px;
      }
      #emailBtn2 {
         width:200px;
         height:77px;
         background-color:red;
         font-size:20px;
         color:White;
         margin-top:20px;
         margin-left: -8px;
         border-radius:2px;
         vertical-align:middle
      }

      #footer {
         display:inline-block;
         position:absolute;
         top:3900px;
         left:0px;
         width:100%;
         height:630px;
         z-index:1;
      }
      #footerText {
         display:inline-block;
         z-index:3;
         position: absolute;
         top:330px;
         left:50%;
           transform: translate(-50%,-50%);
         color:#848484;
      }
      table {
           border-spacing: 0px;
           border-collapse: separate;
           font-size:15px;
      }
      table td {
            width: 300px;
            height:30px;
      }
      #language2 {
         display:inline-block;
         position:absolute;
         z-index:2;
         background-color:black;
         font-size:20px;
         color:White;
         padding:10px 15px;
         border-radius:1px;
      }
      #footerP {
         font-size:12px;

      }
	
   </style>

</head>
<body>
   <header id="header">
      <div id="logo">
         <img src="https://i.ibb.co/r5krrdz/logo.png"
          width="180px" height="50px" alt="" />
      </div>
      <div id="back1">
          
      </div>
      <select id="language">
         <option>한국어</option>
         <option>English</option>
      </select>
      <c:if test="${empty authInfo}">
     		 <button onclick="location='<c:url value="/clientLogin.do" />'" id="loginBtn">로그인</button>
		</c:if>
		<c:if test="${!empty authInfo }">
			 <button onclick="location='<c:url value="/logout.do" />'" id="loginBtn">로그아웃</button>
		</c:if>
      <div id="headerText">
            <div id="headerText1">
               영화, TV 프로그램을 무제한으로.
            </div>
            <div id="headerText2">
               다양한 디바이스에서 시청하세요. 언제든 해지하실 수 있습니다.
            </div>
            <div id="headerText3">
               시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일 주소를 입력하세요.
            </div>
      <form:form method="post" commandName="clientVO">
	      <input id="email" type="email" name="email" placeholder="이메일 주소">
	      <button type="submit" id="emailBtn">시작하기
      <i class="fas fa-chevron-right btn-icon"></i>
      </button>
      </form:form>
      </div>

   </header>
   <section>
      <div id="section1">
         <div id="box1"></div>
         <div id="section1Text">
            <div id="section1Text1">
               TV로 즐기세요.
            </div>
            <div id="section1Text2">
               스마트 TV, PlayStation, Xbox, Chromecast, Apple TV, 블루레이 플레이어 등 다양한 디바이스에서 시청하세요.
            </div>
         </div>
         <div>
               <img id="tv1" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/tv.png">
         </div>
         <video id="video1" src="media/video1.mp4" autoplay="autoplay" muted="muted" loop=1></video>
      </div>
   </section>

   <section id="section2">
      <div id="box1"></div>
      <div>
         <img id="save" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/mobile-0819.jpg">
      </div>
      <div id="section2Text">
         <div id="section2Text1">
            즐겨 보는 콘텐츠를 저장해 오프라인으로 시청하세요.
         </div>
         <div id="section2Text2">
            간편하게 저장하고 빈틈없이 즐겨보세요.
         </div>
      </div>
   </section>

   <section>
      <div id="section3">
         <div id="box1"></div>
         <div id="section1Text">
            <div id="section1Text1">
               다양한 디바이스에서 시청하세요.
            </div>
            <div id="section1Text2">
               각종 영화와 TV 프로그램을 스마트폰, 태블릿, 노트북, TV에서 무제한으로 스트리밍하세요. 추가 요금이 전혀 없습니다.
            </div>
         </div>
         <div>
               <img id="tv1" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/device-pile.png">
         </div>
         <video id="video2" src="media/video2.mp4" autoplay="autoplay" muted="muted" loop=1></video>
      </div>
   </section>

   <section id="section4">
      <div id="box1"></div>
      <div>
         <img id="save" src="https://occ-0-3076-993.1.nflxso.net/dnm/api/v6/19OhWN2dO19C9txTON9tvTFtefw/AAAABTyynLTvOBU46RmBnCIPyjAryrXCZKImpoXdp7Mz54jVGKnBQ1X84bzR-3vtD-RA4uu2b1FjrDgfxE6KElG14WAXW19X.png?r=acf">
      </div>
      <div id="section2Text">
         <div id="section2Text1">
            어린이 전용 프로필을 만들어 보세요.
         </div>
         <div id="section2Text2">
            자기만의 공간에서 좋아하는 캐릭터와 즐기는 신나는 모험. 자녀에게 이 특별한 경험을 선물하세요. 가자플릭스 회원이라면 무료입니다.
         </div>
      </div>
   </section>

<script>
   var section5QuestionList = [
      "가자플릭스란 무엇인가요?", 
      "가자플릭스 요금은 얼마인가요?", 
      "어디서 시청할 수 있나요?", 
      "멤버십을 해지하려면 어떻게 하나요?", 
      "가자플릭스에서 어떤 콘텐츠를 시청할 수 있나요?", 
      "아이들이 가자플릭스를 봐도 좋을까요?"]
   var section5AnswerList = [
      "가자플릭스는 각종 수상 경력에 빛나는 TV 프로그램, 영화, 애니메이션, 다큐멘터리 등 다양한 콘텐츠를 인터넷 연결이 가능한 수천 종의 디바이스에서 시청할 수 있는 스트리밍 서비스입니다. <br><br>저렴한 월 요금으로 일체의 광고 없이 원하는 시간에 원하는 만큼 즐길 수 있습니다. 무궁무진한 콘텐츠가 준비되어 있으며 매주 새로운 TV 프로그램과 영화가 제공됩니다.", 
      "스마트폰, 태블릿, 스마트 TV, 노트북, 스트리밍 디바이스 등 다양한 디바이스에서 월정액 요금 하나로 가자플릭스를 시청하세요. 멤버십 요금은 월 9,500원부터 14,500원까지 다양합니다. 추가 비용이나 약정이 없습니다.", 
      "다양한 디바이스에서 언제 어디서나 시청할 수 있습니다. 가자플릭스 계정으로 로그인하면 PC에서 kajaflix.com을 통해 바로 시청할 수 있으며, 인터넷이 연결되어 있고 가자플릭스 앱을 지원하는 디바이스(스마트 TV, 스마트폰, 태블릿, 스트리밍 미디어 플레이어, 게임 콘솔 등)에서도 언제든지 시청할 수 있습니다. <br><br>iOS, Android, Windows 10용 앱에서는 좋아하는 프로그램을 저장할 수도 있습니다. 저장 기능을 이용해 이동 중이나 인터넷에 연결할 수 없는 곳에서도 시청하세요. 가자플릭스는 어디서든 함께니까요.", 
      "가자플릭스는 부담 없이 간편합니다. 성가신 계약도, 약정도 없으니까요. 멤버십 해지도 온라인에서 클릭 두 번이면 완료할 수 있습니다. 해지 수수료도 없으니 원할 때 언제든 계정을 시작하거나 종료하세요.", "가자플릭스는 장편 영화, 다큐멘터리, TV 프로그램, 애니메이션, 각종 상을 수상한 가자플릭스 오리지널 등 수많은 콘텐츠를 확보하고 있습니다. 마음에 드는 콘텐츠를 원하는 시간에 원하는 만큼 시청하세요.", 
      "멤버십에 가자플릭스 키즈 환경이 포함되어 있어 자녀가 자기만의 공간에서 가족용 TV 프로그램과 영화를 즐기는 동안 부모가 이를 관리할 수 있습니다. <br><br>키즈 프로필과 더불어 PIN 번호를 이용한 자녀 보호 기능도 있어, 자녀가 시청할 수 있는 콘텐츠의 관람등급을 제한하고 자녀의 시청을 원치 않는 특정 작품을 차단할 수도 있습니다."]
</script>
   <section id="section5">
      <div id="box1"></div>
      <div id="section5Text">
         <div id="headerText1">자주 묻는 질문</div>
         <div id="detailsDiv">
         <script>
            function change(obj) {
               var detailsList = document.getElementsByTagName("details")
               var i

               for (i=0; i < detailsList.length; i++) {
                  if (detailsList[i] != obj) {
                     if(detailsList[i].open)
                        detailsList[i].open = ""
                  }
               }
               obj.open 
            }
         </script>
         <script>
            var i
            for(i=0; i<6; i++){
               document.write("<details onclick='change(this)'>")
               document.write("<summary id='summary'>")
               document.write(section5QuestionList[i])
               document.write("</summary>")
               document.write("<p id='p'>")
               document.write(section5AnswerList[i])
               document.write("</p>")
               document.write("</details>")
            }      
         </script>
         </div>
      <div id="last">
         <div id="section5Text1">
               시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일 주소를 입력하세요.
            </div>
      
      </div>
      
      </div>
   </section>
   <footer id="footer">
      <div id="box1"></div>
      <div id="footerText">
         <table border="0">
         <tr><td colspan="3">질문이 있으신가요? 문의 전화:  080-001-9587</td></tr>
         <tr>
            <td>자주 묻는 질문</td>
            <td>고객 센터</td>
            <td>계정</td>
            <td>미디어 센터</td>
         </tr>
         <tr>
            <td>투자 정보(IR)</td>
            <td>입사 정보</td>
            <td>가자플릭스 지원 디바이스</td>
            <td>이용 약관</td>
         </tr>
         <tr>
            <td><a src="">개인정보</a></td>
            <td>쿠키 설정</td>
            <td>회사 정보</td>
            <td>문의하기</td>
         </tr>
         <tr>
            <td>속도 테스트</td>
            <td>법적 고지</td>
            <td>오직 가자플릭스에서</td>
         </tr>
      </table><br><br>
      <select id="language2">
         <option>한국어</option>
         <option>English</option>
      </select><br><br>
      <div id="footerP"><br>
      <p>
         가자플릭스 대한민국
      </p><br>
      <p>
         가자플릭스서비시스코리아 유한회사 통신판매업신고번호: 제2021-서울종로-0001호 전화번호: 010-1234-5678<br>대표: Kim KG<br>이메일 주소: korea@kajaflix.com<br>
         주소: 대한민국 서울특별시 종로구 아무대로, KG건물어디 3층 305호 우편번호 00001<br>사업자등록번호: 111-22-33333<br>클라우드 호스팅: Amazon Web Services Inc.<br>공정거래위원회 웹사이트<br>
      </p>
      </div>
      </div>
   </footer>
</body>

</html>