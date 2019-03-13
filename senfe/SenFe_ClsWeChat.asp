<%
'************************************************************
' 类库名称: 微信
' 文件名称: SenFe_ClsWeChat.asp
' 程序版本: 1.0
' 最后更新: 2019-3-10
' 程序作者: SenFe
'============================================================
' 网站: http://www.SenFe.com/
' QQ/微信: 54807293
' 邮箱:SenFe@126.com
'************************************************************
Class SenFe_ClsWeChat
	Public AppID		'公众号AppID
	Public AppSecret	'公众号secret

	Public Sub Class_Initialize()
		AppID		= "公众号AppID"
		AppSecret	= "公众号secret"
	End Sub

	Public Sub Class_Terminate()
	End Sub

	Public Function GetOpenId()
		preCookies = "SenFe_"
		If Request.Cookies("SenFe_Access_Openid") <> "" then
			Set GetOpenId = parseJSON(Request.Cookies("SenFe_Access_Openid"))
		Else
			Dim code, url, sJson
			code = Request("code")
			If code <> "" Then
				url = "https://api.weixin.qq.com/sns/oauth2/access_token?" & _
				"appid=" & AppID & _
				"&secret=" & AppSecret & _
				"&code=" & code & _
				"&grant_type=authorization_code"
				sJson = UrlRequest(url, "", "utf-8")
				If InStr(sJson, "access_token")>0 And InStr(sJson,"errcode")=0 Then
					Response.Cookies("SenFe_Access_Openid") = sJson
					Response.Cookies("SenFe_Access_Openid").Expires = DateAdd("d", 30, Now())
					Set GetOpenId = parseJSON(sJson)
				Else
				   Response.Write("获取Openid出错：" & sJson)
				   Response.End
				End If
			Else
				url = "https://open.weixin.qq.com/connect/oauth2/authorize?" & _
				"appid=" & AppID & _
				"&redirect_uri=" & Server.URLEncode(GetUrl()) & _
				"&response_type=code" & _
				"&scope=snsapi_userinfo" & _
				"&state=Sky#wechat_redirect"
				Response.Redirect url
				Response.End
			End If
		End If
	End Function
	Public Function GetAccess_Token()
		url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" & AppID & "&secret=" & AppSecret
		'url = "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=" & AppID & "&grant_type=refresh_token&refresh_token=" & Refresh_Token
		sJson = UrlRequest(url, "", "utf-8")
		If InStr(sJson, "access_token")>0 And InStr(sJson,"errcode")=0 Then
			Response.Cookies("SenFe_Access_Token") = sJson
			Response.Cookies("SenFe_Access_Token").Expires = DateAdd("d", 30, Now())
			Set GetAccess_Token = parseJSON(sJson)
		Else
			Response.Write "获取access_token发生错误，错误代码：" & obj.errcode & " , 错误描述：" & obj.errmsg
			Response.End
		End If
	End Function
	Public Function GetUser(ByVal Openid, ByVal Access_Token)
		Dim url, result, sJson
		url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=" & Access_Token & "&openid=" & Openid & "&lang=zh_CN"
		'url = "https://api.weixin.qq.com/sns/userinfo?access_token=" & Access_Token & "&openid=" & Openid & "&lang=zh_CN"
		sJson = UrlRequest(url, "", "utf-8")
		If InStr(sJson, "openid") > 0 Then
			Set GetUser = parseJSON(sJson)
		Else
			Set obj = parseJSON(sJson)
			If isobject(obj) Then
				Response.Write "获取用户信息时发生错误，错误代码：" & obj.errcode & " , 错误描述：" & obj.errmsg
				Response.End
			End if
			Set obj = Nothing
		End If
	End Function
	Private Function UrlRequest(sUrl, sData, sCset)
		Dim oHttp, sType
		Set oHttp = Server.CreateObject("Msxml2.ServerXMLHTTP")
		With oHttp
			.Open IIf(sData <> "", "POST", "GET"), sUrl, False
			.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
			.Send sData
			If .ReadyState = 4 And .Status = 200 Then
				'UrlRequest = .ResponseText
				UrlRequest = BytesToBstr(.ResponseBody, sCset)
			Else
				UrlRequest = ""
			End If
		End With
		Set oHttp = Nothing
	End Function
	Private Function BytesToBstr(sBody, sCset)
		Dim oAdos : Set oAdos = Server.CreateObject("Adodb.Stream")
		With oAdos
			.Type = 1
			.Mode = 3
			.Open
			.Write sBody
			.Position = 0
			.Type = 2
			.Charset = sCset
			BytesToBstr = .ReadText
			.Close
		End With
		Set oAdos = Nothing
	End Function
	Public Function GetUrl()
			Dim ServerPort, QueryString
			ServerPort = Request.ServerVariables("SERVER_PORT")
			QueryString = Request.ServerVariables("QUERY_STRING")
			Url = IIF(LCase(Request.ServerVariables("HTTPS")) = "off", "http://", "https://") & Request.ServerVariables("SERVER_NAME")
			If ServerPort <> "80" Then
				GetUrl = GetUrl & ":" & ServerPort
			End If
			GetUrl = Url & Request.ServerVariables("SCRIPT_NAME")
			If QueryString <>"" Then
				GetUrl = GetUrl & "?" & QueryString
			End If
	End Function
	Private Function IIf(ByVal bExp1, ByVal sVal1, ByVal sVal2)
		If (bExp1) Then
			IIf = sVal1
		Else
			IIf = sVal2
		End If
	End Function
End Class

Dim scriptCtrl
Function parseJSON(str)
	If Not IsObject(scriptCtrl) Then
		Set scriptCtrl = Server.CreateObject("MSScriptControl.ScriptControl")
		scriptCtrl.Language = "JScript"
		scriptCtrl.AddCode "Array.prototype.get = function(x) { return this[x]; }; var result = null;"
	End If
	scriptCtrl.ExecuteStatement "result = " & str & ";"
	Set parseJSON = scriptCtrl.CodeObject.result
End Function
%>