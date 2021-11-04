var scaling = 1.7;
var scaling2 = 1.25;
var scaling3 = 2;
var delay = 1500;
// count
var currentSliderCount = 0;
var videoCount = $(".slider-container").children().length;
var showCount = 4;
var sliderCount = videoCount / showCount;
var controlsWidth = 40;
var scollWidth = 0;

var content_title="";
var content_rating="";
var summary="";
var genre_name="";
var actor_name="";
var director_name="";
var imagequality="";
var characteristic="";
var english_title="";
var mp4="";
var poster="";
var logo="";




//세션값 담아주기


var email="";
var row_num="";

//---------------------------------------------------


$(document).ready(function(){
    // $('.slider-container
   // .slide:nth-last-child(-n+4)').prependTo('.slider-container');
    init();
    
});
$( window ).resize(function() {
    init();
});
function init(){
    // elements
    var win = $(window);
    var sliderFrame = $(".slider-frame");
    var sliderContainer = $(".slider-container");
    var slide = $(".slide");
    
    // counts
    var scollWidth = 0;
 
    
    // sizes
    var windowWidth = win.width();
    var frameWidth = win.width() - 80;
     if(windowWidth >= 0 && windowWidth <= 414){
       showCount = 2;
   }else if(windowWidth >= 414 &&  windowWidth <= 768){
       showCount = 3;
   }else{
       showCount = 4;
   }
    var videoWidth = ((windowWidth - controlsWidth * 2) / showCount );
    var videoHeight = Math.round(videoWidth / (16/9));
    
    var videoWidthDiff = (videoWidth * scaling) - videoWidth;
    var videoHeightDiff = (videoHeight * scaling) - videoHeight;
    
  
    
    // set sizes
    sliderFrame.width(windowWidth);
    sliderFrame.height(videoHeight * scaling3);
    
    
    // sliderFrame.css("top", (videoHeightDiff / 2));
    
    sliderContainer.height(videoHeight * scaling);
    sliderContainer.width((videoWidth * videoCount) + videoWidthDiff);
    sliderContainer.css("top", (videoHeightDiff / 2));
    sliderContainer.css("margin-left", (controlsWidth));
    
    slide.height(videoHeight);
    slide.width(videoWidth);
    
    
    
    
    
    // hover effect
    $(".slide").hover(function() {
    	email=$(this).attr("data-email");
    	row_num=$(this).attr("data-row_num");
    	content_id=$(this).attr("data-content_id");
    	content_title=$(this).attr("data-content_title");
    	content_rating=$(this).attr("data-content_rating");
        summary=$(this).attr("data-summary");
        genre_name=$(this).attr("data-genre_name");
        actor_name=$(this).attr("data-actor_name");
        director_name=$(this).attr("data-director_name");
        imagequality=$(this).attr("data-imagequality");
        characteristic=$(this).attr("data-characteristic");
        english_title=$(this).attr("data-english_title");
        
        mp4="http://kghosting.dothome.co.kr/video/"+english_title+".mp4";
        poster="http://kghosting.dothome.co.kr/poster/"+english_title+"_big.png";
        logo="http://kghosting.dothome.co.kr/logo/"+english_title+"_logo.png";
        
        $('.con_age').text(content_rating);
        $('.con_quality').text(imagequality);
        $('#text_actor_name').text(actor_name);
        $('#text_genre_name').text(genre_name);
        $('.layer_content_text').text(summary);
        $('#text_characteristic').text(characteristic);
        $("video.vid_hidden").get(0).src= "http://kghosting.dothome.co.kr/video/"+english_title+".mp4";
        $('#vid_hidden').attr("poster",poster);
        $('#logo_link').attr("src",logo);
        $('#play_btn').attr("href",mp4);
        
        $(this).css({
           width: videoWidth * scaling2,
           height:videoHeight * scaling,
           top : -(videoHeightDiff / 2)
       });
       $('.contents_btn, .context_info', this).delay(1000).fadeIn();   //버튼 show
       $("video.over_vid", this).get(0).src= "http://kghosting.dothome.co.kr/video/"+english_title+".mp4";
          $("video.over_vid", this).get(0).currentTime = 0;
       $("video.over_vid", this).get(0).play();
    },
    function () {
        //이런식
        $(this).css({
           width: videoWidth,
           height:videoHeight,
           top : 0
        });
        $('.contents_btn, .context_info').fadeOut();
        $(this).parent().css("margin-left", controlsWidth);
        console.log($("video.over_vid", this));
        $("video.over_vid", this).get(0).src="";

         
    }
    )
    
    //재생 버튼 클릭
    $('.play_view').click(function(){
    	location.href="http://kghosting.dothome.co.kr/video/"+english_title+".mp4";
    	//오늘 날짜
    	var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1
        var date = now.getDate();
        month = month >=10 ? month : "0" + month;
        date  = date  >= 10 ? date : "0" + date;
        var view_date = year+"-"+month+"-"+date;
        
        var form={
    		   "content_id":content_id,
    		   "content_title":content_title,
    		   "email":email,  //이메일 가져오기 (var email에 세션 정보 담아주기) //맨위에 선언
    		   "row_num":row_num,  //프로필 가져오기 (var row_num에 세션 정보 담아주기) //맨위에 선언
    		   "view_date":view_date,  //찜한 날짜 가져오기
    		  
       };
       
       $.ajax({
			url : "viewed.cdo", //컨트롤러 주소 작성
			type : "POST",
			data : form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					
				
				} else {
					
				}
			},
			error : function() {
				alert("error");
			}
		});
    });
    
    
    //찜한 콘텐츠 부분
    $('.pick_view').click(function(){
    	//오늘 날짜
    	var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1
        var date = now.getDate();
        month = month >=10 ? month : "0" + month;
        date  = date  >= 10 ? date : "0" + date;
        var wish_date = year+"-"+month+"-"+date;
        
        alert("찜한 날짜"+wish_date);
        
        alert(content_id+""+content_title); //안에 변수 값
        
        var wish="true";


       var form={
    		   "content_id":content_id,
    		   "content_title":content_title,
    		   "email":email,  //이메일 가져오기 (var email에 세션 정보 담아주기) //맨위에 선언
    		   "row_num":row_num,  //프로필 가져오기 (var row_num에 세션 정보 담아주기) //맨위에 선언
    		   "wish_date":wish_date,  //찜한 날짜 가져오기
    		   "wish":wish, //위시값 
       };
       
		$.ajax({
			url : "wish.cdo", //컨트롤러 주소 작성
			type : "POST",
			data : form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("찜 완료");
				
				} else {
					alert("찜 실패");
				}
			},
			error : function() {
				alert("error");
			}
		});
	
    });
    
    //좋아요
    $('.good_view').click(function(){
    	//오늘 날짜
    	var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1
        var date = now.getDate();
        month = month >=10 ? month : "0" + month;
        date  = date  >= 10 ? date : "0" + date;
        var like_date = year+"-"+month+"-"+date;
        
        alert("좋아요한 날짜"+like_date);
        
        alert(content_id+""+content_title); //안에 변수 값
        
        var like="true";
        
        var dislike="false"; //구분 지으실꺼면 좋아요에선 like랑 like-date만 보내면 좋을거 같네요!


       var form={
    		   "content_id":content_id,
    		   "content_title":content_title,
    		   "email":email,  //이메일 가져오기 (var email에 세션 정보 담아주기) //맨위에 선언
    		   "row_num":row_num,  //프로필 가져오기 (var row_num에 세션 정보 담아주기) //맨위에 선언
    		   "like_date":like_date,  //좋아한 날 가져오기
    		   "like":like, //좋아요 값
    		   "dislike":dislike //싫어요 값 (생략가능)
       };
       
		$.ajax({
			url : "like.cdo", //컨트롤러 주소 작성
			type : "POST",
			data : form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("좋아요 완료");
					
				} else {
					alert("좋아요 실패");
				}
			},
			error : function() {
				alert("error");
			}
		});
	
    });
    
    
    //싫어요
    $('.hate_view').click(function(){
    	//오늘 날짜
    	var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1
        var date = now.getDate();
        month = month >=10 ? month : "0" + month;
        date  = date  >= 10 ? date : "0" + date;
        var dislike_date  = year+"-"+month+"-"+date;
        
        alert("싫어요한 날짜"+dislike_date );
        
        alert(content_id+""+content_title); //안에 변수 값
        
        var like="false";
        
        var dislike="true"; //구분 지으실꺼면 좋아요에선 like랑 like-date만 보내면 좋을거 같네요!


       var form={
    		   "content_id":content_id,
    		   "content_title":content_title,
    		   "email":email,  //이메일 가져오기 (var email에 세션 정보 담아주기) //맨위에 선언
    		   "row_num":row_num,  //프로필 가져오기 (var row_num에 세션 정보 담아주기) //맨위에 선언
    		   "dislike_date":dislike_date,  //싫어한 날짜 가져오기
    		   "like":like, //좋아요 값 (생략가능)
    		   "dislike":dislike //싫어요 값 
       };
       
		$.ajax({
			url : "dislike.cdo", //컨트롤러 주소 작성
			type : "POST",
			data : form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("싫어요 완료");
				
				} else {
					alert("싫어요 실패");
				}
			},
			error : function() {
				alert("error");
			}
		});
	
    });
    

    //상세정보 
    $('.popular_movie_infobtn').click(function(){
       $('.popup_layer').css({
          display:"block",    
            position:"fixed",
            top:"0px"
       });
       $(main).css({
            overflow:"hidden"
        });
    });
    $('.more_view').click(function(){
       $('.popup_layer').css({
          display:"block",    
            position:"fixed",
            // top : $(window).scrollTop(),
            // 탑 수정해야함
            top:"0px"
       });
    });
    
    //상세창 닫기
    $('.close_btn').click(function(){
        $('.popup_layer').css({
            display:"none"
        });
    });

    // controls
    controls(frameWidth, scollWidth);
}
function controls(frameWidth, scollWidth){
    var prev = $(".prev");
    var next = $(".next");
    
    next.on("click", function(){
        console.log(currentSliderCount);
        console.log(sliderCount);
        scollWidth = scollWidth + frameWidth;
        $(this).siblings('.slider-container').animate({
            left: - scollWidth
        }, 300, function(){ 
            if(currentSliderCount >= sliderCount-1){
                $(".slider-container").css("left", 0);
                currentSliderCount = 0;
                scollWidth = 0;
            }else{
                currentSliderCount++;
            }
        });        
    });
    prev.on("click", function(){
        scollWidth = scollWidth - frameWidth;
        $(this).siblings('.slider-container').animate({
            left: + scollWidth
        }, 300, function(){ 
            currentSliderCount--;
        });
        // $(".slider-container").css("left", scollWidth);
    });
      
};