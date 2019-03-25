<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp?err=请先登录再继续提交申请~"
end if%>
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/inc.asp"-->
<%title="ASU申请表"%>
 <!-- #include file="inc/header.asp">
 <link rel="stylesheet" href="xgwl/css/lib/normalize3.0.2.min.css" />

<!-- 页面内容 开发时删除 -->
<div class="am-g am-g-fixed am-margin-top">
  <div class="am-u-sm-12">
<div class="am-progress am-progress-striped am-progress-sm am-active ">
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 25%"></div>
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

        a1=rs("a1")
        a2=rs("a2")
        a3=rs("a3")
        a4=rs("a4")
        a5=rs("a5")
        a6=rs("a6")
        a7=rs("a7")
        a7a1=rs("a7a1")

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

<legend>Student's personal information</legend>
        <div class="am-form-group">

            <label for="doc-ipt-email-1">Enter your name and other personal details exactly as they appear on passports or other official documents</label>
        </div>


        <div class="am-form-group">
            <input type="text" class="a1" placeholder="Given name(s) *" value="<%=a1%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <input type="text" class="a2" placeholder="Surname/family name(s) *" value="<%=a2%>">
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group">
        <label for="doc-ipt-email-1">Gender <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Female" name="a3" class="a3" <%if a3="Female" then%> checked<%end if%>> Female
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="Male" name="a3" class="a3" <%if a3="Male" then%> checked<%end if%>> Male
            </label>

        </div>
        <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
         <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
        <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
        <input type="text" name="a4" id="USER_AGE" readonly class="input bdate a4 am-form-field " value="<%=a4%>" placeholder="Date of birth *" />
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Country of birth <span>*</span></label>
            <select id="country" name="a5" size="1" required="" class="fsField fsRequired a5" aria-required="true">
            <%if a5="" then%>
            <option value="0">Please select...</option>
            <%else%>
            <option value="<%=a5%>"><%call country(rs("a5"))%></option>
            <%end if%>
                <%=CountrysList%>
            </select>
            
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group">
        <label for="doc-ipt-email-1">Country of citizenship (as shown in your passport) <span>*</span></label>
            <select id="country" name="a6" size="1" required="" class="fsField fsRequired a6" aria-required="true">
            <%if a6="" then%>
            <option value="0">Please select...</option>
            <%else%>
            <option value="<%=a6%>"><%call country(rs("a6"))%></option>
            <%end if%>
                <%=CountrysList%>
            </select>
            
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Do you hold citizenship for any other countries? <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="a7" class=" a7" <%if a7="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="a7" class=" a7" <%if a7="No" then%> checked<%end if%>> No
            </label>

        </div>
<!--如果选择yes显示start-->
         <div class="am-form-group <%if a7<>"Yes" then%>hide<%end if%> a7a">
        <label for="doc-ipt-email-1">Second Citizenship <span>*</span></label>
            <select id="country" name="a7a1" size="1" required="" class="fsField fsRequired a7a1" aria-required="true">
            <%if a7a1="" then%>
            <option value="0">Please select...</option>
            <%else%>
            <option value="<%=a7a1%>"><%call country(rs("a7a1"))%></option>
            <%end if%>
                <%=CountrysList%>
            </select>
            
            <span class="errinfo"></span>
        </div>

  
   

        <%'备选表单%>


<input type="hidden" class="aid" value="<%=request.cookies("aid")%>">
<input type="hidden" class="step" value="1">

        <button type="button" class="am-btn am-btn-danger am-u-sm-12 " onClick="save(2)">Next</button>
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

	$("#USER_AGE").mobiscroll($.extend(opt['date'], opt['default']));

});
</script>
<script type="text/javascript" src="xgwl/ajax/aapply-1.js"></script>
</body>
</html>
