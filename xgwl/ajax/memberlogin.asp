<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<!--#include file="../../inc/md5.asp"-->
<%
uname=request("uname")
upwd=request("upwd")
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] where uname='"&uname&"' and upwd='"&md5(upwd)&"'",conn,1,3
if not(rs.eof and rs.bof) then
response.write "ok"
response.cookies("uid")=rs("id")
response.cookies("uname")=uname
else
response.write "err"
end if
%>