<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta name="renderer" content="webkit">
<%dim skey
skey=request.QueryString("key")
'设置TDK
if tdkid="" then tdkid=1
tdksql="select * From [tdk] where id="&tdkid
Set tdkrs= Server.CreateObject("ADODB.Recordset")
tdkrs.open tdksql,conn,1,1
if tdkrs.bof and tdkrs.eof then
t=SiteTitle
d=siteKey
k=SiteCont
else
t=tdkrs("t")
if key<>"" and key<>"undefined" then
t=key&"-"&t
end if
d=tdkrs("d")
k=tdkrs("k")
end if%>
<%if v<>"" then%>
<title><%call showtdk("t",v)%></title>
	<meta name="keywords" content="<%call showtdk("k",v)%>" />
	<meta name="description" content="<%call showtdk("d",v)%>" />
<%else%>
<title><%if title<>"" then
 response.write title
 else
 response.write t
 end if
%></title>
	<meta name="keywords" content="<%=k%>" />
	<meta name="description" content="<%=d%>" />
	<%end if%>
<link rel="icon" href="icon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="xgwl/css/lib/bootstrap.min.css" />
<link rel="stylesheet" href="xgwl/css/lib/animate.css"/>
<link rel="stylesheet" href="xgwl/css/xgwl.css"/>
<link rel="stylesheet" href="xgwl/css/list.css"/>
<link rel="stylesheet" href="xgwl/css/base.css"/>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="xgwl/css/lib/html5shiv.min.js"></script>
      <script src="xgwl/css/lib/respond.min.js"></script>
    <![endif]-->
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?e4318246be88e1eaa7bd8d9b79312c91";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
 
  ga('create', 'UA-42083958-1', 'auto');
  ga('send', 'pageview');
 
</script>
</head>

<body id="hitpoint" style="overflow-x:hidden;">
<!--导航 navbar-fixed-top-->
<nav class="navbar my-navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="/"><img src="xgwl/img/logo.svg" /></a> </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
      <ul class="nav navbar-nav XGnav" id=".pc-nav">
        <li class="active XGli"><a href="index.asp" class="s_link">首页</a></li>
                <li class="dropdown XGli"><a href="cloud.asp" class="dropdown-toggle s_link" data-toggle="dropdown">云计算咨询</a>
                  <ul class="dropdown-menu">
                  <!--  <li><a href="cloudDetail.asp?v=1">概览</a></li>-->
                    <li><a href="cloudDetail.asp?v=2">业务咨询</a></li>
                    <li><a href="cloudDetail.asp?v=3">商业智能</a></li>
                     <li><a href="cloudDetail.asp?v=4">中国落地</a></li>
                      <li><a href="cloudDetail.asp?v=5">IT架构咨询</a></li>
                       <li><a href="cloudDetail.asp?v=6">顾问团队</a></li>
 <!--                      <li><a href="cloudDetail.asp?v=7">资讯动态</a></li>-->
                  </ul>
                </li>
        <li class="XGli"><a href="remodeling.asp" class="s_link">行业重塑</a></li>

        <li class="XGli"><a href="support.asp" class="dropdown-toggle s_link" >培训支持</a> </li>
        <li class="XGli"><a href="development.asp" class="dropdown-toggle s_link" >定制开发</a> </li>
                <li class="XGli"><a href="cases.asp" class="dropdown-toggle s_link">案例</a></li>
           <li class="dropdown XGli"><a href="products.asp" class="dropdown-toggle s_link" data-toggle="dropdown">产品</a>
                  <ul class="dropdown-menu">
                    <li><a href="productsDetail.asp?pid=63&bid=34">NetSuite</a></li>
                    <li><a href="productsDetail.asp?pid=68&bid=37">Oracle云</a></li>
                    <li><a href="productsDetail.asp?pid=71&bid=39">NetDimensions</a></li>
                  </ul>
                </li>
      </ul>
      <a class="navbar-language hidden-xs" href="enindex.asp"><i class="pico pico-en"></i>English</a>
        <span class="navbar-search hidden-xs"><a href="search.asp"><i class="pico pico-mag"></i></a></span>
    </div>
  </div>
</nav>
<!--pc端二级菜单-->
<div class="pc-nav"></div>
<div class="pc-nav">
<ul class="pc-menu2 container">

                   <!-- <a href="cloudDetail.asp?v=1">概览</a></li>-->
                   <a href="cloudDetail.asp?v=2">业务咨询</a>
                    <a href="cloudDetail.asp?v=3">商业智能</a>
                     <a href="cloudDetail.asp?v=4">中国落地</a>
                      <a href="cloudDetail.asp?v=5">IT架构咨询</a>
                       <a href="cloudDetail.asp?v=6" class="menu2last">顾问团队</a>
                   <!--     <a href="cloudDetail.asp?v=7" class="menu2last">资讯动态</a>-->
                  </ul>
</div>
<div class="pc-nav"></div>
<div class="pc-nav">
<ul class="pc-menu2 container">

    <a href="training.asp">培训认证</a><!--<a href="supportDetail.asp?v=17">个性化培训</a> supportDetail.asp?v=18        <a href="supportDetail.asp?v=20" class="menu2last">系统致用</a>-->
     <a href="supportDetail.asp?v=19" class="menu2last">运维支持</a>

</ul>
</div>
<div class="pc-nav">
<ul class="pc-menu2 container">
 <a href="developmentDetail.asp?v=21">Oracle PaaS平台</a>
    <a href="developmentDetail.asp?v=22">SuiteCloud平台</a>
     <a href="developmentDetail.asp?v=23" class="menu2last">中国本土化</a>
     </ul>
</div>
<div class="pc-nav"></div>
<div class="pc-nav">
    <div class="pc-menu6">
    <ul class="menu6list TABa" id=".menu6txt">
    <a href="productsDetail.asp?pid=63&bid=34" class="on">NetSuite<em>&gt;</em></a>
    <a href="productsDetail.asp?pid=68&bid=37">Oracle云<em>&gt;</em></a>
    <a href="productsDetail.asp?pid=71&bid=39">NetDimensions<em>&gt;</em></a></ul>
    <!--第一个产品 -->
    <div class="menu6txt" style="display:block;">
    针对中小型企业的原生云ERP，在全球160多个国家及地区有40000+个公司或组织正在使用NetSuite。
    <ul class="m6list">
    <a href="productsDetail.asp?pid=63&bid=34" class="tra">NetSuite<br>ERP</a>
    <a href="productsDetail.asp?pid=65&bid=34" class="tra">NetSuite<br>CRM</a>
    <a href="productsDetail.asp?pid=49&bid=34" class="tra">NetSuite<br>SRP</a>
    <a href="productsDetail.asp?pid=64&bid=34" class="tra">NetSuite<br>Ecommerce</a>
    <a href="productsDetail.asp?pid=62&bid=34" class="tra">NetSuite<br>OneWorld</a>
    </ul>
    <a href="productsDetail.asp?pid=63&bid=34" class="m6more">进一步了解 &gt;</a>
</div>
<!--第2个产品 -->
    <div class="menu6txt">
     针对大中型企业的云ERP，可提供市场上最全面的解决方案。
        <ul class="m6list">
            <a href="productsDetail.asp?pid=68&bid=37" class="tra">Oracle云<br>ERP</a>
            <a href="productsDetail.asp?pid=67&bid=37" class="tra">Oracle云<br>CX</a>
            <a href="productsDetail.asp?pid=66&bid=37" class="tra">Oracle云<br>HR</a>
        </ul>
        <a href="productsDetail.asp?pid=68&bid=37" class="m6more">进一步了解 &gt;</a>
</div>
    <!--第3个产品 -->
    <div class="menu6txt">
        企业级人才管理系统，为企业提供个性化的学习系统解决方案，提升员工绩效及有效管理企业的合规培训流程。
            <ul class="m6list">
                  <!--  <a href="enproductsDetail.asp?pid=69&bid=39" class="tra">NetDimensions<br>Talent Suite</a>-->
<a href="productsDetail.asp?pid=71&bid=39" class="tra">NetDimensions<br>产品功能</a>
<a href="productsDetail.asp?pid=72&bid=39" class="tra">NetDimensions<br>行业应用</a>
<a href="productsDetail.asp?pid=73&bid=39" class="tra">NetDimensions<br>解决方案</a>
<a href="productsDetail.asp?pid=74&bid=39" class="tra">NetDimensions<br>荣誉资质</a>
            </ul>
            <a href="productsDetail.asp?pid=71&bid=39" class="m6more">进一步了解 &gt;</a>
</div>
    </div>
</div>