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
<p style="text-align:center">邮件已经发送，请注意查收!</p>
<a href="memberlogin.asp" class="am-btn am-btn-danger am-u-sm-12 mt15" >返回登录</a>
  

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

</body>
</html>
