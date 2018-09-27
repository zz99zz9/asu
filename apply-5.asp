<!--#include file="inc/conn.asp"-->
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
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 50%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>资料上传</legend>

  <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        tjxpic=rs("tjxpic")
        js1pic=rs("js1pic")
        js2pic=rs("js2pic")
        js3pic=rs("js3pic")
        lwpic=rs("lwpic")

    end if
    Rs.close
set Rs=Nothing
    %>
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="tjxpic">
            <i class="am-icon-cloud-upload"></i> 上传推荐信照片</button>
            <input type="hidden" class="tjxpic upfile2" name="tjxpic"  value="<%=tjxpic%>">
            <span class="errinfo"></span>
            <div class="am-badge tjxpicok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="js1pic">
            <i class="am-icon-cloud-upload"></i> 上传自我介绍短视频1</button>
            <input type="hidden" class="js1pic upfile2" name="js1pic"  value="<%=js1pic%>">
            <span class="errinfo"></span>
            <div class="am-badge js1picok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="js2pic">
            <i class="am-icon-cloud-upload"></i> 上传自我介绍短视频2</button>
            <input type="hidden" class="js2pic upfile2" name="js2pic" value="<%=js2pic%>">
            <span class="errinfo"></span>
            <div class="am-badge js2picok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="js3pic">
            <i class="am-icon-cloud-upload"></i> 上传自我介绍短视频3</button>
            <input type="hidden" class="js3pic upfile2" name="js3pic"  value="<%=js3pic%>">
            <span class="errinfo"></span>
            <div class="am-badge js3picok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="lwpic">
            <i class="am-icon-cloud-upload"></i> 上传论文</button>
            <input type="hidden" class="lwpic upfile2" name="lwpic"  value="<%=lwpic%>">
            <span class="errinfo"></span>
            <div class="am-badge lwpicok" style="display:none;">ok</div>
        </div>



        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(4)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(6)">下一页</button>
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
<!--#include file="inc/upfile.asp"-->
<script type="text/javascript" src="xgwl/js/base.js"></script>
<script type="text/javascript" src="xgwl/ajax/apply-5.js"></script>
</body>
</html>
