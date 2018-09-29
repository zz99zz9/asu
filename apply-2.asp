<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 12%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>联系信息</legend>
  <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        address1=rs("address1")
        address2=rs("address2")
        email=rs("email")
        tel=rs("tel")
        code=rs("code")

    end if
'    Rs.close
'set Rs=Nothing
    %>


        <div class="am-form-group">
            <input type="text" class="address2" placeholder="收件地址：国家+城市+详细地址+手机号+收件人+邮编" value="<%=address2%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <input type="text" class="email" placeholder="电子邮箱，非QQ邮箱" value="<%=email%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <input type="text" class="tel" placeholder="手机号" value="<%=tel%>">
            <span class="errinfo"></span>
        </div>


        <div class="am-form-group">
            <input type="text" class="code" id="" placeholder="邮政编码" value="<%=code%>">
            <span class="errinfo"></span>
        </div>

        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(1)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(3)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-2.js"></script>
</body>
</html>
