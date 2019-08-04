$(".fname").blur(function(){
    check1(".fname");
});
$(".lname").blur(function(){
    check1(".lname");
});
$(".cname").blur(function(){
    check1(".cname");
});
$(".hz").blur(function(){
    check1(".hz");
});
$(".email").blur(function(){
    check1(".email");
});
$(".tel").blur(function(){
    check2(".tel");
});
function save(){
    check1(".fname");
    check1(".lname");
    check1(".cname");
    check1(".hz");
    check1(".email");
    check2(".tel");

    if ($(".fname").hasClass("no")||$(".lname").hasClass("no")||$(".cname").hasClass("no")||$(".tel").hasClass("no")||$(".hz").hasClass("no")||$(".email").hasClass("no")){
        console.log("over");
    }else{
       
    lname=$(".lname").val();
    fname=$(".fname").val();
    cname=$(".cname").val();
    cid=$(".cid").val();
    uid=$(".uid").val();
    hz=$(".hz").val();
    tel=$(".tel").val();
    action=$(".action").val();
    email=$(".email").val();

    $.post("xgwl/ajax/visa.asp",{
        cname:cname,
        lname:lname,
        fname:fname,
        hz:hz,
        tel:tel,
        email:email,
        cid:cid,
        uid:uid,
        action:action

    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
            location.href='/visa_from.asp?tel='+tel
              }
        });

    }
}
