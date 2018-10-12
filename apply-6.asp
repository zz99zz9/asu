<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
 <link rel="stylesheet" href="xgwl/css/lib/amazeui.chosen.css">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 63%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>校区及专业选择</legend>
  <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3
      if not(rs.eof and rs.bof) then
          schoolzone=rs("schoolzone")
          college=rs("college")
          major=rs("major")
      end if
    end if
 '   Rs.close
'set Rs=Nothing
    %>
    <style>
      b{color:#831c3a;}
      
    </style>
    <div class="am-form-group">
      <b>step 1</b><br>
        下载“<a href="xgwl/pdf/ASU_degrees_web.pdf" target="blank">专业选择表</a>”<br><br>
      <b>step 2</b><br>
        勾选您要选择的专业<br><br>
      <b>step 3</b><br>
        拍照上传
    </div>
        <div class="am-form-group">
<<<<<<< HEAD
            <label for="doc-select-1" class="">校区选择</label>
                <select id="doc-select-1" class="schoolzone">
      
                </select>
            <span class="am-form-caret"></span>
        </div>
        <div class="am-form-group">
            <label for="doc-select-1">学院选择</label>
                <select id="doc-select-1" class="college">

                </select>
            <span class="am-form-caret"></span>
        </div>
                <div class="am-form-group">
            <label for="doc-select-1">专业选择</label>
                <select id="doc-select-1" class="major">

                </select>
            <span class="am-form-caret"></span>
        </div>

=======
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="major">
            <i class="am-icon-cloud-upload"></i> 上传我的专业选择表</button>
            <input type="hidden" class="major upfile2" name="major"  value="<%=major%>">
            <span class="errinfo"></span>
            <div class="am-badge majorok" style="display:none;">ok</div>
        </div>
>>>>>>> dev
    
<div class="am-form-group">
<BR>
</div>

<input type="hidden" class="step" value="2">
<input type="hidden" class="action" value="add">
<%
if request.cookies("kid")=2 then
    n=4
    else
    n=5
end if
%>
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(<%=n%>)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(7)">下一页</button>
  </fieldset>
   </div>

  </div>


<footer class="am-margin-top">
  <hr/>
  <p class="am-text-center">
    <small></small>
  </p>
</footer>
<!-- 以上页面内容 开发时删除 -->
<!--#include file="inc/footer.asp"-->
<script src="xgwl/js/lib/amazeui.chosen.min.js"></script>
<script type="text/javascript" src="xgwl/ajax/apply-6.js"></script>
</body>
</html>
