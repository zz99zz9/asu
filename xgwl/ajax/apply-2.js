
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