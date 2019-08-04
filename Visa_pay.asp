<%title="签证中心"%>
<%function GetOrderId()
	dim wxa,wxb
	randomize
	wxa=int(900*rnd)+100
	wxb=now()
	GetOrderId=year(wxb)&right("0"&month(wxb),2)&right("0"&day(wxb),2)&right("0"&hour(wxb),2)&right("0"&minute(wxb),2)&right("0"&second(wxb),2)&wxa
end function%>
 <!--#include file="inc/header.asp">
 <link rel="dns-prefetch" href="https://api.mch.weixin.qq.com/pay/unifiedorder" />
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 100%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>申请完成</legend>


<form action="pay/wx_pay.asp" method="post">
		<div class="input">
			<label>签证提交成功，您的签证信息我们已经收到，我们将尽快和您取得联系！</label>
			<a href="member.Asp" class="am-btn am-btn-default am-u-sm-12 " >返回个人中心</a>
		</div>


		
		
		</form>	

  </fieldset>
   </div>

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
<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">
    <small></small>
  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->

<!--#include file="inc/footer.asp"-->
</body>
</html>
