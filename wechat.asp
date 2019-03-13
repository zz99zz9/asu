<!--#include file="inc/conn.asp"-->
<!--#include file="senfe/SenFe_ClsWeChat.asp"--><%
Dim SenFe, oId, oToken, oUser, iOpenId
Set SenFe = New SenFe_ClsWeChat
SenFe.AppID		= "wx5ebfae351e63525c"	'公众账户appid
SenFe.AppSecret	= "3996be0c165ad5826758dee9f5c49bbc"	'AppSecret
'如果已经取得openid可跳过下面两行,直接赋值给iOpenId
Set oId = SenFe.GetOpenId()
iOpenId = oId.openid
Set oToken = SenFe.GetAccess_Token()
Set oUser = SenFe.GetUser(iOpenId, oToken.access_token)
If oUser.subscribe = 0 Then
	'Response.Write "用户 " & oUser.openid & " 未关注,<a href='https://mp.weixin.qq.com/mp/profile_ext?action=home&__biz=MzU0MjgwODAxNQ==#wechat_redirect'>进入关注界面</a>"
	Response.Redirect "gz.asp"
  'Response.Redirect "https://mp.weixin.qq.com/mp/profile_ext?action=home&__biz=MzU0MjgwODAxNQ==&scene=126&bizpsid=0#wechat_redirect"
	Response.End
End If
%>
<%title="ASU微群"%>
 <!--#include file="inc/header.asp">
 
<!-- 页面内容 开发时删除 -->
<link rel="stylesheet" href="xgwl/css/list.css">
<!--广告结束-->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">

  <%
sql="select * From [class_wc] where cID>0"
sql=sql & " order by oid desc,cID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
 <%do while not rs.eof%>
     <div class="am-u-sm-6 guojia">
      <a class="vli" href="WCList.asp?typeid=<%=rs("Cid")%>" style="background-image:url(<%=rs("CFile")%>);"><%=rs("cname")%></a>
    </div>
<%
	      rs.movenext
	loop
%>
  </div>
</div>

<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">

  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
</body>
</html>
