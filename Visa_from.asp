 <%cid=Request.QueryString("cid")%>
 <!--#include file="inc/conn.asp"-->
  <!--#include file="inc/function.asp"-->
 <!--#include file="inc/inc.asp"-->
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->

<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend><%call showName("class_visa",cid,"cid","cname")%>签证</legend>
   
<form name="form2" id="form2" >

        <div class="am-form-group">
            <input type="text" class="fname" placeholder="First Name" >
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="lname" placeholder="Last Name">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="cname" placeholder="姓名">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="hz" placeholder="护照号">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="email" placeholder="电子邮箱">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <input type="Text" class="tel" placeholder="联系电话">
            <span class="errinfo"></span>
        </div>
        <div class="am-checkbox"><label><input type="checkbox"> 签约电子合同</label></div>

<input type="hidden" class="step" value="1">
        <input type="hidden" class="cid" value="<%=cid%>">
        <input type="hidden" class="uid" value="<%=request.cookies("uid")%>">
        <input type="hidden" class="action" value="add">
        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="save()">微信支付</button>

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
<script type="text/javascript" src="xgwl/ajax/visa.js"></script>
</body>
</html>
