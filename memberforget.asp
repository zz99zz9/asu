<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%title="会员中心"%>
 <!--#include file="inc/header.asp">
 <!--#include file="inc/md5.asp">
<!-- 页面内容 开发时删除 -->
<link rel="stylesheet" href="xgwl/css/user.css">
<div class="yellow"><img src="xgwl/img/logo.png"></div>
<div class="am-g am-g-fixed am-margin-top userbox">
  <div class="am-u-sm-12 ">
    <div class="am-form" >
    
  <fieldset>
    <legend>— 找回密码 —</legend>
    <%err2=Request.QueryString("err")%>
<form name="form2" id="form2" >
<%if err<>"" then%>
<div class="am-form-group" style="color:#dd514c;">
<%=err2%>
</div>
<%end if%>
        <div class="am-form-group">
        
            <input type="text" class="umail" placeholder="邮箱" >
            <span class="errinfo"></span>

        </div>
<%Dim ranNum
ranNum = month(Now())&day(Now())&hour(Now())&minute(Now())&second(Now())%>

<input type="hidden" class="ranNum" value="<%=ranNum*9987%>">
        <a class="am-u-sm-6 link" href="register.asp">新用户注册</a>
  <a class="am-u-sm-6 right link" href="memberlogin.asp">返回登录</a>
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 mt15" onClick="forget()">找回密码</button>

        </form>
  </fieldset>
   </div>

  </div>


<footer class="am-margin-top">

  <p class="am-text-center">
    <small></small>
  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
<script type="text/javascript" src="xgwl/ajax/memberforget.js"></script>
</body>
</html>
