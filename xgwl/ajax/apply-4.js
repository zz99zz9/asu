$(".faname").blur(function(){
    check1(".faname");
});
$(".faaddress").blur(function(){
    check1(".faaddress");
});
$(".fatel").blur(function(){
    check2(".fatel");
});
$(".moname").blur(function(){
    check1(".moname");
});
$(".moaddress").blur(function(){
    check1(".moaddress");
});
$(".motel").blur(function(){
    check2(".motel");
});

function save(e){
    check1(".faname");
    check1(".faaddress");
    check2(".fatel");
    check1(".moname");
    check1(".moaddress");
    check2(".motel");
    if ($(".faname").hasClass("no")||$(".faaddress").hasClass("no")||$(".fatel").hasClass("no")||$(".moname").hasClass("no")||$(".moaddress").hasClass("no")||$(".motel").hasClass("no")){
        console.log("over");
    }else{
    aid=$(".aid").val();
    faname=$(".faname").val();
    faaddress=$(".faaddress").val();
    fatel=$(".fatel").val();
    moname=$(".moname").val();
    moaddress=$(".moaddress").val();
    motel=$(".motel").val();
//console.log(e);
      $.post("xgwl/ajax/apply-4.asp",{
        aid:aid,
        faname:faname,
        faaddress:faaddress,
        fatel:fatel,
        moname:moname,
        moaddress:moaddress,
        motel:motel

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