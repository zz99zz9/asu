
<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
         
              <!-- page start -->

                            <!--成功失败提示-->
<div class="alert" id="alert" style="display:none;">
                                  <button class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                                  <strong>操作成功！</strong> <span>栏目内容修改成功。</span>
                              </div>
 
                          <!----> 
              <div class="row ">
                  <div class="col-lg-12">
                      <section class="panel pb50">
                          <header class="panel-heading mb50">
                              信息修改
                          </header>
                      <form name="myform" id="myform">    
                      <%
Dim PID
PID=Trim(Request.QueryString("ID"))
classid=Trim(Request.QueryString("Prod_Type"))
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [prod] where prod_id="&PID,conn,1,3
if oRs.Eof then
'无数据
End if
%>
<!--国家分类开始-->
    <div class="form-group row">
    <label for="prod_name" class="col-sm-2 control-label text-right xglab">所属类别</label>
    <div class="col-sm-7">
       <%
       Set crs=Server.CreateObject("ADODB.Recordset")
csql = "select * from [Class_wc] order by oid desc,cid desc"
crs.open csql,conn,1,1
if crs.eof and crs.bof then
	response.write "请先添加栏目。"
else
%>
<select name="cid" id="cid" class="form-control" size="1">
          
<%

	do while not crs.eof
%>
             <option <%if trim(ors("cId"))=trim(crs("cId")) then%>selected<%end if%> value="<%=trim(crs("CID"))%>"><%=trim(crs("CName"))%></option>
            <%
			crs.movenext
		loop
end if
	crs.close
%>
        </select>
    </div>
  </div>
  <!--国家分类结束-->
    <div class="form-group row">
    <label for="prod_name" class="col-sm-2 control-label text-right xglab">标题</label>
    <div class="col-sm-7">
      <input type="text" name="prod_name" class="form-control" id="prod_name" value="<%=oRs("prod_name")%>">
    </div>
  </div>

        <div class="form-group row">
    <label for="DefaultPicUrl" class="col-sm-2 control-label text-right xglab">列表图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="DefaultPicUrl" type="text" id="DefaultPicUrl" class="form-control col-sm-6" value="<%=oRs("prod_pic")%>"></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=DefaultPicUrl&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>


<div class="form-group row">
    <label for="content" class="col-sm-2 control-label text-right xglab">内容</label>
    <div class="col-sm-7 ">                          
<!--列表开始-->
<%
Dim htmlData

htmlData =oRs("prod_detail")

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
    <label for="uptime" class="col-sm-2 control-label text-right xglab">更新时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
      <input type="text" name="uptime" class="form-control" id="uptime" value="<%=ors("prod_date")%>" >
    </div>
    </div>
  </div>
    <div class="form-group row">
    <label for="Oid" class="col-sm-2 control-label text-right xglab">排序ID</label>
    <div class="col-sm-7 row">
    <div class="col-sm-2">
      <input type="text" name="Oid" class="form-control" id="Oid" value="<%=oRs("oid")%>" placeholder="数字越大排序越靠前" >
      </div>
    </div>
  </div>
  <%if classid=20 or classid=21 or classid=22 or classid=23 then%>
   <div class="form-group row">
    <label for="ioid" class="col-sm-2 control-label text-right xglab">首页排序</label>
    <div class="col-sm-7 row">
    <div class="col-sm-2">
      <input type="text" name="ioid" class="form-control" id="ioid" value="<%=oRs("ioid")%>" placeholder="数字越大排序越靠前" >
      </div><div class=col-sm-4><select class="form-control" id="clb"><option>类别</option>
                <%

sql="select * from [class_lb] order by oid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then

do while not rs.eof
%>
            <option value="<%=rs("Cid")%>" <%if int(rs("cid"))=int(ors("clbid")) then%>selected<%end if%>><%=rs("CName")%></option>
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
  <%else%>
  <input type="hidden" name="ioid" id="ioid" value="0">
  <input type="hidden" name="clb" id="clb" value="0">
  <%end if%>
   <div class="form-group row">
    <label for="Passed" class="col-sm-2 control-label text-right xglab">是否审核</label>
    <div class="col-sm-7">
      <input name="Passed" type="checkbox" id="Passed" value="yes" <%if ors("Passed")="True" then%>checked<%end if%>>
    </div>
  </div>
    <div class="form-group row">
    <label for="Elite" class="col-sm-2 control-label text-right xglab">推荐显示</label>
    <div class="col-sm-7">
     	<input name="Elite" type="checkbox" id="Elite" value="yes" <%if ors("Elite")="True" then%>checked<%end if%>>
    </div>
  </div>
<div class="row">
<div class="col-lg-offset-2 col-lg-7">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">保存</button>
<input id="action" value="mod" type="hidden">
<input id="classid" value="<%=oRs("classid")%>" type="text">
<input id="pid" value="<%=oRs("prod_id")%>" type="hidden">
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

<!--#include file="inc/xgfooter.asp"-->
<!--#include file="inc/windows.asp"-->
  <script type="text/javascript">
//导航菜单
$(".nav3").addClass('active');
$(".nav3-<%=classid%>").addClass('active');

</script>
<script type="text/javascript" src="ajax/prod.js"></script>
