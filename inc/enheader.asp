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
end if
'如果是详情页

%><%if v<>"" then%>
<title><%call showtdk("te",v)%></title>
	<meta name="keywords" content="<%call showtdk("ke",v)%>" />
	<meta name="description" content="<%call showtdk("de",v)%>" />
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
<link rel="stylesheet" href="xgwl/css/enbase.css"/>
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
      <a class="navbar-brand" href="/enindex.asp"><img src="xgwl/img/logo.svg" /></a> </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
      <ul class="nav navbar-nav XGnav" id=".pc-nav">
        <li class="active XGli"><a href="enindex.asp" class="s_link">Home</a></li>
                <li class="dropdown XGli"><a href="encloud.asp" class="dropdown-toggle s_link" data-toggle="dropdown">Consulting</a>
                  <ul class="dropdown-menu">
                  <!--  <li><a href="encloudDetail.asp?v=1">概览</a></li>-->
                    <li><a href="encloudDetail.asp?v=2">Consulting</a></li>
                    <li><a href="encloudDetail.asp?v=3">BI</a></li>
                     <li><a href="encloudDetail.asp?v=4">Localization</a></li>
                      <li><a href="encloudDetail.asp?v=5">IT Advisory</a></li>
                       <li><a href="encloudDetail.asp?v=6">Consultant</a></li>
                       <!-- <li><a href="encloudDetail.asp?v=7">资讯动态</a></li>-->
                  </ul>
                </li>
        <li class="XGli"><a href="enremodeling.asp" class="s_link">Solutions</a></li>

        <li class="XGli"><a href="ensupport.asp" class="dropdown-toggle s_link" >Training & Support</a> </li>
        <li class="XGli"><a href="endevelopment.asp" class="dropdown-toggle s_link" >Development</a> </li>
                <li class="XGli"><a href="encases.asp" class="dropdown-toggle s_link">Customers</a></li>
           <li class="dropdown XGli"><a href="enproducts.asp" class="dropdown-toggle s_link" data-toggle="dropdown">Products</a>
                  <ul class="dropdown-menu">
                    <li><a href="enproductsDetail.asp?pid=63&bid=34">NetSuite</a></li>
                    <li><a href="enproductsDetail.asp?pid=68&bid=37">Oracle</a></li>
                    <li><a href="enproductsDetail.asp?pid=69&bid=39">NetDimension</a></li>
                  </ul>
                </li>
      </ul>
      <a class="navbar-language hidden-xs" href="index.asp"><i class="pico pico-cn"></i>中文</a>
       <span class="navbar-search hidden-xs"><a href="ensearch.asp"><i class="pico pico-mag"></i></a></span>
    </div>
  </div>
</nav>
<!--pc端二级菜单-->
<div class="pc-nav"></div>
<div class="pc-nav">
<ul class="pc-menu2 container">

                   <!-- <a href="cloudDetail.asp?v=1">概览</a></li>-->
                   <a href="encloudDetail.asp?v=2">Consulting</a>
                    <a href="encloudDetail.asp?v=3">BI</a>
                     <a href="encloudDetail.asp?v=4">Localization</a>
                      <a href="encloudDetail.asp?v=5">IT Advisory</a>
                       <a href="encloudDetail.asp?v=6" class="menu2last">Consultant</a>
                   <!--     <a href="cloudDetail.asp?v=7" class="menu2last">资讯动态</a>-->
                  </ul>
</div>
<div class="pc-nav"></div>
<div class="pc-nav">
<ul class="pc-menu2 container">
<a href="ensupportDetail.asp?v=17">Customized Training</a>
    <a href="ensupportDetail.asp?v=18">Certification</a>
     <a href="ensupportDetail.asp?v=19">Support</a>
        <a href="ensupportDetail.asp?v=20" class="menu2last">Data Migration</a>
</ul>
</div>
<div class="pc-nav">
<ul class="pc-menu2 container">
 <a href="endevelopmentDetail.asp?v=21">Oracle PaaS</a>
    <a href="endevelopmentDetail.asp?v=22">SuiteCloud</a>
     <a href="endevelopmentDetail.asp?v=23" class="menu2last">China Localization</a>
</ul>
</div>
<div class="pc-nav"></div>
<div class="pc-nav">
    <div class="pc-menu6">
    <ul class="menu6list TABa" id=".menu6txt">
    <a href="enproductsDetail.asp?pid=63&bid=34" class="on">NetSuite<em>&gt;</em></a>
    <a href="enproductsDetail.asp?pid=68&bid=37">Oracle<em>&gt;</em></a>
    <a href="enproductsDetail.asp?pid=69&bid=39">NetDimensions<em>&gt;</em></a></ul>
    <!--第一个产品 -->
    <div class="menu6txt" style="display:block;">
    NetSuite is the world’s most deployed cloud Enterprise Resource Planning (ERP) solution, used by more than 40,000 organizations across 160+ countries.
    <ul class="m6list">
    <a href="enproductsDetail.asp?pid=63&bid=34" class="tra">NetSuite<br>ERP</a>
    <a href="enproductsDetail.asp?pid=65&bid=34" class="tra">NetSuite<br>CRM</a>
    <a href="enproductsDetail.asp?pid=49&bid=34" class="tra">NetSuite<br>SRP</a>
    <a href="enproductsDetail.asp?pid=64&bid=34" class="tra">NetSuite<br>Ecommerce</a>
    <a href="enproductsDetail.asp?pid=62&bid=34" class="tra">NetSuite<br>OneWorld</a>
    </ul>
    <a href="enproductsDetail.asp?pid=63&bid=34" class="m6more">Learn More &gt;</a>
</div>
<!--第2个产品 -->
    <div class="menu6txt">
    Reimagine your business, processes, and experiences. Oracle Cloud provide you with the speed and innovation of best-of-breed cloud software in a complete, secure, and connected cloud suite.
        <ul class="m6list">
            <a href="enproductsDetail.asp?pid=68&bid=37" class="tra">Oracle<br>ERP</a>
            <a href="enproductsDetail.asp?pid=67&bid=37" class="tra">Oracle<br>CX</a>
            <a href="enproductsDetail.asp?pid=66&bid=37" class="tra">Oracle<br>HR</a>
        </ul>
        <a href="enproductsDetail.asp?pid=68&bid=37" class="m6more">Learn More &gt;</a>
</div>
    <!--第3个产品 -->
    <div class="menu6txt">
         NetDimensions Talent Suite is a state-of-the-art Talent Management System (TMS) for the enterprise, helping organizations worldwide achieve productivity & efficiency improvements.
            <ul class="m6list">
                   <!-- <a href="enproductsDetail.asp?pid=69&bid=39" class="tra">NetDimensions<br>Talent Suite</a>-->
<a href="enproductsDetail.asp?pid=71&bid=39" class="tra">NetDimensions<br>Functions</a>
                        <a href="enproductsDetail.asp?pid=72&bid=39" class="tra">NetDimensions<br>Industry Applications</a>
                        <a href="enproductsDetail.asp?pid=73&bid=39" class="tra">NetDimensions<br>Solutions</a>
                        <a href="enproductsDetail.asp?pid=74&bid=39" class="tra">NetDimensions<br>Awards</a>
            </ul>
            <a href="enproductsDetail.asp?pid=69&bid=39" class="m6more">Learn More &gt;</a>
</div>
    </div>
</div>