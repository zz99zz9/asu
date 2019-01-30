<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%

'======================================
'系统：微信扫码支付程序
'功能：微信扫码交易接口通知返回
'作者：麦奇
'Q  Q：24147824
'官网：http://www.payasp.com
'======================================

dim datapath,Connstr,Conn
datapath="data/db2.mdb"
on error resume next
Connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&server.mappath(datapath)
Set Conn=server.createobject("adodb.connection")
Conn.open Connstr

'本页为微信支付返回判断并入库，如需要变量请提前声明!
'本接口为用户支付成功后，微信后台通知结果的接口，包括Url上的参数及XML内的参数
'可通过产品唯一订单号和支付状态，确定用户支付成功后执行的一系列操作

dim xml_dom
set xml_dom=Server.CreateObject("MSXML2.DOMDocument")
xml_dom.load Request
	
dim return_code,return_msg,result_code,err_code_des
return_code=xml_dom.getelementsbytagname("return_code").item(0).text
if return_code="FAIL" then
	'协议级错误
	return_msg=xml_dom.getelementsbytagname("return_msg").item(0).text
else
	result_code=xml_dom.getelementsbytagname("result_code").item(0).text
	if result_code="FAIL" then
		'业务级错误
		err_code_des=xml_dom.getelementsbytagname("err_code_des").item(0).text
	else
		if return_code="SUCCESS" and result_code="SUCCESS" then
			'数据正常
			dim openid,is_subscribe,trade_type,bank_type,total_fee,transaction_id,out_trade_no,time_end,attach
			openid=xml_dom.getelementsbytagname("openid").item(0).text
			is_subscribe=xml_dom.getelementsbytagname("is_subscribe").item(0).text
			trade_type=xml_dom.getelementsbytagname("trade_type").item(0).text
			bank_type=xml_dom.getelementsbytagname("bank_type").item(0).text
			total_fee=xml_dom.getelementsbytagname("total_fee").item(0).text
			transaction_id=xml_dom.getelementsbytagname("transaction_id").item(0).text
			out_trade_no=xml_dom.getelementsbytagname("out_trade_no").item(0).text
			time_end=xml_dom.getelementsbytagname("time_end").item(0).Text
			attach=xml_dom.getelementsbytagname("attach").item(0).Text
			'当本接口网络出现问题或无法返回success字符时，微信将会在30分钟内重复8次后台通知，入库时需要判断是否已经入库，避免重复数据入库
			'下面开始写入自己的入库代码，此处已代表用户微信支付成功。
			call AddData()
		end if			
	end if
end if

dim returnXml
returnXml="<xml>"&_
		"<return_code><![CDATA[SUCCESS]]></return_code>"&_
		"</xml>"
		
		sub AddData()
	'当本接口网络出现问题或无法返回success字符时，微信将会在30分钟内重复8次后台通知，入库时需要判断是否已经入库，避免重复数据入库
	dim Rs,SQL
	SQL = "select * from [Order_Info] where transaction_id='"&transaction_id&"'"
	Set Rs = Server.CreateObject("Adodb.RecordSet")
	Rs.Open SQL,Conn,1,3
	if Rs.eof then
		Rs.Addnew
		Rs("openid")			= openid
		Rs("is_subscribe")		= is_subscribe
		Rs("trade_type")		= trade_type
		Rs("bank_type")			= bank_type
		Rs("total_fee")			= FormatNumber(total_fee*0.01,2,-1)
		Rs("transaction_id")	= transaction_id
		Rs("out_trade_no")		= out_trade_no
		Rs("time_end")			= time_end
		Rs("attach")			= attach
		Rs("AddTime")    		= Now()
		Rs.Update
	else
		Response.Write returnXml	'返回SUCCESS给微信
	end if
	Rs.Close
	Set Rs = Nothing
end Sub
%>