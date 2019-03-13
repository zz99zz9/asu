<%@language="vbscript" codepage="65001"%>
<!--#include file="SenFe_ClsWeChat.asp"--><!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8" />
	<title>判断用户是否关注微信公众号</title>
</head>
<body>
<%
'************************************************************
' 作者: SenFe
' QQ/微信: 54807293 (验证请说明来意}
' E-Mail: SenFe@126.com
' 承接各种建站程序定做、修改业务
'************************************************************
Session.CodePage = 65001
Response.CharSet = "utf-8"
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
	Response.Write "用户 " & oUser.openid & " 未关注,<a href='https://mp.weixin.qq.com/mp/profile_ext?action=home&__biz=MzU0MjgwODAxNQ==#wechat_redirect'>进入关注界面</a>"
Else
	Response.Write "用户 " & oUser.openid & " 已关注"
End If
%>
</body>
</html>