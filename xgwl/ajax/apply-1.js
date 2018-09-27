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
    check1(".cname");
    check1(".fname");
    check1(".lname");
    check2(".sfz");

    if ($(".cname").hasClass("no")||$(".fname").hasClass("no")||$(".lname").hasClass("no")||$(".sfz").hasClass("no")){
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
