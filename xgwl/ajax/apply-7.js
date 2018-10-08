

function save(e){
 

    toefl=$(".toefl").val();
    ielts=$(".ielts").val();
    act=$(".act").val();
    sat=$(".sat").val();
    gmat=$(".gmat").val();
    mschool=$(".mschool").val();
    mspic=$(".mspic").val();
    hschool=$(".hschool").val();
    hspic=$(".hspic").val();
    uschool=$(".uschool").val();
    uspic=$(".uspic").val();
    
//console.log(e);
      $.post("xgwl/ajax/apply-7.asp",{
        toefl:toefl,
        ielts:ielts,
        act:act,
        sat:sat,
        gmat:gmat,
        mschool:mschool,
        mspic:mspic,
        hschool:hschool,
        hspic:hspic,
        uschool:uschool,
        uspic:uspic

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