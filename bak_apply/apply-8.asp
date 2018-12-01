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

<form name="form2" id="form2" >

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="bankpic1">
            <i class="am-icon-cloud-upload"></i> 上传银行存款证明</button>
            <input type="hidden" class="bankpic1 upfile2" name="bankpic1"  value="<%=bankpic1%>">
            <span class="errinfo"></span>
            <div class="am-badge bankpic1ok" style="display:none;">ok</div>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="bankpic2">
            <i class="am-icon-cloud-upload"></i> 上传银行存款证明2</button>
            <input type="hidden" class="bankpic2 upfile2" name="bankpic2"  value="<%=bankpic2%>">
            <span class="errinfo"></span>
            <div class="am-badge bankpic2ok" style="display:none;">ok</div>
        </div>
        
        <div class="am-form-group">
            <a href="xgwl/pdf/financial-guarantee-form_9-10-18.pdf" target="blank">Financial Guarantee Form 表格模板下载</a>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="fgfpic">
            <i class="am-icon-cloud-upload"></i> 上传 Financial Guarantee Form</button>
            <input type="hidden" class="fgfpic upfile2" name="fgfpic"  value="<%=fgfpic%>">
            <span class="errinfo"></span>
            <div class="am-badge fgfpicok" style="display:none;">ok</div>
        </div>


        <div class="am-form-group">
            <a href="#">父母允许表 表格模板下载</a>
        </div>


        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="parentspic">
            <i class="am-icon-cloud-upload"></i> 上传 父母允许表</button>
            <input type="hidden" class="parentspic upfile2" name="parentspic"  value="<%=parentspic%>">
            <span class="errinfo"></span>
            <div class="am-badge parentspicok" style="display:none;">ok</div>
        </div>
        <div class="am-form-group">
        如学生已在美国就读，提供转学表<br>
            <a href="xgwl/pdf/sevis-transfer-form_9-10-18a.pdf" target="blank">转学表 表格模板下载</a>
        </div>

        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="schoolpic">
            <i class="am-icon-cloud-upload"></i> 上传 转学表</button>
            <input type="hidden" class="schoolpic upfile2" name="schoolpic"  value="<%=schoolpic%>">
            <span class="errinfo"></span>
            <div class="am-badge schoolpicok" style="display:none;">ok</div>
        </div>
<style>
.overflow{
    width:400px;
    height:450px;
    overflow:auto;
    text-align:left;
}
.xy1{display:blank;background:#666;}

</style>
  <div class="am-form-group">
      <div class="checkbox xy" >
          <input type="checkbox" value="yes" id="xy"> 已阅读并同意<a href="#"  id="xy1" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 525}">留学协议</a>
          <span class="xy1" style="display:none;">请先阅读留学协议</span>
      </div>
  </div>
<!--协议-->

<div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
  <div class="am-modal-dialog">
    <div class="am-modal-hd">留学协议
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
    </div>
    <div class="am-modal-bd overflow" >
欢迎您申请美国亚利桑那州立大学。申请前请认真阅读以下相关事项: <br>
<b>一、申请人员须认同并遵守的主要事项</b><br>
1. 须认同并严格遵守本报名协议。<br>
2. 提交的报名信息必须完整、准确。如信息虚假，将取消本季申请资格;<br>
3. 申请材料照片须为彩色清晰。照片将用于申请材料，用于认证系统，请上传时慎重选用。<br> 4. 申请时须使用护照号。<br>
5. 申请信息确认前应认真核查并确保证件类别、证件号码、姓名、国籍、申请专业、电话、毕业 学校、电子邮箱、通讯地址和邮政编码等准确无误。报名信息经确认后，申请人员将不得自行修改。<br>
6.声明:申请人申请 ASU 项目，申请者可通过我公司绿色通道进行申请，本公司不收取任何服务 费及申请费，但根据申请人基础条件，本公司不保证申请人能百分之百获得录取。<br>
申请时如遇问题，请拨打电话:柳老师 18611264866(微信同号)。 <br>
<b>二、申请及入学流程申请人员应按以下流程进行操作:</b><br>
1. 信息填报<br>
2. 按照清单要求，发送 PDF 格式材料至 apply.asu@umentoredu.com<br>
3. 确认报名信息<br>
4. 接受 ASU 审查 7-14 个工作日<br>
5.录取后，登录 MY ASU 按要求支付押金(直录 300 美金，桥梁 888 美金)<br> 6.填写 I-20 的快递费 45 美金，以及 I-20 邮寄地址 <br>7.使馆面签预约，获取签证<br>
8.选择是否住校<br>
9.按时到校，在美国开设银行卡，开学十日内付学费
    </div>
  </div>
</div>
<!--协议-->
<input type="hidden" class="step" value="2">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(7)">上一页</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(9)">下一页</button>
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
<script type="text/javascript" src="xgwl/ajax/apply-8.js"></script>
</body>
</html>
