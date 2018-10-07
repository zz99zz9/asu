<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request.cookies("aid")
	  faname=request("faname")
	  fatel=request("fatel")
	  faaddress=request("faaddress")
	  moname=request("moname")
	  motel=request("motel")
	  moaddress=request("moaddress")
%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("faname")=trim(faname)
Rs("fatel")=Trim(fatel)
Rs("faaddress")=Trim(faaddress)
rs("moname")=trim(moname)
Rs("motel")=Trim(motel)
Rs("moaddress")=Trim(moaddress)

Rs("uptime")=now()

Rs.Update
response.write "ok"
end if
Rs.close
set Rs=Nothing
%>