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
    Rs.Open "select * from [Table_Application] where id="&aid,conn,1,3

        cname=rs("cname")
        fname=rs("fname")
        lname=rs("lname")
        bdate=rs("bdate")
        sfz=rs("sfz")
        sfzpic1=rs("sfzpic1")
        sfzpic2=rs("sfzpic2")
        hz=rs("hz")
        hzpic=rs("hzpic")
        usa=rs("usa")
        sex=rs("sex")
        cc=rs("cc")
        recommend=rs("recommend")
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
    <legend>Your application</legend>
        <div class="am-form-group">

            <label for="doc-ipt-email-1">I am making this application as <span>*</span> :</label>
            <label class="am-radio">
                <input type="radio"  value="Student" name="stu" class="stu" > a student on my own
            </label>
            <label class="am-radio">
                <input type="radio" id="s2" value="StudentAgent" name="stu" class="stu cs2" > a student with the help of an agent
            </label>
            <label class="am-radio">
                <input type="radio"  value="Agent" name="stu" class="stu" > an agent on behalf of the student
            </label>
            </div>
        <legend class=" hide s2 ">Agent's contact details</legend>
        
        <div class="am-form-group hide s2 s3" >

            <label for="doc-ipt-email-1">After entering your contact details below, the rest of the application form is related to the student. Agents must answer on the applicant's behalf. However, only the applicant can sign the student declaration in Step 4.</label>
        </div>
        <div class="am-form-group hide s2">
            <input type="text" class="cname" placeholder="Agency organization name *" value="<%=cname%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group hide s2">
            <input type="text" class="cname" placeholder="Agent branch" value="<%=cname%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group hide s2">
            <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
            <option value="Please select...">Please select...</option>
                <%=CountrysList%>
            </select>
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group hide s2">
        <label for="doc-ipt-email-1">Counselor/Agent name <span>*</span></label>
            <input type="text" class="cname" placeholder="First Name" value="<%=cname%>">
            
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group hide s2">
            <input type="text" class="cname" placeholder="Last Name" value="<%=cname%>">
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group hide s2">
            <input type="text" class="cname" placeholder="Agent's email *" value="<%=cname%>">
            <span class="errinfo"></span>
        </div>

<legend>Student's personal information</legend>
        <div class="am-form-group">

            <label for="doc-ipt-email-1">Enter your name and other personal details exactly as they appear on passports or other official documents</label>
        </div>


        <div class="am-form-group">
            <input type="text" class="fname" placeholder="Given name(s) *" value="<%=fname%>">
            <span class="errinfo"></span>
        </div>

        <div class="am-form-group">
            <input type="text" class="lname" placeholder="Surname/family name(s) *" value="<%=lname%>">
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group">
        <label for="doc-ipt-email-1">Gender <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Female" name="sex" class="sex" <%if sex="Female" then%> checked<%end if%>> Female
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="Male" name="sex" class="sex" <%if sex="Male" then%> checked<%end if%>> Male
            </label>

        </div>
        <div class="am-form-group am-form-icon">
            <i class="am-icon-calendar"></i>
         <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
        <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
        <input type="text" name="USER_AGE" id="USER_AGE" readonly class="input bdate am-form-field " value="<%=bdate%>" placeholder="Date of birth *" />
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Country of birth <span>*</span></label>
            <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
            <option value="Please select...">Please select...</option>
                <%=CountrysList%>
            </select>
            
            <span class="errinfo"></span>
        </div>
                <div class="am-form-group">
        <label for="doc-ipt-email-1">Country of citizenship (as shown in your passport) <span>*</span></label>
            <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
            <option value="Please select...">Please select...</option>
                <%=CountrysList%>
            </select>
            
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Do you hold citizenship for any other countries? <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="citizenship" class="citizenship" > Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="citizenship" class="citizenship" > No
            </label>

        </div>
<!--如果选择yes显示start-->
         <div class="am-form-group hide s4">
        <label for="doc-ipt-email-1">Second Citizenship <span>*</span></label>
            <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
            <option value="Please select...">Please select...</option>
                <%=CountrysList%>
            </select>
            
            <span class="errinfo"></span>
        </div>
<!--如果选择yes显示end-->
        <!--Arizona State University study details-->
        <legend>Arizona State University study details</legend>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">What level of degree do you want to study? <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Undergraduate" name="sex" class="sex" <%if sex="Undergraduate" then%> checked<%end if%>> Undergraduate
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="Graduate" name="sex" class="sex" <%if sex="Graduate" then%> checked<%end if%>> Graduate
            </label>

        </div>
        
        <div class="am-form-group hide s2">
        <label for="doc-ipt-email-1">Admission type <span>*</span> :</label>
        
            <label class="am-radio">
                <input type="radio"  value="Undergraduate academic pathway: ASU-USA Pathways" name="Admission" class="Admission" > Undergraduate academic pathway: ASU-USA Pathways
            </label>
            <label class="am-radio">
                <input type="radio"  value="Bachelor's degree" name="Admission" class="Admission" > Bachelor's degree
            </label>
            <label class="am-radio">
                <input type="radio"  value="Complete a bachelor's degree: transfer admission" name="Admission" class="Admission" > Complete a bachelor's degree: transfer admission
            </label>
            <label class="am-radio">
                <input type="radio"  value="Master's degree" name="Admission" class="Admission" > Master's degree
            </label>

        </div>
        <div class="hide s5">
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Choose direct or transfer admission even if you are applying for conditional admission on English level</label>
            </div>
            </div>
            <!--如果选择的是student-start-->
            <div class="hide s1">
        <div class="am-form-group">
        <label for="doc-ipt-email-1">I am applying for: <span>*</span> :</label>
        
            <label class="am-radio">
                <input type="radio"  value="Undergraduate pathway: ASU-USA Pathways" name="Admission" class="Admission" > Undergraduate pathway: ASU-USA Pathways
            </label>
            <label class="am-radio">
                <input type="radio"  value="Bachelor's degree" name="Admission" class="Admission" > Bachelor's degree
            </label>
            <label class="am-radio">
                <input type="radio"  value="Transfer: complete a bachelor's degree" name="Admission" class="Admission" > Transfer: complete a bachelor's degree
            </label>
            <label class="am-radio">
                <input type="radio"  value="Master's degree" name="Admission" class="Admission" > Master's degree
            </label>

        </div>
        <div class="am-form-group">
            <label for="f-gray">If you meet the academic entry requirements, choose bachelor's or master's degree. If you have completed 1+ year of undergraduate study, choose transfer to bachelor's. If you need to improve your grades for a bachelor's degree, choose the pathway.</label>
            </div>
            </div>
            <!--如果选择的是student-end-->
        <div class="am-form-group hide s5">   
            <label >When do you want to start your Pathway at ASU? <span>*</span></label>
             <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                <option value="Please select...">Please select...</option>
                <option value="Spring 2019(January)">Spring 2019(January)</option>
                <option value="Fall 2019(August)">Fall 2019(August)</option>
                <option value="Spring 2020(January)">Spring 2020(January)</option>
            </select>
        </div>

        <div class="am-form-group hide s6 s7">
            <label for="doc-ipt-email-1">When do you want to start your studies at ASU? <span>*</span></label>
            <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                <option value="Please select...">Please select...</option>
                <option value="Spring 2019(January)">Spring 2019(January)</option>
                <option value="Summer 2019(May)">Summer 2019(May)</option>
                <option value="Fall 2019(August)">Fall 2019(August)</option>
                <option value="Spring 2020(January)">Spring 2020(January)</option>
            </select>
            
            <span class="errinfo"></span>
        </div>
        <!--Choice of ASU undergraduate degree-->
        <div class="hide s6">
        <legend>Choice of ASU undergraduate degree</legend>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">What level of degree do you want to study? <span>*</span> :</label>
        <label>Choosing your major is an important step in applying; you must choose a primary (first choice) and back-up (second choice) major at this time. Remember, you can always change your major after you apply.</label>
        <label>First choice of major you are applying to <span>*</span></label>
        <input type="text" class="cname"  value="<%=cname%>">
        <label class="f-gray">Please give the exact name, as shown in this <a href="xgwl/pdf/ASU_degrees.pdf" target="blank">ASU degree list</a>. Also check which campuses offer your choice of major.</label>
        <br><br>
        <label>First choice major: concentration (if applicable)</label>
        <input type="text" class="cname"  value="<%=cname%>">
        <label class="f-gray">If there are concentrations available for this major, you MUST specify your preferred concentration. Please give the exact name, as shown under each major in this <a href="xgwl/pdf/ASU_degrees.pdf" target="blank">ASU degree list</a> list.</label>
        <br><br>
        <label>First choice major: which campus do you want to attend? <span>*</span></label>

            <label class="am-radio">
                <input type="radio"  value="Tempe" name="sex" class="sex" <%if sex="Tempe" then%> checked<%end if%>> Tempe
            </label>
            <label class="am-radio">
                <input type="radio"  value="Downtown Phoenix" name="sex" class="sex" <%if sex="Downtown Phoenix" then%> checked<%end if%>> Downtown Phoenix
            </label>
            <label class="am-radio">
                <input type="radio"  value="Polytechnic" name="sex" class="sex" <%if sex="Polytechnic" then%> checked<%end if%>> Polytechnic
            </label>
            <label class="am-radio">
                <input type="radio"  value="West" name="sex" class="sex" <%if sex="West" then%> checked<%end if%>> West
            </label>
            <label class="am-radio">
                <input type="radio"  value="Lake Havasu City" name="sex" class="sex" <%if sex="Lake Havasu City" then%> checked<%end if%>> Lake Havasu City
            </label>
            </div>
             <div class="am-form-group">

            <label>Not all programs are available in all locations.</label>
            <br><br>
            <label class="bg-gray">Now choose a back-up (second choice) major. We will review your eligibility for this major if you do not meet the requirements for your first choice degree.</label>
            <br><br>
            <label class="bg-gray">If your first choice major has higher entry requirements, please select a second choice major that has standard entry requirements. You can find out the program entry requirements at <a href="https://www.asu.edu/degrees" target="blank">asu.edu/degrees</a>. If you provide an invalid second choice major, we will identify a valid second major as close as possible to what you have selected. Your education advisor can support you with your choices.</label>
            <br><br>
            <label>Second choice of major you are applying to <span>*</span></label>
             <input type="text" class="cname"  value="<%=cname%>">
            <label class="f-gray">Please give the exact name, as shown in this ASU degree list. Also check which campuses offer your choice of major.</label>
        </div>
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Second choice major: concentration (if applicable)</label>
            <input type="text" class="cname"  value="<%=cname%>">
            <label class="f-gray">If there are concentrations available for this major, you MUST specify your preferred concentration. Please give the exact name, as shown under each major in this ASU degree list.</label>
        </div>
        <div class="am-form-group">
                <label>Second choice major: which campus do you want to attend? <span>*</span></label>

            <label class="am-radio">
                <input type="radio"  value="Tempe" name="sex" class="sex" <%if sex="Tempe" then%> checked<%end if%>> Tempe
            </label>
            <label class="am-radio">
                <input type="radio"  value="Downtown Phoenix" name="sex" class="sex" <%if sex="Downtown Phoenix" then%> checked<%end if%>> Downtown Phoenix
            </label>
            <label class="am-radio">
                <input type="radio"  value="Polytechnic" name="sex" class="sex" <%if sex="Polytechnic" then%> checked<%end if%>> Polytechnic
            </label>
            <label class="am-radio">
                <input type="radio"  value="West" name="sex" class="sex" <%if sex="West" then%> checked<%end if%>> West
            </label>
            <label class="am-radio">
                <input type="radio"  value="Lake Havasu City" name="sex" class="sex" <%if sex="Lake Havasu City" then%> checked<%end if%>> Lake Havasu City
            </label>
            <label class="f-gray">Not all programs are available in all locations.</label>
            </div>
        </div>
        <div class="hide s7">
         <legend>Choice of ASU master's program</legend>
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Master's degree you are applying to <span>*</span> :</label>
        <input type="text" class="cname"  value="<%=cname%>">
        <label class="f-gray">Please give the exact name, as shown in this <a href="xgwl/pdf/ASU_degrees.pdf" target="blank">ASU degree list</a>. Also check which campuses offer your choice of master's.</label>
        <br><br>
        <label>Concentration (if applicable)</label>
        <input type="text" class="cname"  value="<%=cname%>">
        <label class="f-gray">If there are concentrations available for this degree, you MUST specify your preferred concentration. Please give the exact name, as shown under each master's program in this <a href="xgwl/pdf/ASU_degrees.pdf" target="blank">ASU degree list</a>.</label>
        <br><br>
        <label>Which campus do you want to attend? <span>*</span></label>

            <label class="am-radio">
                <input type="radio"  value="Tempe" name="sex" class="sex" > Tempe
            </label>
            <label class="am-radio">
                <input type="radio"  value="Downtown Phoenix" name="sex" class="sex" > Downtown Phoenix
            </label>
            <label class="am-radio">
                <input type="radio"  value="Polytechnic" name="sex" class="sex" > Polytechnic
            </label>
            <label class="am-radio">
                <input type="radio"  value="West" name="sex" class="sex" > West
            </label>
            <label class="f-gray">Not all programs are available in all locations.</label>
            </div>
        </div>
        <%'备选表单%>



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
		nowText: "今天",
		startYear: currYear - 30, //开始年份
		endYear: currYear - 10 //结束年份
	};

	$("#USER_AGE").mobiscroll($.extend(opt['date'], opt['default']));

});
</script>
<script type="text/javascript" src="xgwl/ajax/apply-1.js"></script>
</body>
</html>
