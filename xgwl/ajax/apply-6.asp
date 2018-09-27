<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../../inc/conn.asp"-->
<%aid=request("aid")
	  schoolzone=request("schoolzone")
	  college=request("college")
	  major=request("major")

%>
    <%if aid="" then

else
    set Rs=Server.CreateObject("ADODB.Recordset")
Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

rs("schoolzone")=trim(schoolzone)
Rs("college")=Trim(college)
rs("major")=trim(major)


Rs("uptime")=now()

Rs.Update
'response.write "ok"
end if
Rs.close
set Rs=Nothing
%>
<%
json="["
    set bRs=Server.CreateObject("ADODB.Recordset")
    bRs.Open "select * from [Table_ProBigClass] order by orderid desc",conn,1,3
    bi=0
    do while not brs.eof
    if bi>0 then json=json+","
    json= json+"{'Province':'"&brs("bigclassname")&"','City':["
        set sRs=Server.CreateObject("ADODB.Recordset")
        sRs.Open "select * from [Table_ProSmallClass] where bigclassid="&brs("bigclassid")&" order by orderid desc",conn,1,3
        si=0
        do while not srs.eof
        if si>0 then json=json+","
            json=json+"'"&srs("smallclassname")&"'"
            srs.movenext
        si=si+1
        loop
        json=json+"]"
        json=json+",'_Area':["
            set sRs2=Server.CreateObject("ADODB.Recordset")
            sRs2.Open "select * from [Table_ProSmallClass] where bigclassid="&brs("bigclassid")&" order by orderid desc",conn,1,3
                s2i=0
                do while not srs2.eof
                if s2i>0 then json=json+","
                json=json+"["
                    set Rs=Server.CreateObject("ADODB.Recordset")
                    Rs.Open "select * from [Table_Product] where smallclassid="&srs2("smallclassid")&" order by orderid desc ",conn,1,3
                    i=0
                    do while not rs.eof
                        if i>0 then json=json+","
                        json=json+"'"&rs("title")&"'"
                    rs.movenext
                    i=i+1
                    loop
                    json=json+"]"
                srs2.movenext
                s2i=s2i+1
                loop
            json=json+"]"
        json=json+"}"
    brs.movenext
    bi=bi+1
    loop

json=json+"]"
'json="[{'Province':'bc1','City':['bc1-sc1','bc1-sc2'],'_Area':[['a'],['b']]},{'Province':'bc2','City':['bc2-sc1'],'_Area':[['a'],['b']]},{'Province':'bc3','City':['bc3-sc1'],'_Area':[['a'],['b']]},{'Province':'bc4','City':[],'_Area':[['a'],['b']]}]"
response.write json

'[{ "Province": "<%=", "City": ["校区一学校一", "校区一学校二", "校区一学校三"], "_Area": [["校区一学校一专业一", "校区一学校一专业二", "校区一学校一专业三", "校区一学校一专业四"], ["昆都仑区", "东河区"], ["海勃湾区", "海南区", "乌达区"]]}]

%>
