<%title="会员中心"%>
<!--#include file="inc/conn.asp"-->
 <!--#include file="inc/header.asp">
 <!--#include file="inc/md5.asp">
<!-- 页面内容 开发时删除 -->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>找回密码</legend>
    <%ranNum=Request.QueryString("ranNum")%>
    <%sql="select ranNum from Table_member where ranNum='"&ranNum&"'"  ' 查询数据库中是否有重复记录
	set Rs=Server.CreateObject("ADODB.Recordset")
  Rs.Open sql,conn,1,3
	'set rs = conn.execute(sql)

	If not(rs.Eof And rs.Bof) Then
'有数据
%>
<form name="form2" id="form2" >

        <div class="am-form-group">
            <input type="password" class="upwd" placeholder="密码">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="password" class="upwd2" placeholder="确认密码">
            <span class="errinfo"></span>
        </div>
<input type="hidden" class="ranNum" value="<%=ranNum%>">
<span class="errinfo"></span>
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="resetpassword()">修改密码</button>
<br><br>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="memberlogin.asp">返回登录</a>
        </form>
<%
else
'无数据
%>
邮件链接已失效，请重新发起找回密码<br>
       <br><br><a type="button" class="am-btn am-btn-default am-u-sm-12 " href="memberforget.asp">找回密码</a>
        <br><br>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="register.asp">新用户注册</a>

<%
	end if
	rs.close
	set rs=nothing%>

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
<script type="text/javascript" src="xgwl/ajax/memberpassword.js"></script>
</body>
</html>
