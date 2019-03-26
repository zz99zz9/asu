<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/inc.asp"-->
<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp"
end if%>
<%title="我的签证申请记录"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
 <link rel="stylesheet" href="xgwl/css/user.css">
<div class="am-g am-g-fixed am-margin-top">
<div class="yellow"><%=request.cookies("cname")%></div>

  <div class="am-u-sm-12  userbox">
    <div class="am-form" >
  <fieldset>
    <legend>我的签证申请记录</legend>
    <%err2=Request.QueryString("err")%>
<form name="form2" id="form2" >
<%if err<>"" then%>
<div class="am-form-group">
<%=err2%>
</div>
<%end if%>
<!------>
<%uid=request.cookies("uid")

    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Visa] where uid="&uid&" order by id desc",conn,1,3

    %>
<!------>
<% if rs("sh")=0 then%>
<p class="ie-btn me-btn  am-u-sm-12 " ><%call visacountry(rs("cid"))%> 申情时间：<%=FormatDateTime(rs("uptime"),2)%> [待审核]</p>
<%elseif rs("sh")=1 then%>
<a  class="ie-btn me-btn  am-u-sm-12 " href="visa_from.asp?cid=<%=rs("cid")%>&id=<%=rs("id")%>"><%call visacountry(rs("cid"))%> 申情时间：<%=FormatDateTime(rs("uptime"),2)%> [待完善]</a>
<%elseif rs("sh")=2 then%>
<p class="ie-btn me-btn  am-u-sm-12 " ><%call visacountry(rs("cid"))%> 申情时间：<%=FormatDateTime(rs("uptime"),2)%> [已完成]</p>
<%end if%>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="member.asp">返回个人中心</a>
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
