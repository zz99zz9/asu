<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%con=request("con")
files=request("files")
%>
      ////上传文件开始
  
     console.log(this.value);
      files=this.value;
      $.post("inc/upfile.asp",{
        files:files,
        con:con
    },
        function(data,status){

        //  if(data=="ok" && status=="success"){
//data='{"files":"https://blog.csdn.net/","con":"sfzpic"}'
             console.log(data)
             
         var jsObjstr =JSON.parse(data);
             console.log(jsObjstr.con);

          //    }
        });
      ////上传文件结束

<!--{"files":"<%=request("files")%>","con":"<%=request("con")%>"}-->

   $(".upfile").on('change', function(e) {
        var fileNames = '';
       // console.log(this.files);
        var con = $(this).attr("id");
       // console.log(con);
      $.each(this.files, function() {
        fileNames += '<span class="am-badge">' + this.name + '</span> ';
      });
      $(this).next().html(fileNames);
//上传开始
$(".tx1").val("ff")
//
    });