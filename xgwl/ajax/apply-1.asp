<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%cname=request("cname")
	  fname=request("fname")
	  lname=request("lname")
	  bdate=request("bdate")
	  sfz=request("sfz")
	  sfzpic1=request("sfzpic1")
      sfzpic2=request("sfzpic2")
    aid=request("aid")
    hz=request("hz")
    hzpic=request("hzpic")
    usa=request("usa")
    cc=request("cc")
    sex=request("sex")
    recommend=request("recommend")
    uid=request.cookies("uid")%>
    <%if aid="" then
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] ",conn,1,3
Rs.Addnew
rs("uid")=trim(uid)
Rs("cname")=Trim(cname)
Rs("fname")=Trim(fname)
Rs("lname")=Trim(lname)
Rs("bdate")=Trim(bdate)
Rs("sfz")=Trim(sfz)
Rs("sfzpic1")=Trim(sfzpic1)
Rs("sfzpic2")=Trim(sfzpic2)
Rs("hz")=Trim(hz)
Rs("hzpic")=Trim(hzpic)
Rs("usa")=Trim(usa)
Rs("cc")=Trim(cc)
Rs("sex")=Trim(sex)
Rs("recommend")=Trim(recommend)
Rs("uptime")=now()

Rs.Update


set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_application] where uid="&Trim(uid)&" order by id desc",conn,1,3
aid=Rs("id")

response.write "ok"
response.cookies("aid")=aid

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("uid")=trim(uid)
Rs("cname")=Trim(cname)
Rs("fname")=Trim(fname)
Rs("lname")=Trim(lname)
Rs("bdate")=Trim(bdate)
Rs("sfz")=Trim(sfz)
Rs("sfzpic1")=Trim(sfzpic1)
Rs("sfzpic2")=Trim(sfzpic2)
Rs("hz")=Trim(hz)
Rs("hzpic")=Trim(hzpic)
Rs("usa")=Trim(usa)
Rs("cc")=Trim(cc)
Rs("sex")=Trim(sex)
Rs("recommend")=Trim(recommend)
Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>