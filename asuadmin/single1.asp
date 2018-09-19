<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start -->
              <%

type_wj=request("nav")

set rs=server.createobject("adodb.recordset")
    sql="select * from gsjs where gsjsid="&type_wj
	rs.open sql,conn,3,3	
	if rs.eof then
	else
	text=rs("gsjstext")	
texten=rs("gsjstexten")
	title=rs("type_wj")
	titleen=rs("type_wjen")
	txt2=rs("txt2")
	txt3=rs("txt3")
	txt2en=rs("txt2en")
	txt3en=rs("txt3en")
	pic1=rs("pic1")
	pic2=rs("pic2")
	pic3=rs("pic3")
	lpic1=rs("lpic1")
	lpic2=rs("lpic2")
	lpic3=rs("lpic3")
	links1=rs("links1")
	links2=rs("links2")
	links3=rs("links3")
	t=rs("t")
	d=rs("d")
	k=rs("k")
	te=rs("te")
	de=rs("de")
	ke=rs("ke")
	end if	
	rs.close
	set rs=nothing
	txt2=txt2&"&nbsp;"
	txt2en=txt2en&"&nbsp;"
	txt3=txt3&"&nbsp;"
	txt3en=txt3en&"&nbsp;"

%>
                            <!--成功失败提示-->
<div class="alert" id="alert" style="display:none;">
                                  <button class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                                  <strong>操作成功！</strong> <span>"<%=title%>" 栏目内容修改成功。</span>
                              </div>
 
                          <!----> 
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              <%=title%>
                          </header>
                 <div class="row" style="margin-top:15px;">
  <div class="col-lg-offset-1 col-lg-8">     
	  <form name="myform" id="myform">       
<!--列表开始-->
<div class="form-group row">
    <label for="pic1" class="col-sm-2 control-label text-right xglab">行业痛症图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic1" type="text" id="pic1" class="form-control col-sm-6" value='<%=pic1%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic1&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="pic1" class="col-sm-2 control-label text-right xglab">行业痛症中文</label>
    <div class="col-sm-10 row">
<%
Dim htmlData

htmlData =text

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
</div></div>
<div class="form-group row">
    <label for="pic1" class="col-sm-2 control-label text-right xglab">行业痛症英文</label>
    <div class="col-sm-10 row">
<%htmlData =texten%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="contenten"]', {
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
<textarea name="contenten" id="contenten" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>
</div></div>
<!---->
<div class="form-group row">
    <label for="pic2" class="col-sm-2 control-label text-right xglab">解决方案图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic2" type="text" id="pic2" class="form-control col-sm-6" value='<%=pic2%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic2&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="txt2" class="col-sm-2 control-label text-right xglab">解决方案中文</label>
    <div class="col-sm-10 row">
<%
htmlData =txt2

%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt2"]', {
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


<textarea name="txt2" id="txt2" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>
</div></div>
<div class="form-group row">
    <label for="txt2en" class="col-sm-2 control-label text-right xglab">解决方案英文</label>
    <div class="col-sm-10 row">
<%htmlData =txt2en%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt2en"]', {
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
<textarea name="txt2en" id="txt2en" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>
</div></div>
<!---->
<div class="form-group row">
    <label for="pic3" class="col-sm-2 control-label text-right xglab">行业收益图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic3" type="text" id="pic3" class="form-control col-sm-6" value='<%=pic3%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic3&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="txt3" class="col-sm-2 control-label text-right xglab">行业收益中文</label>
    <div class="col-sm-10 row">
<%
htmlData =txt3

%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt3"]', {
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


<textarea name="txt3" id="txt3" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>
</div></div>
<div class="form-group row">
    <label for="txt3en" class="col-sm-2 control-label text-right xglab">解决方案英文</label>
    <div class="col-sm-10 row">
<%htmlData =txt3en%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt3en"]', {
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
<textarea name="txt3en" id="txt3en" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>
</div></div>
<!---->
  <div class="form-group row">
    <label for="lpic1" class="col-sm-2 control-label text-right xglab">案例一图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="lpic1" type="text" id="lpic1" class="form-control col-sm-6" value='<%=lpic1%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=lpic1&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
	</div>
	<div class="form-group row">
	 <label for="links1" class="col-sm-2 control-label text-right xglab">案例一链接</label>
    <div class="col-sm-10 row">
		<input name="links1" id="links1" class="form-control" value="<%=links1%>" type="text">
    </div>
	</div>
  <div class="form-group row">
    <label for="lpic2" class="col-sm-2 control-label text-right xglab">案例二图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="lpic2" type="text" id="lpic2" class="form-control col-sm-6" value='<%=lpic2%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=lpic2&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
	</div>
	<div class="form-group row">
	 <label for="links2" class="col-sm-2 control-label text-right xglab">案例二链接</label>
    <div class="col-sm-10 row">
		<input name="links2" id="links2" class="form-control" value="<%=links2%>" type="text">
    </div>
	</div>
	  <div class="form-group row">
    <label for="lpic3" class="col-sm-2 control-label text-right xglab">案例三图片</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="lpic3" type="text" id="lpic3" class="form-control col-sm-6" value='<%=lpic3%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=lpic3&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
	</div>
	<div class="form-group row">
	 <label for="links3" class="col-sm-2 control-label text-right xglab">案例三链接</label>
    <div class="col-sm-10 row">
		<input name="links3" id="links3" class="form-control" value="<%=links3%>" type="text">
    </div>
	</div>
	<div class="form-group row hidden">
	 <label for="links3" class="col-sm-2 control-label text-right xglab">栏目中文名称</label>
    <div class="col-sm-10 row">
		<input name="type_wj" id="type_wj" class="form-control" value="<%=title%>" type="text">
	</div></div>
		<div class="form-group row hidden">
	 <label for="links3" class="col-sm-2 control-label text-right xglab">栏目英文名称</label>
    <div class="col-sm-10 row">
<input name="type_wjen" id="type_wjen" class="form-control" value="<%=titleen%>" type="text">
</div></div>
<div class="form-group row hidden">
	 <label for="links3" class="col-sm-2 control-label text-right xglab">栏目编号</label>
    <div class="col-sm-10 row">
<input type="text" value="<%=type_wj%>" id="gsjsid">
</div></div>
<div class="form-group row hidden">
	 <label for="t" class="col-sm-2 control-label text-right xglab">中文Title</label>
    <div class="col-sm-10 row">
<input name="t" id="t" class="form-control" value="<%=t%>" type="text" placeholder="中文标题">
</div></div>
<div class="form-group row hidden">
	 <label for="d" class="col-sm-2 control-label text-right xglab">中文Describe</label>
    <div class="col-sm-10 row">
<input name="d" id="d" class="form-control" value="<%=d%>" type="text" placeholder="中文描述">
</div></div>
<div class="form-group row hidden">
	 <label for="k" class="col-sm-2 control-label text-right xglab">中文Key</label>
    <div class="col-sm-10 row">
<input name="k" id="k" class="form-control" value="<%=k%>" type="text" placeholder="中文关键词">
</div></div>
<div class="form-group row hidden">
	 <label for="te" class="col-sm-2 control-label text-right xglab">英文Title</label>
    <div class="col-sm-10 row">
<input name="te" id="te" class="form-control" value="<%=te%>" type="text" placeholder="英文标题">
</div></div>
<div class="form-group row hidden">
	 <label for="de" class="col-sm-2 control-label text-right xglab">英文Describe</label>
    <div class="col-sm-10 row">
<input name="de" id="de" class="form-control" value="<%=de%>" type="text" placeholder="英文描述">
</div></div>
<div class="form-group row hidden">
	 <label for="ke" class="col-sm-2 control-label text-right xglab">英文Key</label>
    <div class="col-sm-10 row">
<input name="ke" id="ke" class="form-control" value="<%=ke%>" type="text" placeholder="英文关键词">
</div></div>
</div>
</div>
<div class="row">
<div class="col-lg-offset-2 col-lg-8">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">保存设置</button>
</div>
  </div>

<!--列表结束-->
</form>
                      </section>
                  </div>
              </div>

              <!--  page end  -->
          </section>
      </section>
      <!--main content end-->
  </section>

<!--#include file="inc/xgfooter.asp"-->
<%
type_wj=int(type_wj)
if type_wj<7 then
wj=2
elseif type_wj>6 and type_wj<17 then
wj=3
elseif type_wj>16 and type_wj<21 then
 wj=7
elseif type_wj>20  then
wj=4
end if
%>
  <script type="text/javascript">
//导航菜单

$(".nav<%=wj%>").addClass('active');
$(".nav<%=wj%>-<%=type_wj%>").addClass('active');

</script>
<script type="text/javascript" src="ajax/single1.js"></script>
