<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<form name="form1" method="post" id="form1" action="upload.asp" enctype="multipart/form-data"  onSubmit="return mysub()">
        <input type="file" id="file" name="file" class="eie" >
      <input type="text" name="file1" class="filename" value="">
</form>

<script>
$(".upfile").click(function () {
 var con = $(this).attr("data-id");
con=$(".file2").val(con)
$("#file1").click();
$("#file1").on("change",function(){
    document.getElementById("form1").submit(); 
    });
    });
</script>
<iframe name="myFrame" src="" style="display:none;"></iframe> 