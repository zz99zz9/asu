<!--#include file="inc/conn.asp"-->
<%title="校园生活"%>
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

<!--广告结束-->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
  <style>
.guojia{margin-bottom:1em;margin-top:1em;}
  </style>
  <%
sql="select * From [class_live] where cID>0"
sql=sql & " order by oid desc,cID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
 <%do while not rs.eof%>
     <div class="am-u-sm-6 guojia">
      <a class="vli" href="#<%=rs("Cid")%>" style="background-image:url(<%=rs("CFile")%>);"><%=rs("cname")%></a>
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
