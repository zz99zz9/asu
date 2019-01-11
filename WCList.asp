<!--#include file="inc/conn.asp"-->
<%title="微信群"%>
<%typeid=request.QueryString("typeid")%>
 <!--#include file="inc/header.asp">
 
<!-- 页面内容 开发时删除 -->
<link rel="stylesheet" href="xgwl/css/wechat.css">
  <%
sql="select * From [class_wc] where cID="&typeid
sql2=sql & " order by oid desc,cID desc"

Set rs2=Server.CreateObject("ADODB.Recordset")
rs2.open sql2,conn,1,1
Cname=rs2("Cname")
%>
<div class="am-slider am-slider-default" data-am-flexslider id="demo-slider-0">
  <ul class="am-slides">
    <li><img src="<%=rs2("CFile")%>" /></li>
  </ul>
</div>

<div class="am-slider am-margin-top-15" data-am-flexslider id="demo-slider-0">
<p class="h1"><%=rs2("Cname")%></p>
<hr><%=rs2("CTxt")%>
</div>

  <%
sql="select * From [prod] where cID="&typeid&" and classid=1" 
sql=sql & " order by oid desc,cID desc"

Set rs=Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1%>
<div class="am-g am-g-fixed am-margin-top vul">
  <div class="am-u-sm-12 vtit">
  | 申请入群
  </div>
</div>
<div class="am-g am-g-fixed vul">
  <div class="am-u-sm-12 vtxt">
<%=rs("prod_detail")%>

<br>
<br><br>

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
