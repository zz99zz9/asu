<!--#include file="inc/conn.asp"-->
<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp"
end if%>
<%title="会员中心"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>会员中心</legend>
    <%err2=Request.QueryString("err")%>
<form name="form2" id="form2" >
<%if err<>"" then%>
<div class="am-form-group">
<%=err2%>
</div>
<%end if%>
<!------>

<!------>


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
