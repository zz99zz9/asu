<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
'======================================
'系统：微信扫码支付程序
'功能：微信扫码支付接口调试入口页面
'作者：麦奇
'Q  Q：24147824
'官网：http://www.payasp.com
'======================================
function GetOrderId()
	dim wxa,wxb
	randomize
	wxa=int(900*rnd)+100
	wxb=now()
	GetOrderId=year(wxb)&right("0"&month(wxb),2)&right("0"&day(wxb),2)&right("0"&hour(wxb),2)&right("0"&minute(wxb),2)&right("0"&second(wxb),2)&wxa
end function
%><!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>微信公众号支付</title>
	<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="stylesheet" type="text/css" href="images/style.css" media="all" />	
	<link rel="dns-prefetch" href="https://api.mch.weixin.qq.com/pay/unifiedorder" />
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<body style="background:#fff">
<div class="wxg">
	<div class="title">微信公众号支付</div>
	<div class="form">
		<form action="wx_pay.asp" method="post">
		<div class="input">
			<label>订单号</label>
			<input type="text" name="out_trade_no" value="<%=GetOrderId()%>">
		</div>
		<div class="input">
			<label>商品名称</label>
			<input type="text" name="body" value="测试产品">
		</div>
		<div class="input">
			<label>支付金额</label>
			<input type="text" name="total_fee" value="0.01">
			<p>最低支付为<font color="#FF00000">0.01</font>元</p>
		</div>
		<div class="submit"><input type="submit" value="微信支付"></div>
		<div class="submit"><a href="#" class="kill_btn" onClick="kill()">放弃支付</a></div>			
		</form>	
	</div>
	<div class="footer">QQ：24147824 | <script src="https://s19.cnzz.com/z_stat.php?id=1263104899&web_id=1263104899" language="JavaScript"></script></div>
</div>
<script type="text/javascript">	
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