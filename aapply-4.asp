<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp?err=请先登录再继续提交申请~"
end if%>
<!--#include file="inc/conn.asp"-->
<%title="asu申请表"%>
 <!-- #include file="inc/header.asp">
 <link rel="stylesheet" href="xgwl/css/lib/normalize3.0.2.min.css" />

<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 100%"></div>
</div>
  </div>
</div>
 <link rel="stylesheet" href="xgwl/css/apply.css" />
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
    <div class="am-form" >
  <fieldset>


    <%aid=request.cookies("aid")

response.cookies("kid")=request.QueryString("kid")
    if aid<>"" then
    set Rs=Server.CreateObject("ADODB.Recordset")
    sql="select * from [Application] where id="&aid
    Rs.Open sql,conn,1,3

'response.write sql
        d1=rs("d1")
        d2=rs("d2")
        d3=rs("d3")
        d4=rs("d4")
        d5=rs("d5")
        d6=rs("d6")
        d7=rs("d7")
        d8=rs("d8")
        d9=rs("d9")
        d10=rs("d10")
        d11=rs("d11")
        d6a1=rs("d6a1")
        d6a8=rs("d6a8")
        d6a9=rs("d6a9")
        d6a2=rs("d6a2")
        d6a3=rs("d6a3")
        d6a4=rs("d6a4")
        d6a5=rs("d6a5")
        d6a6=rs("d6a6")
        d6a7=rs("d6a7")
        d6a8=rs("d6a8")
        d6a9=rs("d6a9")
        d6a10=rs("d6a10")
        d9a1=rs("d9a1")

    end if
'    Rs.close
'set Rs=Nothing
    %>
    <%'国家列表
    set cRs=Server.CreateObject("ADODB.Recordset")
    cRs.Open "select * from [class_country] order by cid desc",conn,1,3
        do while not crs.eof
            CountrysList=CountrysList+"<option value='"&crs("cid")&"' >"&crs("cname")&"</option>"
        crs.movenext
	    loop
    cRs.close
    set cRs=Nothing
    %>

<form name="form2" id="form2" >

<legend>Application checklist and document upload</legend>

<!--d1--d5-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Select each of the documents you are uploading with this ASU undergraduate application <span>*</span> :</label>
        
            <label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d1" class="d1" <%if d1="YES" then%> checked<%end if%>> Proof of English proficiency (TOEFL, IELTS, Pearson PTE or Kaplan iBT)
            </label>
            <label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d2" class="d2" <%if d2="YES" then%> checked<%end if%>> Official transcripts for the last 3 years at secondary school or post-secondary institutions, including final diploma/certificate if available. Submit a certified English translation of all documents not in English.
            </label>
            <label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d3" class="d3" <%if d3="YES" then%> checked<%end if%>> SAT or ACT score (if required)
            </label>
            <label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d4" class="d4" <%if d4="YES" then%> checked<%end if%>> Passport copy
            </label>
            <label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d5" class="d5" <%if d5="YES" then%> checked<%end if%>> Previous I-20 or copy of visa (if you have studied in the USA)
            </label>

        </div>
<!--d6-->

            <div class="am-form-group">
                <label for="doc-ipt-email-1">How many documents would you like to upload? <span>*</span></label>
                    <select id="country" name="d6" size="1" required="" class="fsField fsRequired d6" aria-required="true">
                    <option  value="0">Please select...</option>
                    <%for a=1 to 9%>
                        <option value="<%=a%>" <%if int(d6)=a then%>selected<%end if%>><%=a%></option>
                    <%next%>
                    </select>
                    <span class="errinfo"></span>
                    <label for="doc-ipt-email-1">Please ensure the combined file size is no more than 10MB. Documents will need to be re-uploaded if you use the 'save & resume' functionality afterwards.</label>
                </div>
    <!--d6a-->
    <div id="upfileslist">
        <div class="d6aa1 <%if d6<1 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a1">
            <i class="am-icon-cloud-upload"></i> Upload 1st file </button>
            <input type="hidden" class="d6a1 upfile2" name="d6a1"  value="<%=d6a1%>">
            <span class="errinfo"></span>
            <%if d6a1="" then%>
            <div class="am-badge d6a1ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a1ok" style="display:block;"><%=d6a1%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa2 <%if d6<2 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a2">
            <i class="am-icon-cloud-upload"></i> Upload 2st file </button>
            <input type="hidden" class="d6a2 upfile2" name="d6a2"  value="<%=d6a2%>">
            <span class="errinfo"></span>
            <%if d6a2="" then%>
            <div class="am-badge d6a2ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a2ok" style="display:block;"><%=d6a2%></div>
            <%end if%>
        </div>
        <div class="d6aa3 <%if d6<3 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a3">
            <i class="am-icon-cloud-upload"></i> Upload 3st file </button>
            <input type="hidden" class="d6a3 upfile2" name="d6a3"  value="<%=d6a3%>">
            <span class="errinfo"></span>
            <%if d6a3="" then%>
            <div class="am-badge d6a3ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a3ok" style="display:block;"><%=d6a3%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa4 <%if d6<4 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a4">
            <i class="am-icon-cloud-upload"></i> Upload 4st file </button>
            <input type="hidden" class="d6a4 upfile2" name="d6a4"  value="<%=d6a4%>">
            <span class="errinfo"></span>
            <%if d6a4="" then%>
            <div class="am-badge d6a4ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a4ok" style="display:block;"><%=d6a4%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa5 <%if d6<5 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a5">
            <i class="am-icon-cloud-upload"></i> Upload 5st file </button>
            <input type="hidden" class="d6a5 upfile2" name="d6a5"  value="<%=d6a5%>">
            <span class="errinfo"></span>
            <%if d6a5="" then%>
            <div class="am-badge d6a5ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a5ok" style="display:block;"><%=d6a5%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa6 <%if d6<6 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a6">
            <i class="am-icon-cloud-upload"></i> Upload 6st file </button>
            <input type="hidden" class="d6a6 upfile2" name="d6a6"  value="<%=d6a6%>">
            <span class="errinfo"></span>
            <%if d6a6="" then%>
            <div class="am-badge d6a6ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a6ok" style="display:block;"><%=d6a6%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa7 <%if d6<7 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a7">
            <i class="am-icon-cloud-upload"></i> Upload 7st file </button>
            <input type="hidden" class="d6a7 upfile2" name="d6a7"  value="<%=d6a7%>">
            <span class="errinfo"></span>
            <%if d6a7="" then%>
            <div class="am-badge d6a7ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a7ok" style="display:block;"><%=d6a7%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa8 <%if d6<8 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a8">
            <i class="am-icon-cloud-upload"></i> Upload 8st file </button>
            <input type="hidden" class="d6a8 upfile2" name="d6a8"  value="<%=d6a8%>">
            <span class="errinfo"></span>
            <%if d6a8="" then%>
            <div class="am-badge d6a8ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a8ok" style="display:block;"><%=d6a8%></div>
            <%end if%>
        </div>
        </div>
        <div class="d6aa9 <%if d6<9 then%>hide<%end if%>">
        <div class="am-form-group">
            <button type="button" class="am-btn am-btn-warning am-btn-sm upfile" data-id="d6a9">
            <i class="am-icon-cloud-upload"></i> Upload 9st file </button>
            <input type="hidden" class="d6a9 upfile2" name="d6a9"  value="<%=d6a9%>">
            <span class="errinfo"></span>
            <%if d6a9="" then%>
            <div class="am-badge d6a9ok" style="display:none;">ok</div>
            <%else%>
            <div class="am-badge d6a9ok" style="display:block;"><%=d6a9%></div>
            <%end if%>
        </div>
        </div>

    </div>

<!--d6a end-->
<legend>Additional information</legend>
<!--d7-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Questions and comments <span>*</span></label>
        
            <textarea class="d7" rows="5" id="doc-ta-1"><%=d7%></textarea>
             <span class="errinfo"></span>

        </div>
<!--d8-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Additional email (optional) <span>*</span></label>
        
            <input type="text" class="d8" placeholder="" value="<%=d8%>">
            <span class="errinfo"></span>
            <label for="doc-ipt-email-1">A copy of this application will be sent to the agent's email address entered at the start of the form. If you would like a copy sent to another email address, please enter the email here.
                </label>
        </div>
<!--d9-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Do you have a previous affiliation with ASU? <span>*</span></label>
        
            <select id="country" name="d9" size="1" required="" class="fsField fsRequired d9" aria-required="true">
                    <option >Please select...</option>

                        <option value="A" <%if d9="A" then%> selected<%end if%>>No, I have never attended or been affiliated with Arizona State University</option>
                        <option value="B" <%if d9="B" then%> selected<%end if%>>Yes, I previously attended ASU as an undergraduate degree-seeking student</option>
                        <option value="C" <%if d9="C" then%> selected<%end if%>>Yes, I previously attended ASU as a graduate or non-degree student</option>
                        <option value="D" <%if d9="D" then%> selected<%end if%>>Yes, I attended ASU's Global Launch</option>
                        <option value="E" <%if d9="E" then%> selected<%end if%>>Yes, I attended Global Freshman Academy or any transfer pathway program</option>
                        <option value="F" <%if d9="F" then%> selected<%end if%>>Yes, I attended ASU as part of a summer program in high school</option>
                        <option value="G" <%if d9="G" then%> selected<%end if%>>Yes, I am currently or previously was an ASU employee</option>
                        <option value="H" <%if d9="H" then%> selected<%end if%>>Other (e.g. applied but never enrolled, season ticket holder, etc.)</option>

                    </select>
            <span class="errinfo"></span>
            
                </label>
        </div>
        <!--d9a-->
        <div class="d9a hide">
                <div class="am-form-group">
                    <label for="doc-ipt-email-1">What is your ASU Affiliate ID?</label>
                    <input type="text" class="d9a1" placeholder="" value="<%=d9a1%>">
                    <span class="errinfo"></span>
                </div>
        </div>
        <!--d9aend-->

<!--d10-->
<div class="am-form-group">
<label for="doc-ipt-email-1">Student declaration</label>
<label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d10" class="d10" <%if d10="YES" then%> checked<%end if%>> Check this box to receive additional periodic promotions, such as information about other programs or scholarships. You can unsubscribe at any time.
            </label>
</div>
<!--d11-->
<legend>Student's signature</legend>
<div class="am-form-group">
<label class="am-checkbox">
                <input type="checkbox"  value="YES" name="d11" class="d11" <%if d11="YES" then%> checked<%end if%>> I certify that all the information supplied in this form is correct and complete, and understand that any misrepresentation or falsification, including failure to report any college or university attendance, is sufficient cause for cancellation of enrollment and/or credits earned and could result in other disciplinary action. I authorize Kaplan International to supply any relevant records relating to my attendance and progress, including personal records, contact details, and disciplinary records, to Kaplan's employees, staff, affiliates, agents, representatives, and others working on Kaplan’s behalf, as well as to the U.S. Department of Homeland Security, state and accrediting agencies, the University, my parents, guardian, or sponsor. I hereby consent to you contacting any school or institution at which I have previously studied in order to verify the information I have provided in the application and hereby authorize such school or institution to disclose such information.
            </label>
</div>

        <%'备选表单%>


<input type="hidden" class="aid" value="<%=request.cookies("aid")%>">
<input type="hidden" class="step" value="3">
        <button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(3)">Previous</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(5)">Next</button>
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

<script src="xgwl/js/lib/mobiscroll_date.js" ></script> 
<script src="xgwl/js/lib/mobiscroll.js"></script> 
<script type="text/javascript">
$(function () {
	var currYear = (new Date()).getFullYear();	
	var opt={};
	opt.date = {preset : 'date'};
	opt.datetime = {preset : 'datetime'};
	opt.time = {preset : 'time'};
	opt.default = {
		theme: 'android-ics light', //皮肤样式
		display: 'modal', //显示方式 
		mode: 'scroller', //日期选择模式
		dateFormat: 'yyyy-mm-dd',
		lang: 'zh',
		showNow: true,
		nowText: "Today",
		startYear: currYear - 55, //开始年份
		endYear: currYear + 1 //结束年份
	};

	$(".bdate").mobiscroll($.extend(opt['date'], opt['default']));

});
</script>
<script type="text/javascript" src="xgwl/ajax/aapply-4.js"></script>
</body>
</html>
