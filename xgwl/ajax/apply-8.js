

function save(e){
    if ($(":checkbox:checked").length == 0)
    {
    $(".xy").css("color","#ff0000");
    console.log("jofi")
    return false;
    }


    bankpic1=$(".bankpic1").val();
    bankpic2=$(".bankpic2").val();
    fgfpic=$(".fgfpic").val();
    parentspic=$(".parentspic").val();
    schoolpic=$(".schoolpic").val();
    
console.log($(".xy").val());
      $.post("xgwl/ajax/apply-8.asp",{

        bankpic1:bankpic1,
        bankpic2:bankpic2,
        fgfpic:fgfpic,
        parentspic:parentspic,
        schoolpic:schoolpic

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