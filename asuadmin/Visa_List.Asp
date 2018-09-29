<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start -->
<%
dim i
dim sql,rs

sql="select * From [Table_Visa]"
sql=sql & " order by oid desc,ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
             <!--成功失败提示-->
<div class="alert" id="alert" style="display:none;">
                                  <button class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                                  <strong>操作成功！</strong> <span>栏目内容修改成功。</span>
                              </div>
 
                          <!----> 
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              专业列表 <!--a href="pro_add.asp" class="btn btn-success add">添加专业</a-->
                          </header>
                          
<!--列表开始-->

<!--以后补一个类别切换-->
<form>
<table class="table table-striped border-top table-hover" id="sample_1">
<thead>
          <tr > 
          
            <th width="40" class="hidden-phone"><strong>ID</strong></td>
            <th width="60" class="hidden-phone"><strong>签证人</strong></td>
            <th width="70" class="hidden-phone"><strong>签证国家</strong></td>
            <th width="200" ><strong>护照号</strong></td>
            <th width="40" class="hidden-phone"><strong>邮箱</strong></td>
            <th width="40" class="hidden-phone"><strong>电话</strong></td>
            <th width="80" class="hidden-phone"><strong>签证时间</strong></td>
            <th width="178" ><strong>操作</strong></td>
          </tr></thead>
          <tbody>
          <%do while not rs.eof%>
          <tr > 
            <td class="hidden-phone"><%=rs("id")%></td>
            <td class="hidden-phone"><%=rs("cname")%>[<%=rs("fname")%> <%=rs("lname")%>]</td>
                            <td class="hidden-phone"><%=rs("cid")%></td>
            <td><%=rs("hz")%> </td>
            <td><%=rs("email")%> </td>
            <td><%=rs("tel")%> </td>
            <td class="hidden-phone"><%= FormatDateTime(rs("UpTime"),2) %></td>
            <td >
             <!-- <a href="visa_mod.asp?ID=<%=rs("id")%>" class="btn btn-success btn-xs">修改</a> -->
              <a href="?ID=<%=rs("ID")%>&Action=Del" onClick="return ConfirmDel();" class="btn btn-danger btn-xs">删除</a> </td>
          </tr>
          <%
	i=i+1
	  
	      rs.movenext
	loop
%>
          </tbody>
          </table>
        </table>
</form>
<!--列表结束-->
                      </section>
                  </div>
              </div>

              <!--  page end  -->
          </section>
      </section>
      <!--main content end-->
  </section>

<!--#include file="inc/xgfooter.asp"-->
<!--#include file="inc/windows.asp"-->
<%
action=request.QueryString("Action")
delid=request.QueryString("ArticleID")
if action="Del" then
conn.execute "delete from [Table_Visa] where Id="&Trim(delid)
response.Redirect("Visa_List.Asp?sta=del")
end if
%>
  <script type="text/javascript">
//导航菜单
$(".nav2").addClass('active');
$(".nav2-5").addClass('active');

function ConfirmDel()
{
   if(confirm("确定要删除选中的产品吗？一旦删除将不能恢复！"))
     return true;
   else
     return false;
}
var sta='<%=request.QueryString("sta")%>';
if(sta=='add'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据添加成功!");
}else if(sta=='mod'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据修改成功!");
}else if(sta=='del'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据删除成功!");
}
console.log(sta);
</script>
<script type="text/javascript" src="xgwl/assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="xgwl/assets/data-tables/DT_bootstrap.js"></script>
<script src="xgwl/js/dynamic-table.js"></script>
