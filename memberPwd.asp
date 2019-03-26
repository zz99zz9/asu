<%title="修改密码"%>
<!--#include file="inc/conn.asp"-->
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<link rel="stylesheet" href="xgwl/css/user.css">
<div class="yellow"><%=request.cookies("cname")%></div>
<div class="am-g am-g-fixed am-margin-top userbox">
  <div class="am-u-sm-12">
    <div class="am-form" >
    
  <fieldset>
    <legend>— 修改密码 —</legend>
        <%uid=request.cookies("uid")

    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_member] where id="&uid,conn,1,3
    %>
<form name="form2" id="form2" >
<input type="hidden" class="umail" value="<%=rs("umail")%>">
<input type="hidden" class="utel" value="<%=rs("utel")%>">
<input type="hidden" class="cname" value="<%=rs("cname")%>">
        <div class="am-form-group">
            <input type="password" class="upwd" placeholder="密码" value="">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="password" class="upwd2" placeholder="确认密码" value="">
            <span class="errinfo"></span>
        </div>

                <div class="am-form-group">
  
            <input type="hidden" class="action" value="pwd">
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
