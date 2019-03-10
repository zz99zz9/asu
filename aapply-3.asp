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
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 75%"></div>
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
    Rs.Open "select * from [Application] where id="&aid,conn,1,3

        b1=rs("b1")
        b2=rs("b2")
        b3=rs("b3")
        b4=rs("b4")
        b5=rs("b5")
        b6=rs("b6")
        b7=rs("b7")
        b8=rs("b8")
        b9=rs("b9")
        b10=rs("b10")
        b11=rs("b11")
        b12=rs("b12")
        b13=rs("b13")
        b14=rs("b14")
        b15=rs("b15")
        b16=rs("b16")
        b17=rs("b17")
        b18=rs("b18")
        b19=rs("b19")
        b20=rs("b20")

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

<legend>US studies and visas</legend>

<!--c1-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Are you a US permanent resident or a refugee in the USA? <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="c1" class="c1" <%if c1="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="c1" class="c1" <%if c1="No" then%> checked<%end if%>> No
            </label>

        </div>
<!--c2-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Are you currently in the United States on any kind of student visa? <span>*</span></label>
        
            <label class="am-radio-inline">
                <input type="radio" value="Yes" name="c2" class="c2" <%if c2="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio" value="No" name="c2" class="c2" <%if c2="No" then%> checked<%end if%>> No
            </label>
        </div>
    <!--c2a-->

    <div class="c2a hide">
        <!--c2a1-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Will you be transferring your 1-20 from another American school? <span>*</span></label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="c2a1" class="c2a1" <%if c2a1="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="c2a1" class="c2a1" <%if c2a1="No" then%> checked<%end if%>> No
            </label>
        </div>
        <!--c2a2-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">What type of visa do you have? <span>*</span></label>
        
            <label class="am-radio">
                <input type="radio"  value="A" name="c2a2" class="c2a2" <%if c2a2="A" then%> checked<%end if%>> F-1 student visa
            </label>
            <label class="am-radio">
                <input type="radio"  value="B" name="c2a2" class="c2a2" <%if c2a2="B" then%> checked<%end if%>> J-1 visa
            </label>
            <label class="am-radio">
                <input type="radio"  value="C" name="c2a2" class="c2a2" <%if c2a2="C" then%> checked<%end if%>> Another type of visa
            </label>
            <label class="am-radio">
                <input type="radio"  value="D" name="c2a2" class="c2a2" <%if c2a2="D" then%> checked<%end if%>> Don't know
            </label>
        </div>
    </div>
    <!--c2a end-->

<legend>Financial guarantee</legend>
<!--c3-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Financial Guarantee source <span>*</span></label>
        
            <label class="am-radio">
                <input type="radio"  value="A" name="c3" class="c3" <%if c3="A" then%> checked<%end if%>> I am self-funding
            </label>
            <label class="am-radio">
                <input type="radio"  value="B" name="c3" class="c3" <%if c3="B" then%> checked<%end if%>> I am family-funded
            </label>
            <label class="am-radio">
                <input type="radio"  value="C" name="c3" class="c3" <%if c3="C" then%> checked<%end if%>> I have sponsorship from a government, organization or individual
            </label>
            <label class="am-radio">
                <input type="radio"  value="D" name="c3" class="c3" <%if c3="D" then%> checked<%end if%>> Other
            </label>
        </div>
    <!--c3bd-->

    <div class="c3bd hide">
        <!--c3bd1-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">First Name <span>*</span> :</label>
            <input type="text" class="c3bd1" placeholder="" value="<%=c3bd1%>">
            <span class="errinfo"></span>
        </div>
        <!--c3bd2-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Last Name <span>*</span> :</label>
            <input type="text" class="c3bd2" placeholder="" value="<%=c3bd2%>">
            <span class="errinfo"></span>
        </div>
         <!--c3bd3-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Guarantor relationship to student <span>*</span> :</label>
            <input type="text" class="c3bd3" placeholder="" value="<%=c3bd3%>">
            <span class="errinfo"></span>
        </div>
    </div>
    <!--c3bd end -->

    <!--c3c-->
    <div class="c3c hide">
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Sponsor name <span>*</span> :</label>
            <input type="text" class="c3c1" placeholder="" value="<%=c3c1%>">
            <span class="errinfo"></span>
        </div>
    </div>

<legend>Student's contact details</legend>
<!--c4-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Email <span>*</span> :</label>
        <input type="text" class="c4" placeholder="" value="<%=c4%>">
        <span class="errinfo"></span>
    </div>
<!--c5-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Another email address at which we can contact you :</label>
        <input type="text" class="c5" placeholder="" value="<%=c5%>">
        <span class="errinfo"></span>
    </div>
<!--c6-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Cellphone or US phone number <span>*</span> :</label>
        <input type="text" class="c6" placeholder="" value="<%=c6%>">
        <span class="errinfo"></span>
    </div>
<!--c7-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Home phone number <span>*</span> :</label>
        <input type="text" class="c7" placeholder="" value="<%=c7%>">
        <span class="errinfo"></span>
    </div>

<!--c8-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">I would like to connect with ASU on social media :</label>
        <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="c8" class=" c8" > Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="c8" class=" c8" > No
            </label>
        <span class="errinfo"></span>
    </div>

    <!--c8a-->
    <div class="c8a hide">
    <!--c8a1-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Messaging app <span>*</span> :</label>
        <select id="country" name="c8a1" size="1" required="" class="fsField fsRequired c8a1" aria-required="true">
                    <option value="0">Please select...</option>
                        <option value="Facebook">Facebook</option>
                        <option value="QQ">QQ</option>
                    </select>
        <span class="errinfo"></span>
        </div>

    <!--c8a2-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Messaging App Account / Username <span>*</span> :</label>
        <input type="text" class="c8a2" placeholder="" value="<%=c8a2%>">
        <span class="errinfo"></span>
    </div>
    </div>
    <!--c8a end-->

<!--c9-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">I would like to receive information by SMS text message :</label>
        <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="c9" class=" c9" > Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="c9" class=" c9" > No
            </label>
        <span class="errinfo"></span>
    </div>

<legend>Address details</legend>
<!--c10-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home address - line 1 <span>*</span> :</label>
        <input type="text" class="c10" placeholder="" value="<%=c10%>">
        <span class="errinfo"></span>
    </div>
<!--c11-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home address - line 2 <span>*</span> :</label>
        <input type="text" class="c11" placeholder="" value="<%=c11%>">
        <span class="errinfo"></span>
    </div>
<!--c12-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home city <span>*</span> :</label>
        <input type="text" class="c12" placeholder="" value="<%=c12%>">
        <span class="errinfo"></span>
    </div>
<!--c13-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home state / province / region <span>*</span> :</label>
        <input type="text" class="c13" placeholder="" value="<%=c13%>">
        <span class="errinfo"></span>
    </div>
<!--c14-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home postal code <span>*</span> :</label>
        <input type="text" class="c14" placeholder="" value="<%=c14%>">
        <span class="errinfo"></span>
    </div>
<!--c15-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home country <span>*</span> :</label>
        <select id="country" name="c15" size="1" required="" class="fsField fsRequired c15" aria-required="true">
                    <option  value="0">Please select...</option>
                        <%=CountrysList%>
                    </select>
        <span class="errinfo"></span>
    </div>
<!--c16-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Mailing address for immigration documents <span>*</span> :</label>
        <input type="text" class="c16" placeholder="" value="<%=c16%>">
        <span class="errinfo"></span>
    </div>
<!--c17-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">City <span>*</span> :</label>
        <input type="text" class="c17" placeholder="" value="<%=c17%>">
        <span class="errinfo"></span>
    </div>
<!--c18-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">State / Province <span>*</span> :</label>
        <input type="text" class="c18" placeholder="" value="<%=c18%>">
        <span class="errinfo"></span>
    </div>
<!--c19-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">ZIP / Postal <span>*</span> :</label>
        <input type="text" class="c19" placeholder="" value="<%=c19%>">
        <span class="errinfo"></span>
    </div>
<!--c20-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Permanent home country <span>*</span> :</label>
        <select id="country" name="c20" size="1" required="" class="fsField fsRequired c20" aria-required="true">
                    <option  value="0">Please select...</option>
                        <%=CountrysList%>
                    </select>
        <span class="errinfo"></span>
    </div>
<!--c21-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">First Name <span>*</span> :</label>
        <input type="text" class="c21" placeholder="" value="<%=c21%>">
        <span class="errinfo"></span>
    </div>
<!--c22-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Last Name <span>*</span> :</label>
        <input type="text" class="c22" placeholder="" value="<%=c22%>">
        <span class="errinfo"></span>
    </div>
<!--c23-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Recipient email for immigration documents <span>*</span> :</label>
        <input type="text" class="c23" placeholder="" value="<%=c23%>">
        <span class="errinfo"></span>
    </div>
<!--c24-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Recipient phone for immigration documents <span>*</span> :</label>
        <input type="text" class="c24" placeholder="" value="<%=c24%>">
        <span class="errinfo"></span>
    </div>

<legend>Emergency contact</legend>
<!--c25-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">First Name <span>*</span> :</label>
        <input type="text" class="c25" placeholder="" value="<%=c25%>">
        <span class="errinfo"></span>
    </div>
<!--c26-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Last Name <span>*</span> :</label>
        <input type="text" class="c26" placeholder="" value="<%=c26%>">
        <span class="errinfo"></span>
    </div>
<!--c27-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Emergency contact phone <span>*</span> :</label>
        <input type="text" class="c27" placeholder="" value="<%=c27%>">
        <span class="errinfo"></span>
    </div>
<!--c28-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">Emergency contact email <span>*</span> :</label>
        <input type="text" class="c28" placeholder="" value="<%=c28%>">
        <span class="errinfo"></span>
    </div>
        <%'备选表单%>


<input type="hidden" class="aid" value="<%=request.cookies("aid")%>">
<input type="hidden" class="step" value="3">
        <button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(2)">Previous</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(4)">Next</button>
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
<script type="text/javascript" src="xgwl/ajax/aapply-3.js"></script>
</body>
</html>
