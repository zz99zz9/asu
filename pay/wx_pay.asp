<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="lib/wx_config.asp"-->
<!--#include file="lib/wx_md5.asp"-->
<!--#include file="lib/wx_class.asp"-->
<%  
'======================================
'系统：微信公众号支付程序
'功能：微信公众号支付确认订单并支付
'作者：麦奇
'Q  Q：24147824
'官网：http://www.payasp.com
'======================================
dim out_trade_no,body,total_fee,openid,prepay_id,paySign,attach_my
total_fee        = request("total_fee")        '获取金额加以判断
if not IsNumeric(total_fee) then
 	response.Write "<script>alert('金额格式填写错误！');history.go(-1);</script>"
  	response.End()
end if
if total_fee=0 or total_fee<0 then
 	response.Write "<script>alert('金额必须大于0！');history.go(-1);</script>"
  	response.End()
end if
out_trade_no     = request("out_trade_no")     '传递订单号
body             = request("body")             '传递名称说明
total_fee        = total_fee*100               '传递金额
attach_my        = request("body")   '传递自用参数，供回调更新数据库
redirect_url     = redirect_url&"wx_pay.asp?out_trade_no="&out_trade_no&"&body="&body&"&total_fee="&FormatNumber(total_fee/100,2,-1)&""
openid           = GetOpenId
prepay_id        = get_prepay_id
paySign          = get_paySign()
%><!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>微信公众号支付</title>
	<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="stylesheet" type="text/css" href="images/style.css" media="all" />	
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<body style="background:#fff">
<div class="wxg">
	<div class="title">微信支付明细</div>
	<div class="form">
		<div class="mx">
			<p>订单号：<em><%=out_trade_no%></em></p>
			<p>商品名称：<em><%=body%></em></p>
			<p>支付金额：<em><%=FormatNumber(total_fee/100,2,-1)%>元</em></p>
		</div>
		<div class="submit"><a href="#" class="ok_btn" onClick="pay()">确认支付</a></div>	
		<div class="submit"><a href="#" class="kill_btn" onClick="kill()">放弃支付</a></div>			
		</form>	
	</div>
	
</div>
<script type="text/javascript">			
var prepay_id="<%=prepay_id%>";
var paySign="<%=paySign%>";
function onBridgeReady()
{	
	WeixinJSBridge.invoke('getBrandWCPayRequest', {
		"appId": "<%=getAppId%>",
		"timeStamp": "<%=timeStamp%>",
		"nonceStr": "<%=nonce_str%>",
		"package": "prepay_id=<%=prepay_id%>",
		"signType": "MD5",
		"paySign": "<%=paySign%>"
	},
	function(res) {
		if (res.err_msg == "get_brand_wcpay_request:ok") {
			alert ("支付成功");
			self.location='wx_pay_ok.asp?body=<%=body%>&total_fee=<%=total_fee%>&out_trade_no=<%=out_trade_no%>'; 
		} else {
			alert("支付失败");
		}
	});
};
function pay(){
	if (typeof WeixinJSBridge == "undefined"){
		if( document.addEventListener ){
			document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
		}else if (document.attachEvent){
			document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
			document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
		}
	}else{
		onBridgeReady();
	}
};
wx.config({
	debug: false,
	jsApiList: ['hideOptionMenu','showOptionMenu','closeWindow']
});
wx.ready(function(){
	wx.hideOptionMenu();
});
function kill() {
	wx.closeWindow()
};
</script>
</body>
</html>