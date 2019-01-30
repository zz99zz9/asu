<%
'======================================
'系统：微信扫码支付程序
'功能：微信扫码支付类文件,请勿修改
'作者：麦奇
'Q  Q：24147824
'官网：http://www.payasp.com
'======================================
dim apiurl,create_ip,nonce_str,timeStamp,xmlhttp,preCookies,json_str
apiurl          = getmd5
preCookies      = "PayAsp"
create_ip       = GetIP()
nonce_str       = GetRnd(10)
timeStamp       = ToUnixTime(now())
xmlhttp         = "Msxml2.ServerXMLHTTP.6.0"
json_str        = "2" '1 or 2
	
'微信支付V3获取Prepay_Id
Function get_prepay_id()
	dim postData,signValue,post_url,sign,returnXml,xml_dom,return_code,result_code
	post_url= "https://api.mch.weixin.qq.com/pay/unifiedorder"
	sign="appid="&getAppId&"&attach="&attach_my&"&body="&body&"&mch_id="&getMCHID&"&nonce_str="&nonce_str&"&notify_url="&notify_url&"&openid="&openid&"&out_trade_no="&out_trade_no&"&spbill_create_ip="&create_ip&"&total_fee="&total_fee&"&trade_type=JSAPI&key="&getPartnerKey
	signValue=UCase(MD5(sign,"UTF-8"))
	postData="<xml>"&_
		"<appid><![CDATA["&getAppId&"]]></appid>"&_
		"<attach><![CDATA["&attach_my&"]]></attach>"&_
		"<body><![CDATA["&body&"]]></body>"&_
		"<mch_id><![CDATA["&getMCHID&"]]></mch_id>"&_
		"<nonce_str><![CDATA["&nonce_str&"]]></nonce_str>"&_
		"<notify_url><![CDATA["&notify_url&"]]></notify_url>"&_
		"<openid><![CDATA["&openid&"]]></openid>"&_
		"<out_trade_no><![CDATA["&out_trade_no&"]]></out_trade_no>"&_
		"<spbill_create_ip><![CDATA["&create_ip&"]]></spbill_create_ip>"&_
		"<total_fee><![CDATA["&total_fee&"]]></total_fee>"&_
		"<trade_type><![CDATA[JSAPI]]></trade_type>"&_
		"<sign><![CDATA["&signValue&"]]></sign>"&_
		"</xml>"
	returnXml=Get_code_url(apiurl,post_url,postData)
	set xml_dom=Server.CreateObject("MSXML2.DOMDocument")
	xml_dom.resolveExternals = false
	xml_dom.loadXml(returnXml)
	return_code=xml_dom.getelementsbytagname("return_code").item(0).text
	if return_code="FAIL" then
		'协议级错误
		get_prepay_id=xml_dom.getelementsbytagname("return_msg").item(0).text
		response.Write("协议级接口调用错误:"&get_prepay_id)
		response.End()
	else
		result_code=xml_dom.getelementsbytagname("result_code").item(0).text
		if result_code="FAIL" then
			'业务级错误
			get_prepay_id=xml_dom.getelementsbytagname("err_code_des").item(0).text
			response.Write("业务级支付错误:"&get_prepay_id)
			response.End()
		else
			if return_code="SUCCESS" and result_code="SUCCESS" then
				'数据正常
				get_prepay_id=xml_dom.getelementsbytagname("prepay_id").item(0).text
			end if
		end if
	end if
End Function

'微信支付V3，返回最后提交的paySign
Function get_paySign()
	dim sign
	sign="appId="&getAppId&"&nonceStr="&nonce_str&"&package=prepay_id="&prepay_id&"&signType=MD5&timeStamp="&timeStamp&"&key="&getPartnerKey
	get_paySign=UCase(MD5(sign,"UTF-8"))
End Function

'获取用户OpenID
Function GetOpenId()
	if request.Cookies(preCookies&"openid")="" then
		dim code,s_url,url,strJson,access_token,openids
		code=request("code")
		if code="" then
			s_url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid="&getAppId&"&redirect_uri="&Server.URLEncode(redirect_url)&"&response_type=code&scope=snsapi_base&state=Sky#wechat_redirect"
			response.Redirect(s_url)
			response.End()
		else
			url="https://api.weixin.qq.com/sns/oauth2/access_token?appid="&getAppId&"&secret="&getSecret&"&code="&code&"&grant_type=authorization_code"
			strJson=GetURL(url)
			dim objTest
			if json_str="1" then
				Call InitScriptControl:Set objTest = getJSONObject(strJson)
			elseif json_str="2" then
				Set objTest = getjson(strJson)
			end if
			if InStr(strJson,"errcode")>0 then
				response.Write "获取Openid出错："&strJson
				response.End()
			else
				openids=objTest.openid	'获取openid
				Response.Cookies(preCookies&"openid")=openids
				Response.Cookies(preCookies&"openid").Expires=DateAdd("m",60,now())
				GetOpenId=openids
			end if
		end if
	else
		GetOpenId=request.Cookies(preCookies&"openid")
	end if
End Function

'获取客户端IP
Function GetIP() 
	Dim strIPAddr 
	If Request.ServerVariables("HTTP_X_FORWARDED_FOR") = "" Or InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), "unknown") > 0 Then 
		strIPAddr = Request.ServerVariables("REMOTE_ADDR") 
	ElseIf InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ",") > 0 Then 
		strIPAddr = Mid(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), 1, InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ",")-1) 
	ElseIf InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ";") > 0 Then 
		strIPAddr = Mid(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), 1, InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ";")-1)
	Else 
		strIPAddr = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
	End If 
	getIP = Checkstr(Trim(Mid(strIPAddr, 1, 30)))
End Function

'过滤字符
Function Checkstr(Str)
	If Isnull(Str) Then
		CheckStr = ""
		Exit Function 
	End If
	Str = Replace(Str,Chr(0),"")
	CheckStr = Replace(Str,"'","''")
End Function

'返回当前日期20140105024523
Function getStrNow()
	dim strNow:strNow = Now()
	strNow = Year(strNow) & Right(("00" & Month(strNow)),2) & Right(("00" & Day(strNow)),2) & Right(("00" & Hour(strNow)),2) & Right(("00" &  Minute(strNow)),2) & Right(("00" & Second(strNow)),2)
	getStrNow = strNow
End Function

'获取随机数,返回 [min,max]范围的数
Function getRandNumber(max, min)
	Randomize 
	getRandNumber = CInt((max-min+1)*Rnd()+min) 
End Function
	
'获取随机数字的字符串,返回[min,max]范围的数字字符串
Function getStrRandNumber(max, min)
	dim randNumber:randNumber = getRandNumber(max, min)
	getStrRandNumber = CStr(randNumber)
End Function

'生成随机字符串
Function GetRnd(t0)
	randomize
	dim n1,n2,n3
	do while len(getrnd)<t0 '随机字符位数 
		n1=cstr(chrw((57-48)*rnd+48)) '0~9 
		n2=cstr(chrw((90-65)*rnd+65)) 'a~z 
		n3=cstr(chrw((122-97)*rnd+97)) 'a~z 
		getrnd=getrnd&n1&n2&n3 
	loop
End Function

'时间戳转换成普通日期
Function FromUnixTime(intTime) 
	If IsEmpty(intTime) Or Not IsNumeric(intTime) Then 
		FromUnixTime = Now() 
		Exit Function 
	End If 	
	FromUnixTime = DateAdd("s", intTime, "1970-1-1 0:0:0") 
	FromUnixTime = DateAdd("h", 8, FromUnixTime) 
End Function
	
'普通日期转换成时间戳
Function ToUnixTime(strTime)
	If IsEmpty(strTime) or Not IsDate(strTime) Then strTime = Now
	 ToUnixTime = DateAdd("h",-8,strTime)        
	 ToUnixTime = DateDiff("s","1970-1-1 0:0:0", ToUnixTime)
End Function 	
Sub getJSArrayItem(objDest,objJSArray,index)
	On Error Resume Next
	sc4Json.Run "getJSArray",objJSArray, index
	Set objDest = sc4Json.CodeObject.itemTemp
	If Err.number=0 Then Exit Sub    
	objDest = sc4Json.CodeObject.itemTemp
End Sub

'POST过程
Function Get_code_url(apiurl,url,xml)
	Dim code_url,data
	data =Response_Data(xml,url,1)
	code_url = PostURL(apiurl,data)
	Get_code_url = code_url
End Function

'整合POST数据
Function Response_Data(xml,url,cert)
	dim domain:domain=Request.ServerVariables("HTTP_HOST")
	If cert=1 Then
		Response_Data = "xml="&xml&"&url="&url&"&domain="&domain&"&cert=1"
	Else
		Response_Data = "xml="&xml&"&url="&url&"&domain="&domain&"&cert=0"
	End If
End Function

'获取POST返回数据
Function PostURL(url,PostStr)
	dim http
	Set http = Server.CreateObject(xmlhttp)
	With http
		.Open "POST", url, false ,"" ,""
		.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
		.Send(PostStr)
		PostURL = .responsetext
	End With
	Set http = Nothing
End Function

'获取GET返回数据
Function GetURL(url)
	dim http
	set http=server.createobject(xmlhttp)
	http.open "GET",url,false
	http.setRequestHeader "If-Modified-Since","0"
	http.send()
	GetURL=http.responsetext
	set http=nothing
End Function

'截取JSON数据
Dim sc4Json
Sub InitScriptControl
	Set sc4Json = Server.CreateObject("MSScriptControl.ScriptControl")
	sc4Json.Language = "JavaScript"
	sc4Json.AddCode "var itemTemp=null;Function getJSArray(arr, index){itemTemp=arr[index];}"
End Sub
Function getJSONObject(strJSON)
	sc4Json.AddCode "var jsonObject = " & strJSON
	Set getJSONObject = sc4Json.CodeObject.jsonObject
End Function 
%>
<script language="jscript" runat="server">
function getjson(str){
        try{
           eval("var jsonStr = (" + str + ")");
        }catch(ex){
           var jsonStr = null;
        }
        return jsonStr;
}
</script>