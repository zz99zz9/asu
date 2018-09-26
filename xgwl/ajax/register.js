function register(e){
    uname=$(".uname").val();
    upwd=$(".upwd").val();
    upwd2=$(".upwd2").val();
    bdate=$(".bdate").val();
    cname=$(".cname").val();
    uptime=$(".uptime").val();
    recommend=$(".recommend").val();
    utel=$(".utel").val();

    
    $.post("xgwl/ajax/register.asp",{
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
           // cookie.set(uid, 1);
            console.log(data);
              }
        });
}