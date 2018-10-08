<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 80%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>成绩单</legend>
    <form name="form2" id="form2" >
        <div class="am-form-group">
            <input type="text" class="toefl" placeholder="托福成绩">
        </div>

        <div class="am-form-group">
            <input type="text" class="ielts" placeholder="雅思成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="act" placeholder="ACT成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="sat" placeholder="SAT成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="gmat" placeholder="GMAT成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="gre" placeholder="GRE成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="mschool" placeholder="就读初中">
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="mspic">
            <i class="am-icon-cloud-upload"></i> 上传初中成绩单</button>
            <input type="hidden" class="mspic upfile2" name="mspic"  value="<%=mspic%>">
            <span class="errinfo"></span>
            <div class="am-badge mspicok" style="display:none;">ok</div>
        </div>
        
        <div class="am-form-group">
            <input type="text" class="hschool" placeholder="就读高中">
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="hspic">
            <i class="am-icon-cloud-upload"></i> 上传高中成绩单</button>
            <input type="hidden" class="hspic upfile2" name="hspic"  value="<%=hspic%>">
            <span class="errinfo"></span>
            <div class="am-badge hspicok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <input type="text" class="uschool" placeholder="就读大学">
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="uspic">
            <i class="am-icon-cloud-upload"></i> 上传大学成绩单</button>
            <input type="hidden" class="uspic upfile2" name="uspic"  value="<%=uspic%>">
            <span class="errinfo"></span>
            <div class="am-badge uspicok" style="display:none;">ok</div>
        </div>


        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(6)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(8)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-7.js"></script>
</body>
</html>
