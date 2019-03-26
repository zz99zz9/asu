<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%c1=request("c1")
	  c2=request("c2")
	  c3=request("c3")
	  c4=request("c4")
	  c5=request("c5")
	  c6=request("c6")
      c7=request("c7")
    c8=request("c8")
    c9=request("c9")
    c10=request("c10")
    c11=request("c11")
	  c12=request("c12")
	  c13=request("c13")
	  c14=request("c14")

	  c15=request("c15")
	  c16=request("c16")
      c17=request("c17")
    c18=request("c18")
    c19=request("c19")
    c20=request("c20")
    c21=request("c21")

    c22=request("c22")
    c23=request("c23")

    c24=request("c24")
     c25=request("c25")
      c26=request("c26")
       c27=request("c27")
        c28=request("c28")
        c3bd1=request("c3bd1")
        c3bd2=request("c3bd2")
        c3bd3=request("c3bd3")
        c3c1=request("c3c1")
        c8a1=request("c8a1")
        c8a2=request("c8a2")


    uid=request.cookies("uid")
    aid=request("aid")
    
%>
    <%  set Rs=Server.CreateObject("ADODB.Recordset")
if aid="" then
    Rs.Open "select * from [Application] ",conn,1,3
    Rs.Addnew
    Rs("uptime")=now()
 else
     Rs.Open "select * from [Application] where id="&aid,conn,1,3
 end if
Rs("uid")=Trim(uid)
Rs("c1")=Trim(c1)
Rs("c2")=Trim(c2)
Rs("c3")=Trim(c3)
Rs("c4")=Trim(c4)
Rs("c5")=Trim(c5)
Rs("c6")=Trim(c6)
Rs("c7")=Trim(c7)
Rs("c8")=Trim(c8)
Rs("c9")=Trim(c9)
Rs("c10")=Trim(c10)
Rs("c11")=Trim(c11)
Rs("c12")=Trim(c12)
Rs("c13")=Trim(c13)
Rs("c14")=Trim(c14)
Rs("c15")=Trim(c15)
Rs("c16")=Trim(c16)
Rs("c17")=Trim(c17)
Rs("c18")=Trim(c18)
Rs("c19")=Trim(c19)
Rs("c20")=Trim(c20)
Rs("c21")=Trim(c21)
Rs("c22")=Trim(c22)
Rs("c23")=Trim(c23)
Rs("c24")=Trim(c24)
Rs("c25")=Trim(c25)
Rs("c26")=Trim(c26)
Rs("c27")=Trim(c27)
Rs("c28")=Trim(c28)
Rs("c3bd1")=Trim(c3bd1)
Rs("c3bd2")=Trim(c3bd2)
Rs("c3bd3")=Trim(c3bd3)
Rs("c3c1")=Trim(c3c1)
Rs("c8a1")=Trim(c8a1)
Rs("c8a2")=Trim(c8a2)

rs("sh")=0
rs("shtime")=now()
Rs.Update


set Rs=Server.CreateObject("ADODB.Recordset")
if aid="" then
Rs.Open "select * from [application] where uid="&Trim(uid)&" order by id desc",conn,1,3
else
Rs.Open "select * from [application] where uid="&Trim(uid)&" and id="&aid&" order by id desc",conn,1,3
end if
aid=Rs("id")

response.write "ok"
response.cookies("aid")=aid


Rs.close
set Rs=Nothing
%>