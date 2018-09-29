<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->

<%
fname=request("fname")
	  lname=request("lname")
	  cname=request("cname")
	  hz=request("hz")
	  email=request("email")
	  tel=request("tel")
	  uptime=now()
      cid=request("cid")
    uid=request("uid")
if uid="" then uid=0
    action=request("action")
      select case action

Case "add"
set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_visa] ",conn,1,3
Rs.Addnew
Rs("fname")=Trim(fname)
Rs("lname")=Trim(lname)
Rs("cname")=Trim(cname)
Rs("hz")=Trim(hz)
Rs("email")=Trim(email)
Rs("tel")=Trim(tel)
Rs("cid")=Trim(cid)
Rs("uid")=Trim(uid)
Rs("uptime")=now()

Rs.Update



Rs.close
set Rs=Nothing
response.write "ok"
case "mod"

end select
      %>