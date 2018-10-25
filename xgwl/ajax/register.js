$(".umail").blur(function(){
    check3(".umail");
    $.post("/xgwl/ajax/reg.asp",{umail:$(".umail").val()},
            function(data,status){
                if(status=="success"){
				   if(data=='has'){
					   	$(".umail").addClass("no");
						$(".umail").removeClass("ok");
						$(".umail").next(".errinfo").html("× 此邮箱已经注册");//请检查手机号码是否正确
                   }
                }
            })
});
$(".upwd").blur(function(){
    check1(".upwd");
});
$(".upwd2").blur(function(){
    check4(".upwd2",".upwd");
});
$(".cname").blur(function(){
    check1(".cname");
});
$(".utel").blur(function(){
    check2(".utel");
    $.post("/xgwl/ajax/reg.asp",{utel:$(".utel").val()},
    function(data,status){
        if(status=="success"){
           if(data=='has'){
                   $(".utel").addClass("no");
                $(".utel").removeClass("ok");
                $(".utel").next(".errinfo").html("× 此手机号码已经注册");//请检查手机号码是否正确
           }
        }
    })
});
function register(url){
    check3(".umail");
    check1(".upwd");
    check1(".cname");
    check2(".utel");
    check4(".upwd2",".upwd");
    if ($(".umail").hasClass("no")||$(".upwd").hasClass("no")||$(".cname").hasClass("no")||$(".utel").hasClass("no")||$(".upwd2").hasClass("no")){
        console.log("over");
    }else{
       
    umail=$(".umail").val();
    upwd=$(".upwd").val();
    upwd2=$(".upwd2").val();
    bdate=$(".bdate").val();
    cname=$(".cname").val();
    recommend=$(".recommend").val();
    utel=$(".utel").val();
    action=$(".action").val();
    sex=$(".sex").val();

    $.post("xgwl/ajax/register.asp",{
        cname:cname,
        umail:umail,
        bdate:bdate,
        upwd:upwd,
        utel:utel,
        recommend:recommend,
        sex:sex,
        action:action

    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
            location.href='apply.Asp'
              }
        });

    }
}
