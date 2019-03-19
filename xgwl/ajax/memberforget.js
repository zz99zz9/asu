$(".umail").blur(function(){
    check3(".umail");
});

function forget(){
    check3(".umail");
    if ($(".umail").hasClass("no")){
        console.log("over");
    }else{
       
    umail=$(".umail").val();
    ranNum=$(".ranNum").val();

//console.log(ranNum);

    $.post("xgwl/ajax/memberforget.asp",{
        ranNum:ranNum,
        umail:umail
    },
        function(data,status){
            console.log(data);
        //    data='{"lvovl":"dd"}'
            data=JSON.parse(data);
            console.log(data);
          if(data.ok==1 && status=="success"){
           // cookie.set(uid, 1);//请查收邮件修改密码，如果没有收到邮件，请重试~
            console.log("请查收邮件");
            //$(".errinfo").html("邮件已发送成功，请查看邮箱！")
            location.href='memberforgetok.Asp'
              }else if(data.ok==0 && status=="success"){
              //  location.href='memberforgetend.Asp?st=0!'//此邮箱地址未注册
              $(".errinfo").html("此邮箱地址未注册")
               //console.log("此邮箱地址未注册")
              }
        });
    }
}