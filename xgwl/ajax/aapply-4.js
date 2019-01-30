//显示及隐藏表单
$(".c2").click(function(){
    var isValue = $('input[name="c2"]:checked ').val();
    if(isValue == "Yes"){
        $(".c2a").show();
    }else{
        $(".c2a").hide();
    }

});

$(".d6").change(function(){
    var str = '';
    var ii='';
    var xx='';
    var o=$("select[name='d6']").val();
    var oo=parseInt(o)+1;
//console.log($("select[name='d6']").val());
    for (var i=0;i<o;i++) {  
       //console.log(i);  
       ii=i+1
        $(".d6aa"+ii).show();
    } 
  //  console.log(oo);
    for (var x=oo;x<10;x++){
       // xx=x+1
        $(".d6aa"+x).hide();
        //console.log(x);
        
    }
   
 //   $("#upfileslist").html(str);  
});

//验证表现（填写过程中）
// $(".b1").blur(function(){
//     check1(".b1");
// });
// $(".b2").blur(function(){
//     check1(".b2");
// });





function save(e){
 //   location.href='apply-'+e+'.Asp'
    // check1(".c1");
    // check1(".c2");


 
    if ($(".c4").hasClass("no")||$(".c5").hasClass("no")||$(".c6").hasClass("no")||$(".c7").hasClass("no")){
        console.log("over");
    }else{
    aid=$(".aid").val();
    d1=$(".d1").val();
    d2=$(".d2").val();
    d3=$(".d3").val();
    d4=$(".d4").val();
    d5=$(".d5").val();
    d6=$(".d6").val();
    d7=$(".d7").val();
    d8=$(".d8").val();
    d9=$(".d9").val();
    d10=$(".d10").val();
    d11=$(".d11").val();
    d6a1=$(".d6a1").val();
    d6a2=$(".d6a2").val();
    d6a3=$(".d6a3").val();
    d6a4=$(".d6a4").val();
    d6a5=$(".d6a5").val();
    d6a6=$(".d6a6").val();
    d6a7=$(".d6a7").val();
    d6a8=$(".d6a8").val();
    d6a9=$(".d6a9").val();

//console.log(e);
//console.log("fdsa");
      $.post("xgwl/ajax/aapply-4.asp",{
        aid:aid,
        d1:d1,
        d2:d2,
        d3:d3,
        d4:d4,
        d5:d5,
        d6:d6,
        d7:d7,
        d8:d8,
        d9:d9,
        d10:d10,
        d11:d11,
        d6a1:d6a1,
        d6a2:d6a2,
        d6a3:d6a3,
        d6a4:d6a4,
        d6a5:d6a5,
        d6a6:d6a6,
        d6a7:d6a7,
        d6a8:d6a8,
        d6a9:d6a9


    
    },
        function(data,status){
            
          if(data=="ok" && status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
                location.href='aapply-'+e+'.Asp'
              }
        });
    };
    /////////////
};
