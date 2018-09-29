<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!--#include file="inc/header.asp">
<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 92%"></div>
</div>
  </div>
</div>
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>
    <legend>凭证上传</legend>


        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传银行存款证明
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>
        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传银行存款证明2
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>
        
        <div class="am-form-group">
            <a href="#">Financial Guarantee Form 表格模板下载</a>
        </div>

        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传 Financial Guarantee Form 
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>

        <div class="am-form-group">
            <a href="#">父母允许表 表格模板下载</a>
        </div>

        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传 父母允许表 
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>

        <div class="am-form-group">
        如学生已在美国就读，提供转学表<br>
            <a href="#">转学表 表格模板下载</a>
        </div>

        <div class="am-form-group am-form-file">
            <button type="button" class="am-btn am-btn-warning am-btn-sm">
                <i class="am-icon-cloud-upload"></i> 上传 转学表 
            </button>
            <input id="hzpic" type="file" class="upfile hzpic" multiple>
            <div id="upfilename"></div>
        </div>








        
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(7)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(9)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-8.js"></script>
</body>
</html>
