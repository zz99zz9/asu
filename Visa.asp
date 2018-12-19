<!--#include file="inc/conn.asp"-->
<%title="签证中心"%>
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
<hr>ASUMENTOR在帮助学生留学申请的同时，下设“签证辅导中心”提供专业签证服务，致力于全面帮助留学生和留学家庭! 美国学生发展咨询委员会长期以来与使馆签证处保持着良好的联系与交流，掌握签证的最新信息和了解更多使馆政策，为学生提供“一对一培训指导” ，为中国公民出行各国打造最安全的稳靠一站式服务。
</div>
<div class="am-g am-g-fixed am-margin-top vul">
  <div class="am-u-sm-12 vtit">
  | 申请签证
  </div>
</div>
<div class="am-g am-g-fixed  vul">
  <div class="am-u-sm-12">

  <%
sql="select * From [class_Visa] where cID>0"
sql=sql & " order by oid desc,cID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
 <%do while not rs.eof%>
    <div class="am-u-sm-6 guojia">
      <a class="vli" href="visa_from.asp?cid=<%=rs("cid")%>" style="background-image:url(<%=rs("CFile")%>);"><%=rs("cname")%></a>
    </div>
<%
	      rs.movenext
	loop
%>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top vul">
  <div class="am-u-sm-12 vtit">
  | 签证中心服务优势
  </div>
</div>
<div class="am-g am-g-fixed vul">
  <div class="am-u-sm-12 vtxt">
  1.提供最专业的美国、加拿大、澳大利亚、新西兰的签证服务，国内最大最专注最权威!<br>
2.优秀的专业团队，权威的签证方案，精湛的服务流程，为出国/签证任何一个环节，打造专业服务，中外专家组的签证培训，签证疑难杂症的培训，提供签证和留学从业人员的培训，拒签国家翻案调档。<br>
3.提供个性化、贴心感动式服务，服务周到、细致、方便!<br>
4.提供美国等加急国的加急签证服务，解决您燃眉之急。<br>
5."反拒签(拒签再签、拒签翻案)"构筑我们的主打旋律。"若拒签，找我们"乃是客户对我们实力的贴切形容。<br>
6.一站式签证服务，服务涵盖所有与签证相关的内容如:表格、翻译、订代取/代递，签证方案设计、面试培训等。<br><br>

<b>签证服务团队荣誉和奖章</b><br>
2003年获得国际信用评估协会5A级评估；<br>
2004年获得ISO9001质量体系认证；<br>
2006年获得企业文化建设优秀单位称号；<br>
2007年获得中国大学生职业规划推进单位；<br>
2007年获得工信部安全绿色企业网站称号；<br>
2008年获得最具创新的年度教育委员会称号；<br>
2008年企业文化建设优秀单位称号；<br>
2009年获得年度诚信机构奖；<br>
2010年获得"全国教育组委会会员"单位称号；
  </div>
</div>
<!--<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">
    一对一指导及预约2d
  </p>
</footer>-->
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
</body>
</html>
