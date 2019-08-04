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
      <a class="vli" href="<%=rs("CTxt")%>" style="background-image:url(<%=rs("CFile")%>);"><%=rs("cname")%></a>
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
U Mentor签证中心与外交部下属公司强强联合，为即将留学的学子提供优质高效快速的签证服务。<br><br>

北京运驰国际咨询有限公司成立于2004年，隶属于外交部下属北京外交人员服务局，主要从事中国公民出入境咨询、语言翻译、中外文化交流、国际教育与留学、人才派遣等服务和业务，实力雄厚，信誉优良。<br><br>

1、从业人员综合素质高：公司高管和业务骨干都具备在外国驻华大使馆长期工作的丰富经验，精通主要通用外语，具有丰沛的人脉资源，熟悉中外法律法规，深谙各国签证政策和操作规程，工作态度认真负责，纪律规矩意识强。<br><br>

2、营业位置优越：在北京第一、二、三使馆区均设有办公营业厅。<br><br>

3、业务范围广：与多个省市的外事办公室、外国机构服务处、国有大中型企业和涉外民营企业建立了长期合作关系。
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
