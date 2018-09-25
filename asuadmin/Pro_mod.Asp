<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start -->
<%
dim rs
dim sql
dim count

set rs=server.createobject("adodb.recordset")
sql = "select * from [Table_ProSmallclass] order by orderid desc,SmallClassID desc"
rs.open sql,conn,1,1
%>
<script language = "JavaScript">
var onecount;
subcat = new Array();
        <%
        count = 0
        do while not rs.eof 
        %>
subcat[<%=count%>] = new Array("<%= trim(rs("SmallClassName"))%>","<%= trim(rs("BigClassName"))%>","<%= trim(rs("SmallClassName"))%>;<%= trim(rs("SmallClassId"))%>");
        <%
        count = count + 1
        rs.movenext
        loop
        rs.close
        %>
onecount=<%=count%>;

function changelocation(locationid)
    {
    document.myform.SmallClassName.length = 1; 
    var locationid=locationid.split(";")[0];
    var i;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][1] == locationid)
            { 
                document.myform.SmallClassName.options[document.myform.SmallClassName.length] = new Option(jmyh2(subcat[i][0]), subcat[i][2]);
                console.log(subcat[i][0]);
            }        
        }
    }  
	
	</script>
<%Dim ArticleID,zt
ArticleID=Trim(Request.QueryString("ArticleID"))
set oRs=Server.CreateObject("ADODB.Recordset")

if ArticleID="" then

oRs.Open "select * from [Table_Product] order by cg desc",conn,1,3
zt="display:block;"
else
oRs.Open "select * from [Table_Product] where ArticleID="&ArticleID,conn,1,3
zt="display:none;"
end if

 %>
<!--成功失败提示-->
<div class="alert" id="alert alert-success" style="<%=zt%>">
                                  <button class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                                  <strong>操作成功！</strong> <span>已保存为草稿。</span>
                              </div>
 
                          <!----> 
 
                          <!----> 
              <div class="row ">
                  <div class="col-lg-12">
                      <section class="panel pb50">
                          <header class="panel-heading mb50">
                              项目修改
                          </header>
                          <%



if oRs.Eof then
'无数据
End if
if ors("clxid")="" then
clxid=0
else
clxid=ors("clxid")
end if
if ors("clbid")="" then
clbid=0
else
clbid=ors("clbid")
end if
if ors("ckfsid")="" then
ckfsid=0
else
ckfsid=ors("ckfsid")
end if
%>
                      <form name="myform" id="myform">    
                            <div class="form-group row">
    <label for="SiteName" class="col-sm-2 control-label text-right xglab">地域分类</label>
    <div class="col-sm-10 row">
    <div class="col-sm-3">
      <%
sql = "select * from [Table_ProBigClass] order by orderid desc,bigclassid desc"
rs.open sql,conn,1,1
if rs.eof and rs.bof then
	response.write "请先添加栏目。"
else
%>
<select name="BigClassName" id="BigClass" class="form-control" onChange="changelocation(document.myform.BigClassName.options[document.myform.BigClassName.selectedIndex].value)" size="1">

<%
dim selclass
	selclass=ors("BigClassName")

	do while not rs.eof
%>
            <option value="<%=trim(rs("BigClassName"))%>;<%=trim(rs("BigClassId"))%>" <%if trim(ors("BigClassId"))=trim(rs("BigClassId")) then%>selected<%end if%>><%=jmyh2(rs("BigClassName"))%></option>
            <%
			rs.movenext
		loop
end if
	rs.close
%>
        </select></div><div class="col-sm-3">
          <select name="SmallClassName" id="SmallClass" class="form-control">
            <option value="" >不指定小类</option>
            <%
sql="select * from [Table_ProSmallclass] where BigClassName='" & selclass & "' order by orderid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then


do while not rs.eof

%>
            <option value="<%=rs("SmallClassName")%>;<%=rs("SmallClassId")%>" <%if ors("SmallClassId")=rs("SmallClassId") then%>selected<%end if%> ><%=jmyh2(rs("SmallClassName"))%></option>
            <%
rs.movenext
loop
end if
rs.close

%>
      </select>
      </div>
    </div>
  </div>


    <div class="form-group row">
    <label for="Title" class="col-sm-2 control-label text-right xglab">专业名称</label>
    <div class="col-sm-10 row">
<!--    <div class="col-sm-4 input-group">
        <span class="input-group-addon">中文名</span>
          <input type="text" name="Title" class="form-control" id="Title" value="<%=ors("Title")%>" >
        </div>-->
    <div class="col-sm-4 input-group">
    <!--<span class="input-group-addon">英文名</span>-->
      <input type="text" name="Title" class="form-control" id="Title" value="<%=ors("Title")%>" >
    </div>
    </div>
  </div>
  
<div class="form-group row">
    <label for="content" class="col-sm-2 control-label text-right xglab">专业介绍</label>
    <div class="col-sm-7 ">                          
<!--列表开始-->
<%
Dim htmlData

htmlData =ors("content")

Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
			filterMode: false,//是否开启过滤模式
				cssPath : 'kindeditor-4.1.7/plugins/code/prettify.css',
				uploadJson : 'kindeditor-4.1.7/asp/upload_json.asp',
				fileManagerJson : 'kindeditor-4.1.7/asp/file_manager_json.asp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				},afterBlur: function(){this.sync();}
			});
			prettyPrint();
		});
	</script>


<textarea name="content" id="content" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

    </div>
  </div>
      <div class="form-group row">
    <label for="Orderid" class="col-sm-2 control-label text-right xglab">排序ID</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
      <input type="text" name="Orderid" class="form-control" id="Orderid" value="<%=ors("orderid")%>" >
    </div>
    </div>
  </div>
      <div class="form-group row">
    <label for="uptime" class="col-sm-2 control-label text-right xglab">更新时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
      <input type="text" name="uptime" class="form-control" id="uptime" value="<%=ors("Updatetime")%>" >
    </div>
    </div>
  </div>


<div class="row">
<div class="col-lg-offset-2 col-lg-6">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">发布信息</button>&nbsp;<button class="btn btn-info save2" type="button" style="margin:15px auto;">保存草稿</button>
<input id="action" value="mod" type="hidden">
<input id="pro_id" value="<%=ors("ArticleId")%>" type="hidden">
</div>
  </div>
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
<%
ors.close
set ors=nothing
%>
<!--#include file="inc/xgfooter.asp"-->
<!--#include file="inc/windows.asp"-->
  <script type="text/javascript">
//导航菜单
$(".nav2").addClass('active');
$(".nav2-4").addClass('active');

</script>
<script type="text/javascript" src="ajax/pro.js"></script>
