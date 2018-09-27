
function save(e){

    aid=$(".aid").val();
    asu=$(".asu").val();
    asuid=$(".asuid").val();
    asuselect=$(".asuselect").val();
//console.log(e);
      $.post("xgwl/ajax/apply-3.asp",{
        aid:aid,
        asu:asu,
        asuid:asuid,
        asuselect:asuselect
    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
          //  console.log(data);
                location.href='apply-'+e+'.Asp'
              }
        });
    };

    /////////////