$(".uname").blur(function(){
    check1(".uname");
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
});
function register(url){
    check1(".uname");
    check1(".upwd");
    check1(".cname");
    check2(".utel");
    check4(".upwd2",".upwd");
    if ($(".uname").hasClass("no")||$(".upwd").hasClass("no")||$(".cname").hasClass("no")||$(".utel").hasClass("no")||$(".upwd2").hasClass("no")){
        console.log("over");
    }else{
       
    uname=$(".uname").val();
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
        uname:uname,
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
