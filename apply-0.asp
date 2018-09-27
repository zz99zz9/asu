<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp?err='请先登录再继续操作'"
end if%>
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
    <div class="am-form" >
  <fieldset>
    <legend>申请须知</legend>
    
<form name="form2" id="form2" >
        <div class="am-form-group">
         欢迎您申请美国亚利桑那州立大学。申请前请认真阅读以下相关事项：<br>
<b>一、申请人员须认同并遵守的主要事项</b><br>
1. 须认同并严格遵守本网站报名协议。<br>
2. 提交的报名信息必须完整、准确。如信息虚假，将取消本季申请资格；<br>
3. 申请材料照片须为彩色、标准、清晰，照片底色背景为白色。照片将用于申请材料，用于认证系统，请上传时慎重选用。<br>
4. 申请时须使用护照号。<br>
5. 申请信息确认前应认真核查并确保证件类别、证件号码、姓名、国籍、申请专业、电话、毕业学校、电子邮箱、通讯地址和邮政编码等准确无误。报名信息经确认后，申请人员将不得自行修改。<br>
6.声明：本公司只是辅助申请人申请项目，申请者可通过我公司绿色通道进行申请，但根据申请人基础条件，本公司不保证申请人能百分之百获得录取。<br>
申请时如遇技术方面问题，请拨打技术支持电话：18611264866（微信同号）。<br><br>
<b>二、报名流程</b><br>
申请人员应按以下流程进行操作：<br>
1. 注册<br>
2. 材料预审<br>
3. 上传材料照片<br>
4. 进入报名系统，录入、检查并保存报名信息<br>
5. 确认报名信息<br>
7. 接受有关部门（或机构）的资格审查<br>
8. 网上支付申请费用<br><br>


<b>申请人员诚信承诺书</b><br>
我自愿报名申请美国亚利桑那州立大学项目，已知晓报名程序，已阅读《申请须知》和其他有关规定，本人在申请过程中将自觉遵守，并郑重承诺如下：<br>
1. 报名时所提供的身份证明、学历证书、成绩单等个人材料真实、准确、有效，如提供虚假证明或信息，本人愿承担由此所带来的一切后果。<br>
2. 已知晓并遵守申请条件、资格审查程序及相关要求，保证填报的信息完整、准确。<br>
3. 服从北京跃美艾得教育咨询有限公司人员安排、检查、监督和管理，自本承诺书签署后，将不再接受其它机构的申请服务。<br>
4. 严格遵守《申请须知》，若有违反，愿承担相关责任。
        </div>

      <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="save(1)">同意并继续</button>
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
<!--#include file="inc/upfile.asp"-->
<script type="text/javascript" src="xgwl/js/base.js"></script>
<script >
function save(e){
    location.href='apply-1.Asp'
}
</script>
</body>
</html>
