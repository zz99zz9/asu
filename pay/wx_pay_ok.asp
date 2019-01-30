<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>微信公众号支付</title>
	<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />	
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<body style="background:#fff">
<div class="wxg">
	<div class="title">微信公众号支付</div>
	<div class="form">
		<div class="okpic"></div>
		<div class="okt">支付成功</div>
		<div class="okj">付款金额：<%=FormatNumber(request("total_fee")*0.01,2,-1)%>元</div>
		<div class="submit"><a href="#" class="ok_btn" onClick="kill()">完成</a></div>	
	</div>
	<div class="footer">QQ：24147824</div>
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