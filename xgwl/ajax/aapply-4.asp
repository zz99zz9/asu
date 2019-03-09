<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<!--#include file="../../inc/mailto.asp"-->
<%d1=request("d1")
	  d2=request("d2")
	  d3=request("d3")
	  d4=request("d4")
	  d5=request("d5")
	  d6=request("d6")
      d7=request("d7")
    d8=request("d8")
    d9=request("d9")
    d10=request("d10")
    d11=request("d11")
    d6a1=request("d6a1")
    d6a2=request("d6a2")
    d6a3=request("d6a3")
    d6a4=request("d6a4")
    d6a5=request("d6a5")
    d6a6=request("d6a6")
    d6a7=request("d6a7")
    d6a8=request("d6a8")
    d6a9=request("d6a9")
    d9a1=request("d9a1")
	 


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
Rs("d1")=Trim(d1)
Rs("d2")=Trim(d2)
Rs("d3")=Trim(d3)
Rs("d4")=Trim(d4)
Rs("d5")=Trim(d5)
Rs("d6")=Trim(d6)
Rs("d7")=Trim(d7)
Rs("d8")=Trim(d8)
Rs("d9")=Trim(d9)
Rs("d10")=Trim(d10)
Rs("d11")=Trim(d11)
Rs("d6a1")=Trim(d6a1)
Rs("d6a2")=Trim(d6a2)
Rs("d6a3")=Trim(d6a3)
Rs("d6a4")=Trim(d6a4)
Rs("d6a5")=Trim(d6a5)
Rs("d6a6")=Trim(d6a6)
Rs("d6a7")=Trim(d6a7)
Rs("d6a8")=Trim(d6a8)
Rs("d6a9")=Trim(d6a9)
Rs("d9a1")=Trim(d9a1)
Rs("uptime")=now()

Rs.Update


set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [application] where uid="&Trim(uid)&" order by id desc",conn,1,3
aid=Rs("id")
uname=rs("a1")
umail=rs("c4")
response.write "ok"
response.cookies("aid")=aid
'Call SendAction("Dear "&uname,umail,"Thanks you for your received","    This is confirmation that we have received new information form from you. "& vbcrlf &"　We will contact you to advise of any missing information, or to let you know that the application has been submitted to ASU. "& vbcrlf & vbcrlf &"                     Kind regards, "& vbcrlf &"                    ASUMENTOR ADMISSION OFFICE")
'Call SendAction("Dear Grace","apply.asu@umentoredu.com","Got a new application form "&uname,"Click on the link to view the application. "& vbcrlf &"http://asu.lvovl.cn/asuadmin/login.asp")
Rs.close
set Rs=Nothing
%>