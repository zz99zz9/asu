<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 50%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>

    <legend>资料上传</legend>

  <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        tjxpic=rs("tjxpic")
        js1pic=rs("js1pic")
        js2pic=rs("js2pic")
        js3pic=rs("js3pic")
        lwpic=rs("lwpic")

    end if
'    Rs.close
'set Rs=Nothing
    %>
    <form name="form2" id="form2" >
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="tjxpic">
            <i class="am-icon-cloud-upload"></i> 上传推荐信照片</button>
            <input type="hidden" class="tjxpic upfile2" name="tjxpic"  value="<%=tjxpic%>">
            <span class="errinfo"></span>
            <div class="am-badge tjxpicok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="js1pic">
            <i class="am-icon-cloud-upload"></i> 上传自我介绍短视频1</button>
            <input type="hidden" class="js1pic upfile2" name="js1pic"  value="<%=js1pic%>">
            <span class="errinfo"></span>
            <div class="am-badge js1picok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="js2pic">
            <i class="am-icon-cloud-upload"></i> 上传自我介绍短视频2</button>
            <input type="hidden" class="js2pic upfile2" name="js2pic" value="<%=js2pic%>">
            <span class="errinfo"></span>
            <div class="am-badge js2picok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="js3pic">
            <i class="am-icon-cloud-upload"></i> 上传自我介绍短视频3</button>
            <input type="hidden" class="js3pic upfile2" name="js3pic"  value="<%=js3pic%>">
            <span class="errinfo"></span>
            <div class="am-badge js3picok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="lwpic">
            <i class="am-icon-cloud-upload"></i> 上传论文</button>
            <input type="hidden" class="lwpic upfile2" name="lwpic" value="<%=lwpic%>">
            <span class="errinfo"></span>
            <div class="am-badge lwpicok" style="display:none;">ok</div>
        </div>



        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(4)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(6)">下一页</button>
</form>
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
<!--#include file="inc/upfile.asp"-->
<script type="text/javascript" src="xgwl/ajax/apply-5.js"></script>
</body>
</html>
