﻿<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 25%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>关于ASU</legend>
  <%aid=request.cookies("aid")

    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        asu=rs("asu")
        asuid=rs("asuid")
        asuselect=rs("asuselect")

    end if
 '   Rs.close
'set Rs=Nothing
    %>

<div class="am-form-group">
        <label for="doc-ipt-email-1">已经有ASU ID：</label>
            <label class="am-radio-inline">
                <input type="radio"  value="是" name="asu" class="asu" <%if asu="是" then%> checked<%end if%>> 是
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="否" name="asu" class="asu" <%if asu="否" then%> checked<%end if%>> 否
            </label>

        </div>
        <div class="am-form-group">
            <input type="text" class="asuid" placeholder="如果有请填写您的ASU ID，没有可为空" value="<%=asuid%>">
        </div>

        <div class="am-form-group">
            <label for="doc-select-1">是否在ASU就读过？</label>
                <select id="doc-select-1" class="alasu asuselect">
                    <option value="曾在ASU完成本科学位" <%if asuselect="曾在ASU完成本科学位" then%>selected="selected"<%end if%>>曾在ASU完成本科学位</option>
                    <option value="曾在ASU就读，没有拿到学位证" <%if asuselect="曾在ASU就读，没有拿到学位证" then%>selected="selected"<%end if%>>曾在ASU就读，没有拿到学位证</option>
                    <option value="曾经参加过ASU的全球项目" <%if asuselect="曾经参加过ASU的全球项目" then%>selected="selected"<%end if%>>曾经参加过ASU的全球项目</option>
                    <option value="曾经参与过ASU全球新生学院" <%if asuselect="曾经参与过ASU全球新生学院" then%>selected="selected"<%end if%>>曾经参与过ASU全球新生学院</option>
                    <option value="曾经参加过ASU夏令营" <%if asuselect="曾经参加过ASU夏令营" then%>selected="selected"<%end if%>>曾经参加过ASU夏令营</option>
                    <option value="其他" <%if asuselect="其他" then%>selected="selected"<%end if%>>其他</option>
                    <option value="从没到过ASU" <%if asuselect="从没到过ASU" then%>selected="selected"<%end if%>>从没到过ASU</option>
                </select>
            <span class="am-form-caret"></span>
        </div>

        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(2)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(4)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-3.js"></script>
</body>
</html>
