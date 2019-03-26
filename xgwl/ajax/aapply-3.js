//显示及隐藏表单
$(".c2").click(function(){
    var isValue = $('input[name="c2"]:checked ').val();
    if(isValue == "Yes"){
        $(".c2a").show();
    }else{
        $(".c2a").hide();
    }

})
$(".c3").click(function(){
    var isValue = $('input[name="c3"]:checked ').val();
    if(isValue == "B" || isValue == "D"){
        $(".c3bd").show();
        $(".c3c").hide();
    }else{
        $(".c3bd").hide();
    }
    if(isValue == "A"){
        $(".c3c").hide();
        $(".c3bd").hide();
    }
    if(isValue == "C"){
        $(".c3bd").hide();
        $(".c3c").show();
    }else{
        $(".c3c").hide();
    }

})
$(".c8").click(function(){
    var isValue = $('input[name="c8"]:checked ').val();
    if(isValue == "Yes"){
        $(".c8a").show();
    }else{
        $(".c8a").hide();
    }

})


//验证表现（填写过程中）
// $(".b1").blur(function(){
//     check1(".b1");
// });
// $(".b2").blur(function(){
//     check1(".b2");
// });





function save(e){
 //   location.href='apply-'+e+'.Asp'
    // check1(".c1");
    // check1(".c2");


 
    if ($(".c4").hasClass("no")||$(".c5").hasClass("no")||$(".c6").hasClass("no")||$(".c7").hasClass("no")){
        console.log("over");
    }else{
    aid=$(".aid").val();
    c1=$('input[name=c1]:checked').val();
    c2=$('input[name=c2]:checked').val();
    c3=$('input[name=c3]:checked').val();
    c4=$(".c4").val();
    c5=$(".c5").val();
    c6=$(".c6").val();
    c7=$(".c7").val();
    c8=$('input[name=c8]:checked').val();
    c9=$('input[name=c9]:checked').val();
    c10=$(".c10").val();
    c11=$(".c11").val();
    c12=$(".c12").val();
    c13=$(".c13").val();
    c14=$(".c14").val();
    c15=$(".c15").val();
    c16=$(".c16").val();
    c17=$(".c17").val();
    c18=$(".c18").val();
    c19=$(".c19").val();
    c20=$(".c20").val();
    c10=$(".c10").val();
    c21=$(".c21").val();
    c22=$(".c22").val();
    c23=$(".c23").val();
    c24=$(".c24").val();
    c25=$(".c25").val();
    c26=$(".c26").val();
    c27=$(".c27").val();
    c28=$(".c28").val();
    c3bd1=$(".c3bd1").val();
    c3bd2=$(".c3bd2").val();
    c3bd3=$(".c3bd3").val();
    c3c1=$(".c3c1").val();
    c8a1=$(".c8a1").val();
    c8a2=$(".c8a2").val();

//console.log(e);
//console.log("fdsa");
      $.post("xgwl/ajax/aapply-3.asp",{
        aid:aid,
        c1:c1,
        c2:c2,
        c3:c3,
        c4:c4,
        c5:c5,
        c6:c6,
        c7:c7,
        c8:c8,
        c9:c9,
        c10:c10,
        c11:c11,
        c12:c12,
        c13:c13,
        c14:c14,
        c15:c15,
        c16:c16,
        c17:c17,
        c18:c18,
        c19:c19,
        c20:c20,
        c21:c21,
        c22:c22,
        c23:c23,
        c24:c24,
        c25:c25,
        c26:c26,
        c27:c27,
        c28:c28,
        c3bd1:c3bd1,
        c3bd2:c3bd2,
        c3bd3:c3bd3,
        c3c1:c3c1,
        c8a1:c8a1,
        c8a2:c8a2

    
    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
                location.href='aapply-'+e+'.Asp'
              }
        });
    };
    /////////////
};
