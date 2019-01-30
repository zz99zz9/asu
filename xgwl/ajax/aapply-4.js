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
    for (var i=0;i<$("select[name='d6']").val();i++) {  
       console.log(i);  
        ii=i+1;
        str += '<div class="am-form-group">';
        str += '<button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a'+ii+'">';
        str += '<i class="am-icon-cloud-upload"></i> Upload '+ii+'st file </button>';
        str += '<input type="hidden" class="d6a'+ii+' upfile2" name="d6a'+ii+'"  value="<%=d6a1%>">';
        str += '<span class="errinfo"></span>';
        str += '<div class="am-badge d6a'+ii+'ok" style="display:none;">ok</div>';
        str += '</div>';
        
    } 

    str +='<form name="form1" method="post" id="form1" action="upload.asp" enctype="multipart/form-data"  onSubmit="return mysub()" target="myFrame" style="display:none;">';
    str +='<input type="file" id="file1" name="file1" >';
    str +='<input type="text" name="file2" class="file2" value="">';
    str +='</form>';
str +='<script>';
str += '$(".upfile").click(function () {';
str +=' var con = $(this).attr("data-id");';
str += 'con=$(".file2").val(con)';
str += '$("#file1").click();';
str += '$("#file1").on("change",function(){';
    str += 'document.getElementById("form1").submit(); ';
    str += 	 '});';
    str += '});';
str += '</script>';
str+='<iframe name="myFrame" src="" style="display:none;"></iframe> ';
    $("#upfileslist").html(str);  
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
