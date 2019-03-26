<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<!--#include file="../../inc/md5.asp"-->
<%
umail=request("umail")
upwd=request("upwd")
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] where umail='"&umail&"' and upwd='"&md5(upwd)&"'",conn,1,3
if not(rs.eof and rs.bof) then
response.write "ok"
response.cookies("uid")=rs("id")
response.cookies("umail")=umail
response.cookies("cname")=rs("cname")
else
response.write "err"
end if
%>