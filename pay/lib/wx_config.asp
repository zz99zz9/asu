<%
'======================================
'系统：微信扫码支付程序
'功能：微信扫码支付配置文件请根据自己需要进行修改参数
'作者：麦奇
'Q  Q：24147824
'官网：http://www.payasp.com
'======================================
option explicit
Response.CodePage=65001   
Response.Charset="UTF-8" 
	
dim getPartnerKey,getAppId,getSecret,getMCHID,notify_url,redirect_url
	
'微信支付商户号
getMCHID        = "1510999271"

'微信支付密钥							
getPartnerKey	= "afa51663d5f3ac279c8b3434ec8bec33"

'公众账户appid
getAppId        = "wx5ebfae351e63525c"

'公众号secret
getSecret       = "3996be0c165ad5826758dee9f5c49bbc"

'异步通知地址
notify_url      = "http://asu.lvovl.cn/pay/wx_notifyurl.asp"

'支付系统安装路径
redirect_url    = "http://asu.lvovl.cn/pay/"
%>