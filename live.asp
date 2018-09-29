<!--#include file="inc/conn.asp"-->
<%title="校园生活"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<style>
.am-control-nav{display:none;}
</style>
<div class="am-slider am-slider-default" data-am-flexslider id="demo-slider-0">
  <ul class="am-slides">
    <li><img src="xgwl/img/ad1.png" /></li>
    <li><img src="xgwl/img/ad2.png" /></li>
    <li><img src="xgwl/img/ad3.png" /></li>
  </ul>
</div>
<!--广告结束-->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
  <style>
.guojia{margin-bottom:1em;margin-top:1em;}
  </style>
  <%
sql="select * From [prod] where classid=2"
sql=sql & " order by oid desc,prod_ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
 <%do while not rs.eof%>
    <div class="am-u-sm-6 guojia">
      <a type="button" class="am-btn am-btn-warning am-btn-block" href="live_detail.asp?id=<%=rs("prod_id")%>"><%=rs("prod_name")%></a>
    </div>
<%
	      rs.movenext
	loop
%>
  </div>
</div>

<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">

  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
</body>
</html>
