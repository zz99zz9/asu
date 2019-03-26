<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<!--#include file="../../inc/md5.asp"-->
<%
umail=request("umail")
	  upwd=request("upwd")
	  utel=request("utel")
	  cname=request("cname")
	  bdate=request("bdate")
	  recommend=request("recommend")
	  uptime=now()
      sex=request("sex")
    id=request("id")
    action=request("action")
      select case action

Case "add"
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] ",conn,1,3
Rs.Addnew
Rs("umail")=Trim(umail)
Rs("upwd")=Md5(Trim(upwd))
Rs("utel")=Trim(utel)
Rs("cname")=Trim(cname)
Rs("bdate")=Trim(bdate)
Rs("recommend")=Trim(recommend)
Rs("sex")=Trim(sex)
Rs("uptime")=Trim(uptime)

case "mod"
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] where id="&id,conn,1,3
Rs("umail")=Trim(umail)
Rs("utel")=Trim(utel)
Rs("cname")=Trim(cname)
Rs("bdate")=Trim(bdate)
Rs("sex")=Trim(sex)
Rs("uptime")=Trim(uptime)

case "pwd"
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] where id="&id,conn,1,3

Rs("upwd")=Md5(Trim(upwd))

Rs("uptime")=Trim(uptime)

end select



Rs.Update


set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_member] where cname='"&Trim(cname)&"' order by id desc",conn,1,3
uid=Rs("id")
Rs.close
set Rs=Nothing
response.write "ok"
response.cookies("uid")=uid
response.cookies("cname")=cname
      %>