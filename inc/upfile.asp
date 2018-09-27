<!--上传用隐式表单-->
<form name="form1" method="post" id="form1" action="upload.asp" enctype="multipart/form-data"  onSubmit="return mysub()" target="myFrame" style="display:none;">
        <input type="file" id="file1" name="file1" >
      <input type="text" name="file2" class="file2" value="">
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
<!--上传用隐式表单结束-->