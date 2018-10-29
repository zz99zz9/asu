$(".umail").blur(function(){
    check3(".umail");
});
$(".upwd").blur(function(){
    check1(".upwd");
});
function mlogin(v){
    check3(".umail");
    check1(".upwd");
    if ($(".umail").hasClass("no")||$(".upwd").hasClass("no")){
        console.log("over");
    }else{
       
    umail=$(".umail").val();
    upwd=$(".upwd").val();
4

    $.post("xgwl/ajax/memberlogin.asp",{
        upwd:upwd,
        umail:umail

    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
            location.href='apply-1.Asp'
              }else if(data=="err" && status=="success"){
                location.href='memberlogin.Asp?err=注册邮箱或密码错误！'
              }
        });
    }
}