
<html>
<head><title></title>
<script>
    function checkYear() {
        var selectValue = $("select[name='periodType']").val();
        if(selectValue == 1){
            $("#isPeriodYearHalf").hide();
        }
        if(selectValue == 2){
            $("#isPeriodYearHalf").show();
        }
    }
</script>
 </head>
<body>

<span>报表类型：
     <select name="periodType" onchange="checkYear();">
       <option value="1">年报</option>
       <option value="2">半年报</option>
     </select>
</span>
<span id="isPeriodYearHalf" style="display:none">报表半年：
     <select name="periodYearHalf">
        <option value="1">上半年</option>
        <option value="2">下半年</option>
     </select>
</span>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
</body>
</html>
