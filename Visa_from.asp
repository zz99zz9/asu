 <%cid=Request.QueryString("cid")%>
 <!--#include file="inc/conn.asp"-->
  <!--#include file="inc/function.asp"-->
 <!--#include file="inc/inc.asp"-->
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<style>
.am-control-nav{display:none;}
body{background:#f2f2f2;}
.am-margin-top-15{background:#fff;padding:10px;width:90%;margin-left:5%;margin-top:-40px;border-radius:5px;box-shadow: 0px 3px 3px rgba(0,0,0,0.1);}
.vul{background-color:#fff;}
.vtit{padding-top:10px;padding-left:20px;color:#831c3a;font-weight:bold;}
.guojia{margin-bottom:1em;margin-top:1em;}
.vli{width:100%;height:100px;display:block;background-size:cover;text-align:center;line-height:100px;color:#fff;font-weight:blod;}
.h1{text-align:center;font-size:1.2em;color:#831c3a;}
.vtxt{padding:20px;}
</style>
<div class="am-slider am-slider-default" data-am-flexslider id="demo-slider-0">
  <ul class="am-slides">
    <li><img src="xgwl/img/ad1.png" /></li>
    <li><img src="xgwl/img/ad2.png" /></li>
    <li><img src="xgwl/img/ad3.png" /></li>
  </ul>
</div>
<div class="am-slider am-margin-top-15" data-am-flexslider id="demo-slider-0">
<p class="h1">一对一指导及预约签证</p>
<hr>*F1签证服务项目：<br><br>

1、DS160表格填写<br>
2、CGI账号注册、交费、预约<br>
3、Sevis网上交费（需申请人提供信用卡信息）、生成打印收据<br>
4、简单面谈指导（基本信息）<br><br><br>

*访问签证服务项目：<br><br>

1、DS160表格填写<br>
2、CGI账号注册、交费、预约<br>
3、简单面谈指导（基本信息）
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>签证表单</legend>
   
<form name="form2" id="form2" >

        <div class="am-form-group">
            <input type="text" class="fname" placeholder="First Name" >
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="lname" placeholder="Last Name">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="cname" placeholder="姓名">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="hz" placeholder="护照号">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="email" placeholder="电子邮箱">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="tel" placeholder="联系电话">
            <span class="errinfo"></span>
        </div>
        <div class="am-checkbox"><label><input type="checkbox"> 签约电子合同</label></div>

<input type="hidden" class="step" value="1">
        <input type="hidden" class="cid" value="<%=cid%>">
        <input type="hidden" class="uid" value="<%=request.cookies("uid")%>">
        <input type="hidden" class="action" value="add">
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="save()">提交表单</button>

        </form>
  </fieldset>
   </div>

  </div>


<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">
    <small></small>
  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
<script type="text/javascript" src="xgwl/ajax/visa.js"></script>
</body>
</html>
