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

        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="托福成绩">
        </div>

        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="雅思成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="ACT成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="SAT成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="GMAT成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="GRE成绩">
        </div>
        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="就读初中">
        </div>

        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传初中成绩单
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>
        
        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="就读高中">
        </div>

        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传高中成绩单
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>

        <div class="am-form-group">
            <input type="text" class="haddress" placeholder="就读大学">
        </div>

        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传大学成绩单
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>





        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(6)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(8)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-7.js"></script>
</body>
</html>
