<%title="会员注册"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>用户注册</legend>
<form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="umail" placeholder="邮箱" >
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="password" class="upwd" placeholder="密码">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="password" class="upwd2" placeholder="确认密码">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="cname" placeholder="姓名">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="utel" placeholder="手机号">
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
            <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
        <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
        <input type="text" name="USER_AGE" id="USER_AGE" readonly class="input bdate am-form-field " value="<%=bdate%>" placeholder="请填写你的出生日期" />
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">性别：</label>
            <label class="am-radio-inline">
                <input type="radio"  value="男" name="sex"> 男
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="女" name="sex"> 女
            </label>
        </div>

        <div class="am-checkbox" style="display:none;">
            <label>
                <input type="checkbox" id="usa" class="usa"> 同意
            </label>
        </div>

                <div class="am-form-group">
            <input type="text" class="recommend" placeholder="推荐人/推荐公司/推荐学校">
            <input type="hidden" class="action" value="add">
        </div>
<input type="hidden" class="step" value="1">

        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="register('<%=url%>')">立即注册</button>
        <br><br>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="memberlogin.asp">返回登录</a>
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
