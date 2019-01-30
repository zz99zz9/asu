<%
response.codepage=65001
response.charset="UTF-8"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>成功支付记录</title>
<script>
function ConfirmDel()
{
   if(confirm("请确定操作！"))
     return true;
   else
     return false;	 
}
</script>
<style>
/*************************************************************************/
/*全局样式开始*/
/***********************************html,body{background:url(/images/index_bg.jpg) no-repeat top center #fff;}**************************************/
html{overflow-y:scroll;overflow-x:hidden;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;}
body{color:#444;font-family:microsoft yahei,Microsoft YaHei,微软雅黑,arial;background:#fff; line-height:26px}
blockquote,body,dd,div,dl,dt,fieldset,form,h1,h2,h3,h4,h5,h6,img fieldset,input,li,ol,p,pre,textarea,th,ul{margin:0;padding:0;}
section, nav, header, footer {display:block;}
em,i,li,ol,ul{list-style-type:none; font-weight:normal}
h1,h2,h3,h4,h5,h6{font-weight:400;}
img{border:0;vertical-align:middle;-ms-interpolation-mode:bicubic;}
input,select{outline:0;vertical-align:middle;}
table{border-collapse:collapse;border-spacing:0;}
.clearfix:after{clear:both;display:block;visibility:hidden;height:0;content:".";}
.clearfix{display:inline-block;}
* html .clearfix{height:1%;}
.clearfix{display:block;}
a:link{color:#444;text-decoration:none;}
a:visited{color:#444;text-decoration:none;}
a:hover{color:#e5000c;text-decoration:none;}
a:active{color:#e5000c;text-decoration:none;}
.table2{margin:10px auto 15px;width:1200px;border-collapse:collapse;border-color:#ddd;border-width:1px;}
.table2 td{padding:5px 4px;border-color:#ddd;border-style:solid;border-width:1px;text-align:center;font-size:14px;background:#f7f7f7}
.table2 td a{ margin:0 5px; color:#f30}
.table{margin:15px auto 15px;width:1200px;border-collapse:collapse;border-color:#ddd;border-width:1px;}
.table tr{padding:2px 4px;border-color:#ddd;border-style:solid;border-width:1px;}
.table tr:first-child{height:30px;background:#f7f7f7;font-weight:700;line-height:30px;}
.table td{padding:5px 4px;border-color:#ddd;border-style:solid;border-width:1px;text-align:center;font-size:14px;}
.table td p{margin:0;padding:0;}
.onclk{}
.onclk:hover{
background:rgb(247,247,247);

}
</style>
</head>
<body>
<%
dim datapath,Connstr,Conn
datapath="data/db2.mdb"
on error resume next
Connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&server.mappath(datapath)
Set Conn=server.createobject("adodb.connection")
Conn.open Connstr
set rs=server.createobject("adodb.recordset")
    rs.open "select * from Order_Info order by id desc",conn,1,1
i=rs.recordcount
%>

<form name="myform" method="Post" action="?Action=del">
<table class="table">
	<tbody>
		<tr class="firstRow">
			<td width="70">ID</td>
			<td width="190">订单号</td>
			<td width="80">金额</td>
			<td width="90">支付方式</td>
			<td width="180">openid</td>
			<td width="180">返回码</td>
			<td>备注</td>
			<td width="150">支付时间</td>
		</tr><% 
		
		if not (rs.eof and rs.bof) then
	dim totalrec,maxperpage,totalpage,curpage
	if request("page")="" then
		curpage=1
	else
		curpage=cint(request("page"))
	end if
	maxperpage=30
	totalrec=rs.recordcount
	totalpage=totalrec\maxperpage
	if totalrec-totalpage*maxperpage>0 then totalpage=totalpage+1
	if totalpage<curpage then curpage=totalpage
	if curpage<=0 then curpage=1
	rs.move (curpage-1)*maxperpage
	do while not rs.eof
		if maxperpage<=0 then exit do
		
		%>
		<tr class="onclk" id="u48" >
			<td><%=rs(0)%></td>
			<td><%=rs("out_trade_no")%></td>
			<td><%=FormatNum(rs("total_fee"),2)%></td>
			<td><%=rs("trade_type")%></td>
			<td><%=rs("openid")%></td>
			<td><%=left(rs("transaction_id"),12)&"***"%></td>
			<td><%=rs("attach")%></td>
			<td><%=rs("addtime")%></td>
		</tr>
		<% rs.movenext
i=i-1
maxperpage=maxperpage-1
		loop
		end if
		 %>
	</tbody>
</table>
<table class="table2">
	<tr>
		<td align="center" class="firstRow"> 共<%=rs.recordcount%>条记录<%=totalpage%>页，现在第<%=curpage%>页
                            [<%if curpage<>1 then%><a href='s.asp?page=1'><%end if%>首页<%if curpage<>1 then%></a><%end if%>]
                            [<%if curpage>1 then%><a href='s.asp?page=<%=curpage-1%>'><%end if%>上一页<%if curpage>1 then%></a><%end if%>]
                            [<%if curpage<totalpage then%><a href='s.asp?page=<%=curpage+1%>'><%end if%>下一页<%if curpage<totalpage then%></a><%end if%>]
                            [<%if curpage<>totalpage then%><a href='s.asp?page=<%=totalpage%>'><%end if%>尾页<%if curpage<>totalpage then%></a><%end if%>]
                           <br></td>
	</tr>
</table>


<script language=javascript>
function Select(flag)
{  

  $("input[type=checkbox]").each(function(){
  if ($(this).prop("name")=="id"){
	var objc=$("#c"+$(this).val()); 
	var obju=$("#u"+$(this).val());
	switch (flag){
	  case 0:  //全选
	   objc.prop("checked",true);
	   obju.attr("style","background:#eef8fe");
	   break;
	  case 1: //反选
		if (objc.prop("checked")==false){
			objc.prop("checked",true);
			obju.attr("style","background:#eef8fe");
		}else{
			objc.prop("checked",false);
	    	obju.attr("style","background:");
		}
		break;
	 case 2:  //不选
		objc.prop("checked",false);
	    obju.attr("style","background:");
		break;
	 }
  }
 })
}
</script>
<%
function FormatNum(num,n)
if num<1 then
num="0"&cstr(FormatNumber(num,n))
else
num=cstr(FormatNumber(num,n))
end if
FormatNum=replace(num,",","")
end function

%>
</body>
</html>