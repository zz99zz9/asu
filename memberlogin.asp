<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>会员登录</title>

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
    <link rel="stylesheet" href="xgwl/css/base.css">
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
    <legend>用户登录</legend>
<form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="uname" placeholder="用户名" name="sfzp2">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="password" class="upwd" id="" placeholder="密码">
            <span class="errinfo"></span>
        </div>

<input type="hidden" class="step" value="1">
        
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="mlogin('<%=url%>')">立即登录</button>
        <br><br>
        <a type="button" class="am-btn am-btn-default am-u-sm-12 " href="register.asp">新用户注册</a>
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
<script type="text/javascript" src="xgwl/ajax/memberlogin.js"></script>
</body>
</html>