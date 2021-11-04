

$('.profile span').click(function(){
    if($('.user_div').css("display")=="none"){
        $('.user_div').css("display","block");
    }else{
        $('.user_div').css("display","none");
    }
});


$(".profile > span").hover(function(){
    $('.profile > span > label').css("text-decoration","underline").css("color","white");
},function(){
    $('.profile > span > label').css("text-decoration","none");
});

$(".btn1").click(function(){
    if($('.chat_div').css("display")=="block"){
        $('.chat_div').css("display","none")
    }

    if($('.call_div').css("display")=="none"){
        $('.call_div').css("display","block");
    }else{
        $('.call_div').css("display","none");
    }
});

$(".btn2").click(function(){
    if($('.call_div').css("display")=="block"){
        $('.call_div').css("display","none")
    }

    if($('.chat_div').css("display")=="none"){
        $('.chat_div').css("display","block");
    }else{
        $('.chat_div').css("display","none");
    }
});

$(".chat_text1 p").click(function(){
    $('.chat_div').css("display","none");
});

$(".call_div2 p").click(function(){
    $('.call_div').css("display","none");
});