<!--#include file="inc/conn.asp"-->
<%title="校园生活"%>
 <!--#include file="inc/header.asp">

<!-- 页面内容 开发时删除 -->
<style>
.am-control-nav{display:none;}
</style>

<!--广告结束-->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
  <style>
.guojia{margin-bottom:1em;margin-top:1em;}
  </style>
  <%
  id=request.QueryString("id")
sql="select * From [prod] where prod_id="&id
sql=sql & " order by oid desc,prod_ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
 <%do while not rs.eof%>
    <div class="am-u-sm-12 guojia">
      <h1><%=rs("prod_name")%></h1>
      <p><%=rs("prod_detail")%></p>
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
<script type="text/javascript" src="xgwl/ajax/apply-1.js"></script>
</body>
</html>
