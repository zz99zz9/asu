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
	t=rs("t")
	d=rs("d")
	k=rs("k")
	te=rs("te")
	de=rs("de")
	ke=rs("ke")
	end if	
	rs.close
	set rs=nothing
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
                          
<!--列表开始-->
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

  <div class="row" style="margin-top:15px;">
  <div class="col-lg-offset-1 col-lg-8">
<textarea name="content" id="content" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

<input name="type_wj" id="type_wj" class="form-control" value="<%=title%>" type="hidden">
<input name="type_wjen" id="type_wjen" class="form-control" value="<%=titleen%>" type="hidden">
<input type="hidden" value="<%=type_wj%>" id="gsjsid">
<input name="t" id="t" class="form-control" value="<%=t%>" type="hidden" placeholder="中文标题">
<input name="d" id="d" class="form-control" value="<%=d%>" type="hidden" placeholder="中文描述">
<input name="k" id="k" class="form-control" value="<%=k%>" type="hidden" placeholder="中文关键词">
<input name="te" id="te" class="form-control" value="<%=te%>" type="hidden" placeholder="英文标题">
<input name="de" id="de" class="form-control" value="<%=de%>" type="hidden" placeholder="英文描述">
<input name="ke" id="ke" class="form-control" value="<%=ke%>" type="hidden" placeholder="英文关键词"><!---->
</div>
</div>
<div class="row">
<div class="col-lg-offset-1 col-lg-8">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">保存设置</button>
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

  <script type="text/javascript">
//导航菜单

$(".nav4").addClass('active');
$(".nav4-2").addClass('active');


</script>
<script type="text/javascript" src="ajax/single.js"></script>
