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
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 1%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>基本信息</legend>
<form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="cname" placeholder="中文名" name="sfzp2">
        </div>

        <div class="am-form-group">
            <input type="text" class="fname" placeholder="First name">
        </div>

        <div class="am-form-group">
            <input type="text" class="lname" placeholder="Last name">
        </div>

        <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
            <input type="text" class="am-form-field bdate" placeholder="请选择您的生日" data-am-datepicker readonly required >
        </div>
        <div class="am-form-group">
            <input type="text" class="sfz" id="" placeholder="身份证号码">
        </div>

            <div class="am-form-group  am-u-sm-6" style="padding-left:0px">
          
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="sfzpic1">
            <i class="am-icon-cloud-upload"></i> 上传身份证背面照片</button>
            <input type="hidden" class="sfzpic1 upfile2" name="sfzpic1" >
            <div class="am-badge sfzpic1ok" style="display:none;">ok</div>
        </div>
<div class="am-form-group am-u-sm-6">
          
        <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="sfzpic2">
            <i class="am-icon-cloud-upload"></i> 上传身份证背面照片</button>
        <input type="hidden" class="sfzpic2 upfile2" name="sfzpic2" >
        <div class="am-badge sfzpic2ok" style="display:none;">ok</div>
            
        </div>
        <div class="am-form-group">
            <input type="text" class="hz" id="" placeholder="护照号码">
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="hzpic">
            <i class="am-icon-cloud-upload"></i> 上传身份证背面照片</button>
            <input type="hidden" class="hzpic upfile2" name="hzpic" >
            <div class="am-badge hzpicok" style="display:none;">ok</div>
        </div>

        <div class="am-checkbox">
            <label>
                <input type="checkbox" id="usa" class="usa">本人是美国公民
            </label>
        </div>

        <div class="am-form-group">
            <input type="text" class="cc"  placeholder="国家+城市">
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
                <div class="am-form-group">
            <input type="text" class="haddress" placeholder="推荐人/推荐公司/推荐学校">
        </div>
<input type="hidden" class="step" value="1">

        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="save(2)">下一步</button>
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
<!--上传用隐式表单-->
<form name="form1" method="post" id="form1" action="upload.asp" enctype="multipart/form-data"  onSubmit="return mysub()" target="blank" style="display:none;">
        <input type="file" id="file1" name="file1" >
      <input type="text" name="file2" class="file2" value="">
</form>
<script>
$(".upfile").click(function () {
var con = $(this).attr("data-id");
con=$(".file2").val(con)
  $("#file1").click();
   $("#file1").on("change",function(){
		 document.getElementById("form1").submit(); 
	 });
});
</script>
<script type="text/javascript" src="xgwl/ajax/apply-1.js"></script>
</body>
</html>
