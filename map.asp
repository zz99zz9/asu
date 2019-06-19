<!--#include file="inc/conn.asp"-->
<%title="校园地图"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<link rel="stylesheet" href="xgwl/css/list.css">
<!--广告结束-->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">

  <%
sql="select * From [class_map] where cID>0"
sql=sql & " order by oid desc,cID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
 <%do while not rs.eof%>
     <div class="am-u-sm-12 guojia">
      <a class="vli" href="<%=rs("ctxt")%>" style="background-image:url(<%=rs("CFile")%>);"><%=rs("cname")%></a>
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
