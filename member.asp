<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="inc/conn.asp"-->
<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp"
end if%>
<%title="个人中心"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
 <link rel="stylesheet" href="xgwl/css/user.css">
<div class="am-g am-g-fixed am-margin-top">
<div class="yellow"><%=request.cookies("cname")%></div>

  <div class="am-u-sm-12  userbox">
    <div class="am-form" >
  <fieldset>
    <legend>个人中心</legend>
    <%err2=Request.QueryString("err")%>
<form name="form2" id="form2" >
<%if err<>"" then%>
<div class="am-form-group">
<%=err2%>
</div>
<%end if%>
<!------>

<!------>
<a  class="me-btn am-u-sm-6 " href="memberInfo.asp">个人资料</a>
<a  class="me-btn am-u-sm-6 " href="memberPwd.asp">修改密码</a>
<a  class="me-btn am-btn-default am-u-sm-6 " href="memberApply.asp">我的留学申请</a>
<a  class="me-btn am-btn-default am-u-sm-6 " href="memberVisa.asp">我的签证申请</a>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="memberQuit.asp">退出登录</a>
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
