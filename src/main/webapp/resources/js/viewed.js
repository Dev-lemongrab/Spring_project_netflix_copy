	
$(document).ready(function(){

	
$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});


    $('.row_ration > img').click(function(){
        var btn_name=$(this).attr('data-name');

        if(btn_name =='upbtn'){
            $(this).attr("src","../img/up2.png");
            $(this).siblings().attr("src","../img/down1.png");
        }else{
            $(this).attr("src","../img/down2.png");
            $(this).siblings().attr("src","../img/up1.png");
        }
    });
    
    
});