<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request.cookies("aid")
	  bankpic1=request("bankpic1")
	  bankpic2=request("bankpic2")
	  fgfpic=request("fgfpic")
	  parentspic=request("parentspic")
	  schoolpic=request("schoolpic")

%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("bankpic1")=trim(bankpic1)
Rs("bankpic2")=Trim(bankpic2)
rs("fgfpic")=trim(fgfpic)
Rs("parentspic")=Trim(parentspic)
Rs("schoolpic")=Trim(schoolpic)


Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>