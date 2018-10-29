
$(".upwd").blur(function(){
    check1(".upwd");
});
$(".upwd2").blur(function(){
    check4(".upwd2",".upwd");
});

$(".ranNum").blur(function(){
    check1(".ranNum");
});
function resetpassword(){

    check1(".upwd");

    check1(".ranNum");
    check4(".upwd2",".upwd");
    if ($(".ranNum").hasClass("no")||$(".ranNum").hasClass("no")||$(".upwd2").hasClass("no")){
        console.log("over");
    }else{

    upwd=$(".upwd").val();
    ranNum=$(".ranNum").val();
    action=$(".action").val();

    $.post("xgwl/ajax/memberpassword.asp",{
        upwd:upwd,
        ranNum:ranNum,
        action:action
    },
        function(data,status){
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
           console.log("fdd");
            console.log(data);
            location.href='memberlogin.Asp?err=密码修改成功，请重新登录'
              }
        });

    }
}
