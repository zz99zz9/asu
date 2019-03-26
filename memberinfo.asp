<%title="个人资料"%>
<!--#include file="inc/conn.asp"-->
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<link rel="stylesheet" href="xgwl/css/user.css">
<div class="yellow"><%=request.cookies("cname")%></div>
<div class="am-g am-g-fixed am-margin-top userbox">
  <div class="am-u-sm-12">
    <div class="am-form" >
    
  <fieldset>
    <legend>— 个人资料 —</legend>
        <%uid=request.cookies("uid")

    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_member] where id="&uid,conn,1,3
    %>
<form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="umail" placeholder="邮箱" value="<%=rs("umail")%>">
            <span class="errinfo"></span>
        </div>
         <input type="hidden" class="upwd"  value="<%=rs("upwd")%>">
        <input type="hidden" class="upwd2"  value="<%=rs("upwd")%>">
        
        <div class="am-form-group">
            <input type="text" class="cname" placeholder="姓名" value="<%=rs("cname")%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="utel" placeholder="手机号" value="<%=rs("utel")%>">
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
            <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
        <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
        <input type="text" name="USER_AGE" id="USER_AGE" readonly class="input bdate am-form-field " value="<%=rs("bdate")%>" placeholder="请填写你的出生日期" />
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">性别：</label>
            <label class="am-radio-inline">
                <input type="radio"  value="男" name="sex" class="sex" <%if rs("sex")="男" then%> checked<%end if%>> 男
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="女" name="sex" class="sex" <%if rs("sex")="女" then%> checked<%end if%>> 女
            </label>
        </div>


                <div class="am-form-group">
  
            <input type="hidden" class="action" value="mod">
        </div>
<input type="hidden" class="uid" value="<%=uid%>">

        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="register('<%=url%>')">保存</button>
        <br><br>
        <a class="link tc am-u-sm-12" href="member.asp">← 返回个人中心</a>
        </form>
  </fieldset>
   </div>

  </div>


<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">
    <small></small>
  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
<script type="text/javascript" src="xgwl/ajax/register.js"></script>
<script src="xgwl/js/lib/mobiscroll_date.js" ></script> 
<script src="xgwl/js/lib/mobiscroll.js"></script> 
<script type="text/javascript">
$(function () {
	var currYear = (new Date()).getFullYear();	
	var opt={};
	opt.date = {preset : 'date'};
	opt.datetime = {preset : 'datetime'};
	opt.time = {preset : 'time'};
	opt.default = {
		theme: 'android-ics light', //皮肤样式
		display: 'modal', //显示方式 
		mode: 'scroller', //日期选择模式
		dateFormat: 'yyyy-mm-dd',
		lang: 'zh',
		showNow: true,
		nowText: "今天",
		startYear: currYear - 30, //开始年份
		endYear: currYear - 10 //结束年份
	};

	$("#USER_AGE").mobiscroll($.extend(opt['date'], opt['default']));

});
</script>
</body>
</html>
