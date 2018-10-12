function save(e){
   // check1(".schoolzone");
   // check1(".college");
    check1(".major");
    if ($(".major").hasClass("no")){
        console.log("over");
    }else{
  //  schoolzone=$(".schoolzone").val();
  //  college=$(".college").val();
    major=$(".major").val();
    aid=$(".aid").val();
    action=$(".action").val();

    $.post("xgwl/ajax/apply-6.asp",{
        major:major,
        action:action

    },
        function(data,status){
            
          if(status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
                location.href='apply-'+e+'.Asp'
              }
            });

    }
}
