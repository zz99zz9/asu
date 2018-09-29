<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
	  classid=request("classid")
	  BigClassName=request("BigClassName")
	  BigClassId=request("BigClassId")
	  SmallClassName=request("SmallClassName")
	  SmallClassId=request("SmallClassId")
	  prod_name=request("prodname")
	  prod_pic=request("DefaultPicUrl")
      prod_detail=request("content")
      prod_detailen=request("content1")
	  picalt=request("picalt")
	  oid=request("oid")
	  ioid=request("ioid")
	  url=request("url")
	    tips=request("tips")
	  Descriptio=request("Description")
	uptime=trim(request("uptime"))
	title2=request("title")
	  Keywords=request("Keywords")
      Passed=request("Passed")
	  Elite=request("Elite")
	  action=trim(request("action"))
	  pid=request("pid")
	  clb=request("clb")
	  tips=request("tips")
		if classid="" then classid=0
		if pid="" then pid=0
		if Oid="" then Oid=0

		
select case action

Case "add"
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [prod] ",conn,1,3

oRs.Addnew


oRs("prod_name")=Trim(prod_name)
oRs("prod_pic")=Trim(prod_pic)
oRs("prod_detail")=Trim(prod_detail)
oRs("prod_detailen")=Trim(prod_detailen)
oRs("oid")=Trim(oid)

oRs("classid")=Trim(classid)
oRs("url")=Trim(url)
oRs("tips")=Trim(tips)
oRs("prod_date")=Trim(uptime)
oRs("picalt")=Trim(picalt)


oRs("Passed")=Trim(Passed)
oRs("Elite")=Trim(Elite)

oRs.Update

oRs.close
set oRs=Nothing
response.write ("add")

Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [prod] where prod_id="&pid,conn,1,3

oRs("prod_name")=Trim(prod_name)
oRs("prod_pic")=Trim(prod_pic)
oRs("prod_detail")=Trim(prod_detail)
oRs("prod_detailen")=Trim(prod_detailen)
oRs("oid")=Trim(oid)


oRs("url")=Trim(url)
oRs("tips")=Trim(tips)
oRs("prod_date")=Trim(uptime)
oRs("classid")=Trim(classid)
oRs("Passed")=Trim(Passed)

oRs("Elite")=Trim(Elite)

oRs.Update

oRs.close
set oRs=Nothing
response.write ("mod")
Case "del"
conn.execute "delete from [prod] where prod_Id="&Trim(pid)
response.write ("del")
end select
%>