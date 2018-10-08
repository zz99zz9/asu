<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request.cookies("aid")
	  toefl=request("toefl")
	  ielts=request("ielts")
	  act=request("act")
	  sat=request("sat")
	  gmat=request("gmat")
      mschool=request("mschool")
	  mspic=request("mspic")
	  hschool=request("hschool")
      hspic=request("hspic")
	  uschool=request("uschool")
	  uspic=request("uspic")
%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("toefl")=trim(toefl)
Rs("ielts")=Trim(ielts)
rs("act")=trim(act)
Rs("sat")=Trim(sat)
Rs("gmat")=Trim(gmat)
rs("mschool")=trim(mschool)
Rs("mspic")=Trim(mspic)
rs("hschool")=trim(hschool)
rs("hspic")=trim(hspic)
Rs("uschool")=Trim(uschool)
Rs("uspic")=Trim(uspic)

Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>