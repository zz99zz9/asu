<div class="footer1 hidden-xs">
    <div class="container">
    <div class="row">

        <ul class="stools"><a href="http://p.qiao.baidu.com/cps/chat?siteId=10204422&userId=22769729" target="_blank" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'kefuButton', 1);"><i class="stico stico1 tra"></i><p class="tit">在线客服</p><p class="txt">需要服务或支持？马上联系客服进行<br>在线交流，还有专家为您解答</p></a>
        <a href="tel:400-033-9909" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'dianhuaButton', 1);"><i class="stico stico2 tra"></i><p class="tit">咨询电话</p><p class="txt"><em class="fz21p">400-033-9909</em><br>周一至周五9:00 ~ 18:00</p></a>
        <a href="mailto:info@hitpointcloud.com" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'emailButton', 1);"><i class="stico stico3 tra"></i><p class="tit">电子邮件</p><p class="txt">info@hitpointcloud.com<br>也可以将您的问题发送邮件给我们</p></a>
        <a href="getdemo.asp" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'xuqiuButton', 1);"><i class="stico stico4 tra"></i><p class="tit">安排演示</p><p class="txt">您想看产品演示？<br>请告诉我们，我们第一时间与您联系</p></a></ul>
</div>
</div>
</div>
<div class="footer2 hidden-xs">
    <div class="container">
    <div class="row">
    <ul class="fmenu">
    <a href="aboutus.asp" class="tit">关于我们</a><br>
    <a href="aboutus.asp">公司介绍</a><br>
    <a href="contact.asp">联系我们</a>
</ul>
<ul class="fmenu">
    <a href="cloud.asp" class="tit">云计算咨询</a><br>
    <a href="cloudDetail.asp?v=2">业务咨询</a><br>
    <a href="cloudDetail.asp?v=3">商业智能</a><br>
     <a href="cloudDetail.asp?v=4">中国落地</a><br>
        <a href="cloudDetail.asp?v=5">IT架构咨询</a><br>
        <a href="cloudDetail.asp?v=6">顾问团队</a>
</ul>
<ul class="fmenu">
    <a href="remodeling.asp" class="tit">行业重塑</a><br>
    <a href="remodelingDetail.asp?v=7">IT/软件/互联网</a><br>
    <a href="remodelingDetail.asp?v=8">制造业</a><br>
     <a href="remodelingDetail.asp?v=9">高科技/新材料</a><br>
        <a href="remodelingDetail.asp?v=10">贸易/批发/零售</a><br>
        <a href="remodelingDetail.asp?v=11">媒体/广告/出版</a><br>
         <a href="remodelingDetail.asp?v=13">贸易/批发/零售</a><br>
          <a href="remodelingDetail.asp?v=12">专业服务</a><br>
           <a href="remodelingDetail.asp?v=14">电子商务</a><br>
            <a href="remodelingDetail.asp?v=15">咨询/教育/培训</a><br>
             <a href="remodelingDetail.asp?v=16">非营利组织</a>
</ul>
<ul class="fmenu">
    <a href="support.asp" class="tit">培训支持</a><br>
    <a href="supportDetail.asp?v=17">个性化培训</a><br>
    <a href="supportDetail.asp?v=18">认证培训</a><br>
     <a href="supportDetail.asp?v=19">运维支持</a><br>
        <a href="supportDetail.asp?v=20">系统致用</a>
</ul>
<ul class="fmenu">
    <a href="development.asp" class="tit">定制开发</a><br>
    <a href="developmentDetail.asp?v=21">Oracle PaaS平台</a><br>
    <a href="developmentDetail.asp?v=22">SuiteCloud平台</a><br>
     <a href="developmentDetail.asp?v=23">中国本土化</a>
</ul>
<ul class="fmenu">
    <a href="products.asp" class="tit">产品</a><br>
    <a href="productsDetail.asp?pid=63&bid=34">NetSuite</a><br>
    <a href="productsDetail.asp?pid=68&bid=37">Oracle云</a><br>
     <a href="productsDetail.asp?pid=71&bid=39">NetDimensions</a>
</ul>
<ul class="fmenu">
    <a href="news.asp" class="tit">新闻资讯</a><br>
    <a href="knowledge.asp">知识库</a><br>
    <a href="news.asp">新鲜事</a>
</ul>
<div class="fright">
<a href="contact.asp" class="tit">联系我们</a>
<p>上海网杉信息技术有限公司</p>
<ul class="fcontact">
<li><i class="fcico fctel "></i><a href="tel:400-033-9909">400-033-9909</a></li>
<li><i class="fcico fcmail"></i><a href="mailto:info@hitpointcloud.com">info@hitpointcloud.com</a></li>

</ul>
<img class="qrpic" src="xgwl/img/qr.gif">
</div>
    </div>
    </div>
    </div>
    <div class="footer3">
        <div class="container">
        <div class="row">
        <p>
        友情链接：<%Set prs= Server.CreateObject("ADODB.Recordset")
        psql="select * From [links] where wid=5 order by oid desc,ID desc"
        prs.open psql,conn,1,1
        i=0%>
        <%do while not prs.eof

        if i=0 then
        kong=""
        else
        kong="&nbsp;&nbsp;|&nbsp;&nbsp;"
        end if
       %>
       <%=kong%><a href="<%=prs("url")%>" target="_blank"><%=prs("stit")%></a>
    
         <%
        	i=i+1

        	     prs.movenext
        	loop
        prs.close
        set prs=nothing
        %><br>Copyright © 2012-2018 By Hitpoint Cloud CO.,Ltd. All Rights Reserved. <a href="http://www.miitbeian.gov.cn" target="_blank">沪ICP备12043419号-1</a>
        </p>
        </div>
        </div>
        </div>
<div class="footerbtn hidden-lg hidden-md hidden-sm "><a href="tel:400-033-9909">联系我们</a><a href="getdemo.asp">获取演示</a></div>
<!--底部加载-->

<script src="xgwl/js/lib/jquery.js"></script>

<script src="xgwl/js/lib/bootstrap.min.js"></script>
<script src="xgwl/js/lib/wow.min.js"></script>
<script>
if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
	new WOW().init();
};
</script>
<script src="xgwl/js/base.js"></script>