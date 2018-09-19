function save(e){
    location.href='apply-'+e+'.Asp'
    cname=$(".cname").val();
    fname=$(".fname").val();
    lname=$(".lname").val();
    bdate=$(".bdate").val();
    sfz=$(".sfz").val();
    sfzpic=$(".sfzpic").val();
    hz=$(".hz").val();
    hzpic=$(".hzpic").val();
    usa=$(".usa").val();
    cc=$(".cc").val();
    sex=$(".sex").val();
console.log(e);
      $.post("xgwl/ajax/apply-1.asp",{
        cname:cname,
        fname:fname,
        lname:lname,
        bdate:bdate,
        sfz:sfz,
        sfzpic:sfzpic,
        hz:hz,
        hzpic:hzpic,
        usa:usa,
        cc:cc,
        sex:sex

    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
            cookie.set(uid, 1);

              }
        });
    };
    /////////////