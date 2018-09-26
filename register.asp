<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ASU申请表</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <!--<link rel="icon" type="image/png" href="xgwl/AmazeUI-2.7.2/assets/i/favicon.png">-->

  <!-- Add to homescreen for Chrome on Android -->
  <meta name="mobile-web-app-capable" content="yes">
  <!--<link rel="icon" sizes="192x192" href="xgwl/AmazeUI-2.7.2/assets/i/app-icon72x72@2x.png">-->

  <!-- Add to homescreen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
<!--  <link rel="apple-touch-icon-precomposed" href="xgwl/AmazeUI-2.7.2/assets/i/app-icon72x72@2x.png">-->

  <!-- Tile icon for Win8 (144x144 + tile color) -->
  <!--<meta name="msapplication-TileImage" content="xgwl/AmazeUI-2.7.2/assets/i/app-icon72x72@2x.png">-->
  <meta name="msapplication-TileColor" content="#0e90d2">

  <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
  <!--
  <link rel="canonical" href="http://www.example.com/">
  -->

  <link rel="stylesheet" href="xgwl/AmazeUI-2.7.2/assets/css/amazeui.min.css">
  <link rel="stylesheet" href="xgwl/AmazeUI-2.7.2/assets/css/app.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a
  href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<!--#include file="inc/menu.asp"-->
<!-- 页面内容 开发时删除 -->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>用户注册</legend>
<form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="uname" placeholder="用户名" name="sfzp2">
        </div>
        <div class="am-form-group">
            <input type="text" class="upwd" id="" placeholder="密码">
        </div>
        <div class="am-form-group">
            <input type="text" class="upwd2" id="" placeholder="确认密码">
        </div>
        <div class="am-form-group">
            <input type="text" class="cname" placeholder="姓名">
        </div>
        <div class="am-form-group">
            <input type="text" class="utel" placeholder="手机号">
        </div>
                <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
            <input type="text" class="am-form-field bdate" placeholder="请选择您的生日" data-am-datepicker readonly required >
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">性别：</label>
            <label class="am-radio-inline">
                <input type="radio"  value="男" name="sex"> 男
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="女" name="sex"> 女
            </label>
        </div>

        <div class="am-checkbox" style="display:none;">
            <label>
                <input type="checkbox" id="usa" class="usa"> 同意
            </label>
        </div>

                <div class="am-form-group">
            <input type="text" class="recommend" placeholder="推荐人/推荐公司/推荐学校">
        </div>
<input type="hidden" class="step" value="1">

        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="register('<%=url%>')">立即注册</button>
        <br><br>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="memberlogin.asp">返回登录</a>
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

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="xgwl/AmazeUI-2.7.2/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<!--<![endif]-->
<script src="xgwl/AmazeUI-2.7.2/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="xgwl/js/base.js"></script>
<script type="text/javascript" src="xgwl/ajax/register.js"></script>
</body>
</html>
