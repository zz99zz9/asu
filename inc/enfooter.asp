<div class="footer1 hidden-xs">
    <div class="container">
    <div class="row">
    <ul class="stools"><a href="http://p.qiao.baidu.com/cps/chat?siteId=10204422&userId=22769729" target="_blank" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'kefuButton', 1);"><i class="stico stico1 tra"></i><p class="tit">Live Chat</p><p class="txt">A Chat Assistant is available to help. Click here to start the session</p></a>
    <a href="tel:400-033-9909" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'dianhuaButton', 1);"><i class="stico stico2 tra"></i><p class="tit">Hotline</p><p class="txt"><em class="fz21p">400-033-9909</em><br>9:00 am - 6:00 pm on weekdays</p></a>
    <a href="mailto:info@hitpointcloud.com" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'emailButton', 1);"><i class="stico stico3 tra"></i><p class="tit">Email</p><p class="txt">info@hitpointcloud.com<br></p></a>
    <a href="engetdemo.asp" class="col-md-3" onClick="ga('send', 'event', 'shouye', 'xinxilan', 'xuqiuButton', 1);"><i class="stico stico4 tra"></i><p class="tit">DEMO</p><p class="txt">Fill in a quick form for free demo<br></p></a></ul>
</div>
</div>
</div>
<div class="footer2 hidden-xs">
    <div class="container">
    <div class="row">
    <ul class="fmenu">
    <a href="enaboutus.asp" class="tit">About us</a><br>
    <a href="enaboutus.asp">About company</a><br>
    <a href="encontact.asp">Contact us</a>
</ul>
<ul class="fmenu">
    <a href="encloud.asp" class="tit">Cloud Advisory</a><br>
    <a href="encloudDetail.asp?v=2">Consulting</a><br>
    <a href="encloudDetail.asp?v=3">BI</a><br>
     <a href="encloudDetail.asp?v=4">Localization</a><br>
        <a href="encloudDetail.asp?v=5">IT Advisory</a><br>
        <a href="encloudDetail.asp?v=6">Consultant</a>
</ul>
<ul class="fmenu">
    <a href="enremodeling.asp" class="tit">Industry Remodeling</a><br>
    <a href="enremodelingDetail.asp?v=7">Software/IT</a><br>
    <a href="enremodelingDetail.asp?v=8">Industry 4.0</a><br>
     <a href="enremodelingDetail.asp?v=9">High-Tech</a><br>
        <a href="enremodelingDetail.asp?v=10">Trading</a><br>
        <a href="enremodelingDetail.asp?v=11">Advertising</a><br>
         <a href="enremodelingDetail.asp?v=13">Professional Services</a><br>
          <a href="enremodelingDetail.asp?v=12">Healthcare and Life Sciences</a><br>
           <a href="enremodelingDetail.asp?v=14">Ecommerce</a><br>
            <a href="enremodelingDetail.asp?v=15">Consulting</a><br>
             <a href="enremodelingDetail.asp?v=16">Nonprofit</a>
</ul>
<ul class="fmenu">
    <a href="ensupport.asp" class="tit">Training & Support</a><br>
    <a href="ensupportDetail.asp?v=17">Customized Training</a><br>
    <a href="ensupportDetail.asp?v=18">Certification</a><br>
     <a href="ensupportDetail.asp?v=19">Support</a><br>
        <a href="ensupportDetail.asp?v=20">Data Migration</a>
</ul>
<ul class="fmenu">
    <a href="endevelopment.asp" class="tit">Customized Development</a><br>
    <a href="endevelopmentDetail.asp?v=21">Oracle PaaS</a><br>
    <a href="endevelopmentDetail.asp?v=22">SuiteCloud</a><br>
     <a href="endevelopmentDetail.asp?v=23">China Localization</a>
</ul>
<ul class="fmenu">
    <a href="enproducts.asp" class="tit">Products</a><br>
    <a href="productsDetail.asp?pid=63&bid=34">NetSuite</a><br>
    <a href="enproductsDetail.asp?pid=68&bid=37">Oracle</a><br>
     <a href="enproductsDetail.asp?pid=71&bid=39">NetDimensions</a>
</ul>
<ul class="fmenu">
    <a href="ennews.asp" class="tit">News</a><br>
    <a href="enknowledge.asp">Know-how</a><br>
    <a href="ennews.asp">Fresh news</a>
</ul>
<div class="fright">
<a href="encontact.asp" class="tit">Contact us</a>
<p>Hitpoint Cloud Co., Ltd.</p>
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
        Links：<%Set prs= Server.CreateObject("ADODB.Recordset")
        psql="select * From [links] where wid=6 order by oid desc,ID desc"
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
        %><br>Copyright © 2012-2018 By Hitpoint Cloud CO.,Ltd. All Rights Reserved. ICP:12043419-1
        </p>
        </div>
        </div>
        </div>
<div class="footerbtn hidden-lg hidden-md hidden-sm "><a href="tel:400-033-9909">Contact us</a><a href="engetdemo.asp">DEMO</a></div>
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