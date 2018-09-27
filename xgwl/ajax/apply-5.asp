<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request("aid")
	  tjxpic=request("tjxpic")
	  js1pic=request("js1pic")
	  js2pic=request("js2pic")
	  js3pic=request("js3pic")
	  lwpic=request("lwpic")
%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("tjxpic")=trim(tjxpic)
Rs("js1pic")=Trim(js1pic)
rs("js2pic")=trim(js2pic)
Rs("js3pic")=Trim(js3pic)
Rs("lwpic")=Trim(lwpic)

Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>