$(".stu").click(function(){
    var isValue = $('input[name="stu"]:checked ').val();
    if(isValue == "Student"){
        $(".s1").show();
        
        $(".s2").hide();
        $(".s3").hide();
        $(".sx").show();
    }
    if(isValue == "StudentAgent"){
        $(".s1").hide();
        $(".s5").show();
        $(".s2").show();
        $(".s3").hide();
        $(".sx").show();
    }
    if(isValue == "Agent"){
        $(".s1").hide();
        $(".s5").show();
        $(".s2").show();
        $(".s3").show();
        $(".sx").show();
    }
})
$(".citizenship").click(function(){
    var isValue = $('input[name="citizenship"]:checked ').val();
    if(isValue == "Yes"){
        $(".s4").show();
    }
    if(isValue == "No"){
        $(".s4").hide();
    }
})
$(".Admission").click(function(){
    var isValue = $('input[name="Admission"]:checked ').val();
  //  console.log(isValue);
    if(isValue == "Undergraduate pathway: ASU-USA Pathways" || isValue == "Undergraduate academic pathway: ASU-USA Pathways"){
        $(".s5").show();
        $(".s6").hide();
        $(".s7").hide();
        //21
    }
    if(isValue == "Bachelor's degree"){
        $(".s5").hide();
        $(".s7").hide();
        $(".s6").show();
        //22
        
    }
    if(isValue == "Complete a bachelor's degree: transfer admission" || isValue=="Transfer: complete a bachelor's degree"){
        $(".s5").hide();
        $(".s7").hide();
        $(".s6").show();
        //23
        
    }
    if(isValue == "Master's degree"){
        $(".s5").hide();
        $(".s6").hide();
        $(".s7").show();
        //24
    }
})
//原代码
$(".cname").blur(function(){
    check1(".cname");
});
$(".fname").blur(function(){
    check1(".fname");
});
$(".lname").blur(function(){
    check1(".lname");
});
// $(".bdate").blur(function(){
//     check1(".bdate");
// });
$(".sfz").blur(function(){
    check1(".sfz");
});
$(".recommend").blur(function(){
    check1(".recommend");
});

// $(".sfzpic1").blur(function(){
//     check1(".sfzpic1");
// });
// $(".sfzpic2").blur(function(){
//     check1(".sfzpic2");
// });
$(".hz").blur(function(){
    check1(".hz");
});
// $(".hzpic").blur(function(){
//     check1(".hzpic");
// });


function save(e){
    location.href='apply-'+e+'.Asp'
    check1(".cname");
    check1(".fname");
    check1(".lname");
    check1(".sfz");
    check1(".recommend")

    if ($(".recommend").hasClass("no")||$(".cname").hasClass("no")||$(".fname").hasClass("no")||$(".lname").hasClass("no")||$(".sfz").hasClass("no")){
        console.log("over");
    }else{
    aid=$(".aid").val();
    cname=$(".cname").val();
    fname=$(".fname").val();
    lname=$(".lname").val();
    bdate=$(".bdate").val();
    sfz=$(".sfz").val();
    sfzpic1=$(".sfzpic1").val();
    sfzpic2=$(".sfzpic2").val();
    hz=$(".hz").val();
    hzpic=$(".hzpic").val();
    usa=$(".usa").val();
    cc=$(".cc").val();
    sex=$(".sex").val();
    recommend=$(".recommend").val();
//console.log(e);
      $.post("xgwl/ajax/apply-1.asp",{
        cname:cname,
        fname:fname,
        lname:lname,
        bdate:bdate,
        recommend:recommend,
        sfz:sfz,
        sfzpic1:sfzpic1,
        sfzpic2:sfzpic2,
        hz:hz,
        hzpic:hzpic,
        usa:usa,
        cc:cc,
        sex:sex,
        aid:aid

    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
                location.href='apply-'+e+'.Asp'
              }
        });
    };
    /////////////
};
