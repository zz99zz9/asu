

function save(e){
    location.href='apply-'+e+'.Asp'
    aid=$(".aid").val();
    tjxpic=$(".tjxpic").val();
    js1pic=$(".js1pic").val();
    js2pic=$(".js2pic").val();
    js3pic=$(".js3pic").val();
    lwpic=$(".lwpic").val();
    
//console.log(e);
      $.post("xgwl/ajax/apply-5.asp",{
        aid:aid,
        tjxpic:tjxpic,
        js1pic:js1pic,
        js2pic:js2pic,
        js3pic:js3pic,
        lwpic:lwpic

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