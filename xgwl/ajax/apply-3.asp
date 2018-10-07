<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request.cookies("aid")
	  asu=request("asu")
	  asuid=request("asuid")
	  asuselect=request("asuselect")
	  tel=request("tel")
	  code=request("code")
%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("asu")=trim(asu)
Rs("asuid")=Trim(asuid)
Rs("asuselect")=Trim(asuselect)

Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>