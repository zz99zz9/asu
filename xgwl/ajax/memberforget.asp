<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<!--#include file="../../inc/mailto.asp"-->
<%
umail=request("umail")
ranNum=request("ranNum")
set Rs=Server.CreateObject("ADODB.Recordset")
sql="select * from [Table_member] where umail='"&umail&"'"
Rs.Open sql,conn,1,3

if not(rs.eof and rs.bof) then
rs("ranNum")=trim(ranNum)

Rs("uptime")=now()

Rs.Update
Call SendAction ("Reset password of ASU",umail,"ASUmentor","http://asu.lvovl.cn/memberpassword.asp?ranNum="&ranNum)%>

{"ok":1,"ranNum":"<%=ranNum%>","umail":"<%=umail%>"}
<%
else
%>
{"ok":0}
<%
end if
%>