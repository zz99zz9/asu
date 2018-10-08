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
            <a href="#">Financial Guarantee Form 表格模板下载</a>
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
            <a href="#">转学表 表格模板下载</a>
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
      欢迎您申请美国亚利桑那州立大学。申请前请认真阅读以下相关事项：<br>
<b>一、申请人员须认同并遵守的主要事项</b><br>
1. 须认同并严格遵守本网站报名协议。<br>
2. 提交的报名信息必须完整、准确。如信息虚假，将取消本季申请资格；<br>
3. 申请材料照片须为彩色、标准、清晰，照片底色背景为白色。照片将用于申请材料，用于认证系统，请上传时慎重选用。<br>
4. 申请时须使用护照号。<br>
5. 申请信息确认前应认真核查并确保证件类别、证件号码、姓名、国籍、申请专业、电话、毕业学校、电子邮箱、通讯地址和邮政编码等准确无误。报名信息经确认后，申请人员将不得自行修改。<br>
6.声明：本公司只是辅助申请人申请项目，申请者可通过我公司绿色通道进行申请，但根据申请人基础条件，本公司不保证申请人能百分之百获得录取。<br>
申请时如遇技术方面问题，请拨打技术支持电话：18611264866（微信同号）。<br><br>
<b>二、报名流程</b><br>
申请人员应按以下流程进行操作：<br>
1. 注册<br>
2. 材料预审<br>
3. 上传材料照片<br>
4. 进入报名系统，录入、检查并保存报名信息<br>
5. 确认报名信息<br>
7. 接受有关部门（或机构）的资格审查<br>
8. 网上支付申请费用<br><br>


<b>申请人员诚信承诺书</b><br>
我自愿报名申请美国亚利桑那州立大学项目，已知晓报名程序，已阅读《申请须知》和其他有关规定，本人在申请过程中将自觉遵守，并郑重承诺如下：<br>
1. 报名时所提供的身份证明、学历证书、成绩单等个人材料真实、准确、有效，如提供虚假证明或信息，本人愿承担由此所带来的一切后果。<br>
2. 已知晓并遵守申请条件、资格审查程序及相关要求，保证填报的信息完整、准确。<br>
3. 服从北京跃美艾得教育咨询有限公司人员安排、检查、监督和管理，自本承诺书签署后，将不再接受其它机构的申请服务。<br>
4. 严格遵守《申请须知》，若有违反，愿承担相关责任。
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
