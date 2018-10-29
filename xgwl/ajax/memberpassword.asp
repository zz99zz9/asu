<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<!--#include file="../../inc/md5.asp"-->
<%
ranNum=request("ranNum")
	  upwd=request("upwd")

	  uptime=now()

    action="add"
      select case action

Case "add"
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] where ranNum='"&ranNum&"'",conn,1,3


Rs("upwd")=Md5(Trim(upwd))

Rs("uptime")=Trim(uptime)

Rs.Update

Rs.close
set Rs=Nothing
response.write "ok"

case "mod"

end select
      %>