<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 38%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>监护人</legend>
  <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        faname=rs("faname")
        faaddress=rs("faaddress")
        fatel=rs("fatel")
        moname=rs("moname")
        moaddress=rs("moaddress")
        motel=rs("motel")

    end if
 '   Rs.close
'set Rs=Nothing
    %>

        <div class="am-form-group">
            <input type="text" class="faname" placeholder="父亲的名称" value="<%=faname%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="faaddress" placeholder="父亲的工作单位及职位" value="<%=faaddress%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="fatel" placeholder="父亲的联系电话" value="<%=fatel%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="moname" placeholder="母亲的名称" value="<%=moname%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="moaddress" placeholder="母亲的工作单位及职位" value="<%=moaddress%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="text" class="motel" placeholder="母亲的联系电话" value="<%=motel%>">
            <span class="errinfo"></span>
        </div>



        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(3)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(5)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-4.js"></script>
</body>
</html>
