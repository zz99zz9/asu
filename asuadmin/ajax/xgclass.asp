<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->

<%
'类修改
CName=request("CName")
Action=request("Action")
CID=request("CID")
OID=request("OID")
CFile=request("CFile")
Ctxt=request("Ctxt")
Table=request("Table")
 select case Action
  case "list"
  
  case "add"
  conn.execute"INSERT INTO ["&Table&"] (CName,OID,Cdate,CFile,CTxt) VALUES ('"&CName&"','"&OID&"','"&now()&"','"&CFile&"','"&CTxt&"')"
  case "mod"
  conn.execute"update ["&Table&"] set CName='"&CName&"',OID="&OID&",Cdate='"&now()&"',CFile='"&CFile&"',CTxt='"&CTxt&"' where Cid="&CID&""

  case "del"
  '可加判断是否删除
  conn.execute "delete from ["&Table&"] where Cid="&Trim(CID)  

  case else
  
 end select
%>
<%'-------------------------------------------

'             输出大类及小类的Json对象

'--------------------------------------------%>
[<%  
set rs=server.createobject("adodb.recordset")
sql="select * from ["&Table&"] order by oid desc"

rs.open sql,conn,3,3
do while not rs.eof%><%if i>0 then %>,<%end if%>{"CID":"<%=Rs("CID")%>","CName":"<%=Rs("CName")%>","OID":"<%=Rs("Oid")%>","CFile":"<%=Rs("CFile")%>","CTxt":"<%=Rs("Ctxt")%>"}<%
rs.movenext
	i=i+1
    loop
	i=0
rs.close
set rs=nothing
%>] 