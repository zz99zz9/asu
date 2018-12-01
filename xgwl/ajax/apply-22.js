
$(".college").change(function() {

    if($(this).val() == "" ) {
        $(".s1").hide();
        $(".s2").hide();
        $(".s3").hide();
    } else if($(this).val() == "I currently am or have attended college or university" ) {
        $(".s1").show();
        $(".s2").show();
        $(".s3").hide();

    } else if($(this).val() == "I have completely withdrawn from a college or university" ) {
        $(".s1").show();
        $(".s2").show();
        $(".s3").hide();
    }
    else if($(this).val() == "I have only received non-passing grades" ) {
        $(".s1").show();
        $(".s2").hide();
        $(".s3").hide();
    }
    else if($(this).val() == "I am a high school student currently attending or have attended college" ) {
        $(".s1").show();
        $(".s2").show();
        $(".s3").hide();
    }
    else if($(this).val() == "I have never attended a college or university" ) {
        $(".s1").show();
        $(".s2").show();
        $(".s3").hide();
    }
})

$(".college2").change(function() {

    if($(this).val() == "" ) {
        $(".s3").show();

    } else if($(this).val() == "I have attended another college or university" ) {
        $(".s3").hide();

    } else if($(this).val() == "I have completely withdrawn from another college or university" ) {
        $(".s3").show();

    }
    else if($(this).val() == "I received only non-passing grades at another college or university" ) {
        $(".s3").show();
    }
    else if($(this).val() == "I am a high school student who has attended another college" ) {
        $(".s3").show();
    }
    else if($(this).val() == "I have not attended another college or university" ) {
        $(".s3").hide();
    }
})
//dri js
$(".address2").blur(function(){
    check1(".address2");
});
$(".email").blur(function(){
    check3(".email");
});

$(".tel").blur(function(){
    check2(".tel");
});

$(".code").blur(function(){
    check1(".code");
});

function save(e){
    location.href='apply-'+e+'.Asp'
    check1(".address2");
    check3(".email");
    check2(".tel");
    check1(".code");
    if ($(".address2").hasClass("no")||$(".email").hasClass("no")||$(".tel").hasClass("no")||$(".code").hasClass("no")){
        console.log("over");
    }else{

    address1=$(".address1").val();
    address2=$(".address2").val();
    email=$(".email").val();
    tel=$(".tel").val();
    code=$(".code").val();
//console.log(e);
      $.post("xgwl/ajax/apply-2.asp",{

        address1:address1,
        address2:address2,
        email:email,
        tel:tel,
        code:code
    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
                location.href='apply-'+e+'.Asp'
              }
        });
    };
}
    /////////////