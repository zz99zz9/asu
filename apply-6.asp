<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
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
        <div class="am-form-group">
            <label for="doc-select-1" class="">校区选择</label>
                <select id="doc-select-1" class="schoolzone">
        <!--<%if schoolzone="" then %> <option value="">请选择校区</option><%else%><option value="<%=schoolzone%>"><%=schoolzone%></option><%end if%>-->
                </select>
            <span class="am-form-caret"></span>
        </div>
        <div class="am-form-group">
            <label for="doc-select-1">学院选择</label>
                <select id="doc-select-1" class="college">
<!--<%if college="" then %> <option value="">请选择学院</option><%else%><option value="<%=college%>"><%=college%></option><%end if%>-->
                </select>
            <span class="am-form-caret"></span>
        </div>
                <div class="am-form-group">
            <label for="doc-select-1">专业选择</label>
                <select id="doc-select-1" class="major">
<!--<%if major="" then %> <option value="">请选择学院</option><%else%><option value="<%=major%>"><%=major%></option><%end if%>-->
                </select>
            <span class="am-form-caret"></span>
        </div>

    


<input type="hidden" class="step" value="2">
<input type="hidden" class="action" value="add">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(5)">上一页</button>
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
