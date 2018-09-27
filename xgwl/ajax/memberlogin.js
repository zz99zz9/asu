$(".uname").blur(function(){
    check1(".uname");
});
$(".upwd").blur(function(){
    check1(".upwd");
});
function mlogin(v){
    check1(".uname");
    check1(".upwd");
    if ($(".uname").hasClass("no")||$(".upwd").hasClass("no")){
        console.log("over");
    }else{
       
    uname=$(".uname").val();
    upwd=$(".upwd").val();


    $.post("xgwl/ajax/memberlogin.asp",{
        upwd:upwd,
        uname:uname

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