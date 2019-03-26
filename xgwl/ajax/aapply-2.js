//显示及隐藏表单
$(".b2").click(function(){
    var isValue = $('input[name="b2"]:checked ').val();
    if(isValue == "D"){
        $(".b2d").show();
    }else{
        $(".b2d").hide();
    }

})
$(".b14").click(function(){
    var isValue = $('input[name="b14"]:checked ').val();
    if(isValue == "Yes"){
        $(".b14a").show();
    }else{
        $(".b14a").hide();
    }

})
$(".b21").click(function(){
    var isValue = $('input[name="b21"]:checked ').val();
    if(isValue == "Yes"){
        $(".b21a").show();
    }else{
        $(".b21a").hide();
    }

})
$(".b23").click(function(){
    var isValue = $('input[name="b23"]:checked ').val();
    if(isValue == "B"){
        $(".b23b").show();
    }else{
        $(".b23b").hide();
    }

})

$(".b24").click(function(){
    var isValue = $('input[name="b24"]:checked ').val();
    if(isValue == "SAT" || isValue == "ACT"){
        $(".b24a").show();
    }else{
        $(".b24a").hide();
    }

})
$(".b25").click(function(){
    var isValue = $('input[name="b25"]:checked ').val();
    if(isValue == "A" || isValue == "B" || isValue == "C" || isValue == "D"){
        $(".collegeinfo").show();
    }else{
        $(".collegeinfo").hide();
    }

})

//验证表现（填写过程中）
$(".b1").blur(function(){
    check1(".b1");
});
$(".b2").blur(function(){
    check1(".b2");
});





function save(e){
 //   location.href='apply-'+e+'.Asp'
    check1(".b1");
    check1(".b2");


 
    if ($(".b1").hasClass("no")||$(".b2").hasClass("no")||$(".b3").hasClass("no")||$(".b4").hasClass("no")||$(".b5").hasClass("no")){
        console.log("over");
    }else{
    aid=$(".aid").val();
    b1=$('input[name=b1]:checked').val();
    b2=$('input[name=b2]:checked').val();
    b2d1=$(".b2d1").val();
    b2d2=$(".b2d2").val();
    b2d3=$(".b2d3").val();
    b2d4=$(".b2d4").val();
    b2d5=$(".b2d5").val();
    b2d6=$(".b2d6").val();
    b2d7=$(".b2d7").val();
    b2d8=$(".b2d8").val();
    b2d9=$(".b2d9").val();
    b2d10=$(".b2d10").val();
    b3=$('input[name=b3]:checked').val();
    b4=$(".b4").val();
    b5=$(".b5").val();
    b6=$(".b6").val();
    b7=$(".b7").val();
    b8=$(".b8").val();
    b9=$(".b9").val();
    b10=$(".b10").val();
    b11=$(".b11").val();
    b12=$(".b12").val();
    b13=$(".b13").val();
    b14=$('input[name=b14]:checked').val();
    b14a1=$(".b14a1").val();
    b14a2=$(".b14a2").val();
    b14a3=$(".b14a3").val();
    b14a4=$(".b14a4").val();
    b14a5=$(".b14a5").val();
    b14a6=$(".b14a6").val();
    b15=$(".b15").val();
    b16=$(".b16").val();
    b17=$(".b17").val();
    b18=$(".b18").val();
    b19=$(".b19").val();
    b20=$(".b20").val();
    b10=$(".b10").val();
    b21=$('input[name=b21]:checked').val();
    b21a1=$(".b21a1").val();
    b21a2=$(".b21a2").val();
    b21a3=$(".b21a3").val();
    b21a4=$(".b21a4").val();
    b21a5=$(".b21a5").val();
    b21a6=$(".b21a6").val();
    b22=$('input[name=b22]:checked').val();
    b23=$('input[name=b23]:checked').val();
    b23b1=$('input[name=b23b1]:checked').val();
    b23b2=$(".b23b2").val();
    b23b3=$(".b23b3").val();
    b24=$('input[name=b24]:checked').val();
    b24a1=$(".b24a1").val();
    b25=$('input[name=b25]:checked').val();

//console.log(e);
//console.log("fdsa");
      $.post("xgwl/ajax/aapply-2.asp",{
        aid:aid,
        b1:b1,
        b2:b2,
        b2d1:b2d1,
        b2d2:b2d2,
        b2d3:b2d3,
        b2d4:b2d4,
        b2d5:b2d5,
        b2d6:b2d6,
        b2d7:b2d7,
        b2d8:b2d8,
        b2d9:b2d9,
        b2d10:b2d10,
        b3:b3,
        b4:b4,
        b5:b5,
        b6:b6,
        b7:b7,
        b8:b8,
        b9:b9,
        b10:b10,
        b11:b11,
        b12:b12,
        b13:b13,
        b14:b14,
        b14a1:b14a1,
        b14a2:b14a2,
        b14a3:b14a3,
        b14a4:b14a4,
        b14a5:b14a5,
        b14a6:b14a6,
        b15:b15,
        b16:b16,
        b17:b17,
        b18:b18,
        b19:b19,
        b20:b20,
        b21:b21,
        b21a1:b21a1,
        b21a2:b21a2,
        b21a3:b21a3,
        b21a4:b21a4,
        b21a5:b21a5,
        b21a6:b21a6,
        b22:b22,
        b23:b23,
        b23b1:b23b1,
        b23b2:b23b2,
        b23b3:b23b3,
        b24:b24,
        b25:b25,
        b24a1:b24a1
    
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
