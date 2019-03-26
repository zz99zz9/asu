<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%title="会员中心"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
 <link rel="stylesheet" href="xgwl/css/user.css">
<div class="am-g am-g-fixed am-margin-top">
<div class="yellow"><img src="xgwl/img/logo.png"></div>
  <div class="am-u-sm-12 userbox">
    <div class="am-form" >
    <fieldset>
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
        <div class="am-form-group">
            <input type="password" class="upwd" id="" placeholder="密码">
            <span class="errinfo"></span>
        </div>

        <input type="hidden" class="step" value="1">
        
        <a class="am-u-sm-6 link" href="register.asp">新用户注册</a>
        <a class="am-u-sm-6 right link" href="memberforget.asp">忘记密码</a>
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 mt15" onClick="mlogin('<%=url%>')">立即登录</button>
        
        </form>
    </fieldset>
    </div>

  </div>
</div>

<footer class="am-margin-top">

  <p class="am-text-center">
    <small></small>
  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
<script type="text/javascript" src="xgwl/ajax/memberlogin.js"></script>
</body>
</html>
