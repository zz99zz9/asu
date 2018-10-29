<%title="会员中心"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>用户登录</legend>
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
        
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="mlogin('<%=url%>')">立即登录</button>
        <br><br>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="register.asp">新用户注册</a>
       <br><br><a type="button" class="am-btn am-btn-default am-u-sm-12 " href="memberforget.asp">忘记密码</a>
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
<script type="text/javascript" src="xgwl/ajax/memberlogin.js"></script>
</body>
</html>
