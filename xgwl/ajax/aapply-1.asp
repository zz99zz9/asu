<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%a1=request("a1")
	  a2=request("a2")
	  a3=request("a3")
	  a4=request("a4")
	  a5=request("a5")
	  a6=request("a6")
      a7=request("a7")
    a7a1=request("a7a1")
    uid=request.cookies("uid")
    aid=request("aid")
    
%>
    <%  set Rs=Server.CreateObject("ADODB.Recordset")
if aid="" then
    Rs.Open "select * from [Application] ",conn,1,3
    Rs.Addnew
 else
     Rs.Open "select * from [Application] where id="&aid,conn,1,3
 end if
Rs("uid")=Trim(uid)
Rs("a1")=Trim(a1)
Rs("a2")=Trim(a2)
Rs("a3")=Trim(a3)
Rs("a4")=Trim(a4)
Rs("a5")=Trim(a5)
Rs("a6")=Trim(a6)
Rs("a7")=Trim(a7)
Rs("a7a1")=Trim(a7a1)

Rs("uptime")=now()

Rs.Update


set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [application] where uid="&Trim(uid)&" order by id desc",conn,1,3
aid=Rs("id")

response.write "ok"
response.cookies("aid")=aid


Rs.close
set Rs=Nothing
%>