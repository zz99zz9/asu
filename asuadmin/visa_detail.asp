<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
<!--#include file="inc/asu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <style>
      td{text-align:left;}
      tbody tr th{width:280px;}
      thead tr th{font-size:18px;}
      </style>
      <section id="main-content">
          <section class="wrapper">
              <!-- page start -->
<%
dim i
dim sql,rs
id=request.QueryString("id")
sql="select * From [Table_visa] where id="&id
sql=sql & " order by id desc"

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
                              留学申请详情 <!--a href="Prod_add.asp?Prod_Type=<%=classid%>" class="btn btn-success add">添加内容</a-->
                          </header>
                          
<!--列表开始-->

<!--以后补一个类别切换-->
<form>
<table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">Student's personal information</th>
          

        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">First name</th>
          <td><%=rs("fname")%></td>
        </tr>
        <tr>
          <th scope="row">Family name/ Surname</th>
          <td><%=rs("lname")%></td>
        </tr>
        <tr>
          <th scope="row">姓名</th>
          <td><%=rs("lname")%></td>
        </tr>
        <tr>
          <th scope="row">护照号</th>
          <td><%=rs("hz")%></td>
        </tr>
        <tr>
          <th scope="row">邮箱</th>
          <td><%=rs("email")%></td>
        </tr>
        <tr>
          <th scope="row">联系电话</th>
          <td><%=rs("tel")%></td>
        </tr>
      </tbody>
</table>

</form>

<div class="row <%if rs("sh")=0 then%>hide<%end if%>">
<div class="col-lg-offset-1 col-lg-8">
当前状态：<%call sh(rs("sh"))%> [操作时间：<%=rs("shtime")%>]<br><br>
</div></div>
<div class="row <%if rs("sh")>0 then%>hide<%end if%>">
<div class="col-lg-offset-1 col-lg-8">
<a class="btn btn-danger save" type="button" style="margin:15px auto;" href="?sh=2&id=<%=id%>">已处理</a>
<!--<a class="btn btn-danger save" type="button" style="margin:15px auto;" href="?sh=1&id=<%=id%>">已通知修改</a>-->
</div>
  </div>
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
sh2=request.QueryString("sh")
id=request.QueryString("id")
if sh2<>"" then
conn.execute "update [Table_visa] set sh="&sh2&",shtime=now() where Id="&Trim(id)

response.Redirect("visa_List.Asp")
end if
%>
  <script type="text/javascript">
//导航菜单



$(".nav2").addClass('active');
$(".nav2-1").addClass('active');

function ConfirmDel()
{
   if(confirm("确定要删除选中的内容吗？一旦删除将不能恢复！"))
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
