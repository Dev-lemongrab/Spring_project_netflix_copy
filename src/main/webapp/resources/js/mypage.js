var select_i = "";
$(document).ready(function(){

    $('.user_content1').click(function(){
        if($('.click_div1').css("display")=="none"){
            $('#down_btn').attr("src","../resources/img/up_icon.png");
            $('.click_div1').css("display","block");
        }else{
            $('#down_btn').attr("src","../resources/img/down2_icon.png");
            $('.click_div1').css("display","none");
        }
    });
    
    $('.user_content2').click(function(){
        if($('.click_div2').css("display")=="none"){
            $('#down_btn').attr("src","../resources/img/up_icon.png");
            $('.click_div2').css("display","block");
        }else{
            $('#down_btn').attr("src","../resources/img/down2_icon.png");
            $('.click_div2').css("display","none");
        }
    });
    
    $('.user_content3').click(function(){
        if($('.click_div3').css("display")=="none"){
            $('#down_btn').attr("src","../resources/img/up_icon.png");
            $('.click_div3').css("display","block");
        }else{
            $('#down_btn').attr("src","../resources/img/down2_icon.png");
            $('.click_div3').css("display","none");
        }
    });
    
    $('.user_content4').click(function(){
        if($('.click_div4').css("display")=="none"){
            $('#down_btn').attr("src","../resources/img/up_icon.png");
            $('.click_div4').css("display","block");
        }else{
            $('#down_btn').attr("src","../resources/img/down2_icon.png");
            $('.click_div4').css("display","none");
        }
    });
    
    



    /*초기 멤버십 선택되는 곳 */
   		
  	
 
	    $('.item3').addClass('list_select');
	    $('.item3').find('.selection_header').addClass('list_select_item');
	    $('.item3').append('<img src="../resources/img/check.png" class="check_img">');
	
    /*---------------------------------------------------------------- */

    
    
    $('.list_item').on('click', function(){ 
        $(this).addClass('list_select');
        $(this).find('.selection_header').addClass('list_select_item');
        $(this).append('<img src="../resources/img/check.png" class="check_img">');
       	select_i = $(this).find(".selection_header").attr("data-set");
        alert(select_i);
        
        $(this).siblings().removeClass('list_select');
        $(this).siblings().find('.selection_header').removeClass('list_select_item');
        $(this).siblings().find('.check_img').remove();
    });
    
   
    

	
    
    
    
    
    //====================================================
    
    
    /* 비밀번호 변경 js */
    var currenPassword=$('#currenPassword');
    var newPassword=$('#newPassword');
    var confirnewPassword=$('#confirnewPassword');
    
    
    
    
    //새 비밀번호 입력
    newPassword.on('focus',function(){ //포커스 시
        $('#newPassword').css("border-color","#4e86ed"); //텍스트 박스 파란색 
    });
    newPassword.on('focusout', function(){ //포커스 떠날시
        var pw1=$('#newPassword').val(); //입력된 새로운 비밀번호 데이터를 가져옴
        
        if(confirnewPassword.val()==''){
            $('#newPassword').css("border-color","#999"); //데이터가 없이 포커스를 떠나면 색변화 x
    
        }if(pw1.length < 6 || pw1.length > 60){ //6 ~ 60 자리 데이터가 아니라면
            $('#newPassword').css("border-color","#ee3110"); //텍스트 박스 빨강색
        }
        else{		//입력데이터가 6~60자리가 아니라면
            $('#newPassword').css("border-color","#5fa53f"); //텍스트 박스 초록색
        } 
    });
    
    
    //새 비밀번호 재 입력
    confirnewPassword.on('focus',function(){ //포커스 시
        $('#confirnewPassword').css("border-color","#4e86ed");	 //텍스트 박스 파란색 
    });
    confirnewPassword.on('focusout', function(){   //포커스 떠날시
        var pw1=$('#newPassword').val(); //새비밀번호 데이터
        var pw2=$('#confirnewPassword').val(); //새 비밀번호 재입력 데이터

        if(confirnewPassword.val()==''){ //데이터가 없이 포커스를 떠나면 색변화 x
            $('#confirnewPassword').css("border-color","#999");
        }else if(pw1==pw2){ //비밀번호 일치 여부 확인
            $('#confirnewPassword').css("border-color","#5fa53f");
            alert("The same password.");
        }
        else if(pw1!=pw2){
            $('#confirnewPassword').css("border-color","#ee3110");
            alert("The password doesn't match.");
        }
        
    });
    
    

    
    });
    


    
function acyncChangePassword(url) {
	var $form = $('#changePwForm').serialize(); 
	
	$.ajax( {url : url, type : "POST", data : $form, dataType : "json",
			 success : function(data) {
			 				if (data == 1) {
			 					alert("complete");
			 					location.href="mypage.do";
			 				} else {
			 					alert("check your password");
			 					location.href="changePw.do";
			 				}
			 			
						}
				}	
			);

};

function back() {
	alert("go");
};


function acyncChangePlan(url) {
 
	confirm("멤버쉽을 바꾸면 프로필이 모두 초기화 됩니다. 계속 진행하시겠습니까?");
	var item = {"select_item" : select_i};
	
	$.ajax( {url : url, type : "POST", data : item, dataType : "json",
			 success : function(data) {
			 				if (data == 1) {
			 					alert("완료!");
			 					location.href="../main.cdo";
			 				} else {
			 					alert("error");
			 					location.href="history.back()";
			 				}
			 			
						}
				}	
			);

};    



