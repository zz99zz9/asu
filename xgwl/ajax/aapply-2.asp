<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%b1=request("b1")
	  b2=request("b2")
      b2d1=request("b2d1")
      b2d2=request("b2d2")
      b2d3=request("b2d3")
      b2d4=request("b2d4")
      b2d5=request("b2d5")
      b2d6=request("b2d6")
      b2d7=request("b2d7")
      b2d8=request("b2d8")
      b2d9=request("b2d9")
      b2d10=request("b2d10")
	  b3=request("b3")
	  b4=request("b4")
	  b5=request("b5")
	  b6=request("b6")
      b7=request("b7")
    b8=request("b8")
    b9=request("b9")
    b10=request("b10")
    b11=request("b11")
	  b12=request("b12")
	  b13=request("b13")
	  b14=request("b14")
       b14a1=request("b14a1")
       b14a2=request("b14a2")
       b14a3=request("b14a3")
       b14a4=request("b14a4")
       b14a5=request("b14a5")
       b14a6=request("b14a6")
	  b15=request("b15")
	  b16=request("b16")
      b17=request("b17")
    b18=request("b18")
    b19=request("b19")
    b20=request("b20")
    b21=request("b21")
       b21a1=request("b21a1")
       b21a2=request("b21a2")
       b21a3=request("b21a3")
       b21a4=request("b21a4")
       b21a5=request("b21a5")
       b21a6=request("b21a6")
    b22=request("b22")
    b23=request("b23")
    b23b1=request("b23b1")
    b23b2=request("b23b2")
    b23b3=request("b23b3")
    b24=request("b24")
    b25=request("b25")
    b24a1=request("b24a1")

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
Rs("b1")=Trim(b1)
Rs("b2")=Trim(b2)
Rs("b3")=Trim(b3)
Rs("b4")=Trim(b4)
Rs("b5")=Trim(b5)
Rs("b6")=Trim(b6)
Rs("b7")=Trim(b7)
Rs("b8")=Trim(b8)
Rs("b9")=Trim(b9)
Rs("b10")=Trim(b10)
Rs("b11")=Trim(b11)
Rs("b12")=Trim(b12)
Rs("b13")=Trim(b13)
Rs("b14")=Trim(b14)
Rs("b15")=Trim(b15)
Rs("b16")=Trim(b16)
Rs("b17")=Trim(b17)
Rs("b18")=Trim(b18)
Rs("b19")=Trim(b19)
Rs("b20")=Trim(b20)
Rs("b21")=Trim(b21)
Rs("b22")=Trim(b22)
Rs("b23")=Trim(b23)
Rs("b24")=Trim(b24)
Rs("b25")=Trim(b25)
Rs("b2d1")=Trim(b2d1)
Rs("b2d2")=Trim(b2d2)
Rs("b2d3")=Trim(b2d3)
Rs("b2d4")=Trim(b2d4)
Rs("b2d5")=Trim(b2d5)
Rs("b2d6")=Trim(b2d6)
Rs("b2d7")=Trim(b2d7)
Rs("b2d8")=Trim(b2d8)
Rs("b2d9")=Trim(b2d9)
Rs("b2d10")=Trim(b2d10)
Rs("b14a1")=Trim(b14a1)
Rs("b14a2")=Trim(b14a2)
Rs("b14a3")=Trim(b14a3)
Rs("b14a4")=Trim(b14a4)
Rs("b14a5")=Trim(b14a5)
Rs("b14a6")=Trim(b14a6)
Rs("b21a1")=Trim(b21a1)
Rs("b21a2")=Trim(b21a2)
Rs("b21a3")=Trim(b21a3)
Rs("b21a4")=Trim(b21a4)
Rs("b21a5")=Trim(b21a5)
Rs("b21a6")=Trim(b21a6)
Rs("b23b1")=Trim(b23b1)
Rs("b23b2")=Trim(b23b2)
Rs("b23b3")=Trim(b23b3)
Rs("b24a1")=Trim(b24a1)

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