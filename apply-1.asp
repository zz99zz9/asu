<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 1%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>基本信息</legend>
    <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        cname=rs("cname")
        fname=rs("fname")
        lname=rs("lname")
        bdate=rs("bdate")
        sfz=rs("sfz")
        sfzpic1=rs("sfzpic1")
        sfzpic2=rs("sfzpic2")
        hz=rs("hz")
        hzpic=rs("hzpic")
        usa=rs("usa")
        sex=rs("sex")
        cc=rs("cc")
        recommend=rs("recommend")
    end if
'    Rs.close
'set Rs=Nothing
    %>
<form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="cname" placeholder="中文名" value="<%=cname%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <input type="text" class="fname" placeholder="First name" value="<%=fname%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <input type="text" class="lname" placeholder="Last name" value="<%=lname%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
            <input type="text" class="am-form-field bdate" value="<%=bdate%>" placeholder="请选择您的生日" data-am-datepicker readonly required >
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="sfz" id="" placeholder="身份证号码" value="<%=sfz%>">
            <span class="errinfo"></span>
        </div>

            <div class="am-form-group  am-u-sm-6" style="padding-left:0px">
          
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="sfzpic1">
            <i class="am-icon-cloud-upload"></i> 上传身份证背面照片</button>
            <input type="hidden" class="sfzpic1 upfile2" name="sfzpic1" value="<%=sfzpic1%>">
            <span class="errinfo"></span>
            <div class="am-badge sfzpic1ok" style="display:none;">ok</div>

            
        </div>
<div class="am-form-group am-u-sm-6">
          
        <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="sfzpic2">
            <i class="am-icon-cloud-upload"></i> 上传身份证背面照片</button>
        <input type="hidden" class="sfzpic2 upfile2" name="sfzpic2" value="<%=sfzpic2%>">
        <span class="errinfo"></span>
        <div class="am-badge sfzpic2ok" style="display:none;">ok</div>
            
        </div>
        <div class="am-form-group">
            <input type="text" class="hz" id="" placeholder="护照号码" value="<%=hz%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="hzpic">
            <i class="am-icon-cloud-upload"></i> 上传护照首页照片</button>
            <input type="hidden" class="hzpic upfile2" name="hzpic"  value="<%=hzpic%>">
            <span class="errinfo"></span>
            <div class="am-badge hzpicok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
       <label for="doc-ipt-email-1">本人是美国公民：</label>
            <label class="am-radio-inline">
                <input type="radio"  value="是" name="usa" class="usa"> 是
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="否" name="usa" class="usa"> 不是
            </label>
        </div>


        <div class="am-form-group">
        <label for="doc-ipt-email-1">性别：</label>
            <label class="am-radio-inline">
                <input type="radio"  value="男" name="sex" class="sex"> 男
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="女" name="sex" class="sex"> 女
            </label>

        </div>
                <div class="am-form-group">
            <input type="text" class="recommend" placeholder="推荐人/推荐公司/推荐学校/如果没有请写无" value="<%=recommend%>">
            <input type="hidden" class="aid" value="<%=request.cookies("aid")%>">
        </div>
<input type="hidden" class="step" value="1">

        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="save(2)">下一步</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-1.js"></script>
</body>
</html>
