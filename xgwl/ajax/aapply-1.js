//显示及隐藏表单
$(".a7").click(function(){
    var isValue = $('input[name="a7"]:checked ').val();
    if(isValue == "Yes"){
        $(".a7a").show();
    }
    if(isValue == "No"){
        $(".a7a").hide();
    }
})

//验证表现（填写过程中）
$(".a1").blur(function(){
    check1(".a1");
});
$(".a2").blur(function(){
    check1(".a2");
});
$(".a3").blur(function(){
    check1(".a3");
});

// $(".a4").blur(function(){
//     check1(".a4");
// });
$(".a5").blur(function(){
    check1(".a5");
});
$(".a6").blur(function(){
    check1(".a6");
});
$(".a7").blur(function(){
    check1(".a7");
});



function save(e){
 //   location.href='apply-'+e+'.Asp'
    check1(".a1");
    check1(".a2");
    check1(".a3");
 //  check1(".a4");
    check1(".a5");
    check1(".a6");
    check1(".a7");
 
    if ($(".a1").hasClass("no")||$(".a2").hasClass("no")||$(".a3").hasClass("no")||$(".a4").hasClass("no")||$(".a5").hasClass("no")){
        console.log("over");
    }else{
    aid=$(".aid").val();
    a1=$(".a1").val();
    a2=$(".a2").val();
    a3=$('input[name=a3]:checked').val();
    a4=$(".a4").val();
    a5=$(".a5").val();
    a6=$(".a6").val();
    a7=$('input[name=a7]:checked').val();
    a7a1=$(".a7a1").val();

//console.log(e);
console.log(a3);
      $.post("xgwl/ajax/aapply-1.asp",{
        aid:aid,
        a1:a1,
        a2:a2,
        a3:a3,
        a4:a4,
        a5:a5,
        a6:a6,
        a7:a7,
        a7a1:a7a1
    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
       //     console.log(data);
                location.href='aapply-'+e+'.Asp'
              }
        });
    };
    /////////////
};
