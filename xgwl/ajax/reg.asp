<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->

<%
umail=trim(request("umail"))

if umail<>"" then
    	sql="select umail from Table_member where umail='"&umail&"'"  ' 查询数据库中是否有重复记录
	
	set rs = conn.execute(sql)

	If not(rs.Eof And rs.Bof) Then
	 Response.Write("has")
	response.end()
	end if
	rs.close
	set rs=nothing
end if

utel=trim(request("utel"))

if utel<>"" then
    	sql="select utel from Table_member where utel='"&utel&"'"  ' 查询数据库中是否有重复记录
	
	set rs = conn.execute(sql)

	If not(rs.Eof And rs.Bof) Then
	 Response.Write("has")
	response.end()
	end if
	rs.close
	set rs=nothing
end if
%>