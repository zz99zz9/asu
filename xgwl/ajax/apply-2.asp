<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request.cookies("aid")
	  address1=request("address1")
	  address2=request("address2")
	  email=request("email")
	  tel=request("tel")
	  code=request("code")
%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("address1")=trim(address1)
Rs("address2")=Trim(address2)
Rs("email")=Trim(email)
Rs("tel")=Trim(tel)
Rs("code")=Trim(code)

Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>