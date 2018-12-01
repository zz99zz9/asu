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
  <div class="am-progress-bar am-progress-bar-danger"  style="width: 50%"></div>
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

    %>
    <%'Year列表
    set cRs=Server.CreateObject("ADODB.Recordset")
    cRs.Open "select * from [class_year] order by cid desc",conn,1,3
        do while not crs.eof
            YearList=YearList+"<option value='"&crs("cid")&"' >"&crs("cname")&"</option>"
        crs.movenext
	    loop

    %>
     <%'Month列表
    set cRs=Server.CreateObject("ADODB.Recordset")
    cRs.Open "select * from [class_month] order by cid desc",conn,1,3
        do while not crs.eof
            MonthList=MonthList+"<option value='"&crs("cid")&"' >"&crs("cname")&"</option>"
        crs.movenext
	    loop
    cRs.close
    set cRs=Nothing
    %>

<form name="form2" id="form2" >
    <legend>Current/previous studies</legend>
    <label class="f_gray">We will ask for you to upload copies of your academic transcripts at the end of this form.</label>
        <div class="am-form-group">

            <legend>Secondary/high school:</legend>
            <label>Secondary school overall grade <span>*</span></label>
                <input type="text" name="stu" class="stu" placeholder="">
            <label class="f-gray">Your average grade in the final 3 years of secondary school, e.g. B- or 65%</label>
        </div>
        <div class="am-form-group">
            <label>Name of current (or most recent) secondary/high school <span>*</span></label>
            <input type="text" name="stu" class="stu" >
        </div>
        <div class="am-form-group">
                <label>Country <span>*</span></label>
            <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
            <option value="Please select...">Please select...</option>
                <%=CountrysList%>
            </select>
            <span class="errinfo"></span>
        </div>
        <div class="am-form-group">
            <label>State/Province/Region</label>
            <input type="text" name="stu" class="stu" >
        </div>
        <div class="am-form-group">
            <label>City</label>
            <input type="text" name="stu" class="stu" >
        </div>
        <div class="am-form-group">
            <label>Graduation date <span>*</span></label>
           
        </div>
                    <div class="am-form-group am-u-sm-6">

                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=MonthList%>
                </select>
            </div>
            <div class="am-form-group am-u-sm-6">
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=YearList%>
                </select>

            </div>
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Have you attended another secondary/high school? <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="sex" class="sex" <%if sex="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="sex" class="sex" <%if sex="No" then%> checked<%end if%>> No
            </label>

        </div>
        <!--如果选Yes就显示start-->

        <!--如果选Yes就显示end-->
        <legend>Colleges and Universities</legend>
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Have you previously attended or are you currently attending a college or university? <span>*</span></label>
        </div>
        <div class="am-form-group">
            <select name="college" class="college">
                <option></option>
                <option value="I currently am or have attended college or university">I currently am or have attended college or university</option>
                <option value="I have completely withdrawn from a college or university">I have completely withdrawn from a college or university</option>
                <option value="I have only received non-passing grades">I have only received non-passing grades</option>
                <option value="I am a high school student currently attending or have attended college">I am a high school student currently attending or have attended college</option>
                <option value="I have never attended a college or university">I have never attended a college or university</option>
            </select>
            <label class="f-gray">ASU reserves the right to verify your prior enrollment. Failure to list a prior college/university on your application may result in denial of admission for failure to submit accurate information.</label>
        </div>
        <!--如果选1\2\4就显示start-->
            <div class="am-form-group hide s1 s2">
                <label>Enter the total number of college and/or university semester credits you have completed (grades of C- or higher) </label>
                <input type="text" name="stu" class="stu" >
            </div>
        <!--如果选1\2\4就显示end-->
        <!--如果选1\2\3\4就显示start-->
            <div class="hide s1">
            <div class="am-form-group">
                <label>Name of current (or most recent) college/university <span>*</span></label>
                <input type="text" name="stu" class="stu" >
            </div>
            <div class="am-form-group">
                <label for="doc-ipt-email-1">Country <span>*</span></label>
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=CountrysList%>
                </select>
                <span class="errinfo"></span>
            </div>
            <div class="am-form-group">
                <label>State/Province/Region</label>
                <input type="text" name="stu" class="stu" >
            </div>
            <div class="am-form-group">
                <label>City</label>
                <input type="text" name="stu" class="stu" >
            </div>
            <div class="am-form-group">
                <label>Date first attended <span>*</span></label>
            </div>
            <div class="am-form-group am-u-sm-6">

                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=MonthList%>
                </select>
            </div>
            <div class="am-form-group am-u-sm-6">
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=YearList%>
                </select>

            </div>
                        <div class="am-form-group">
                <label>Date last attended <span>*</span></label>
            </div>
            <div class="am-form-group am-u-sm-6">

                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=MonthList%>
                </select>
            </div>
            <div class="am-form-group am-u-sm-6">
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=YearList%>
                </select>

            </div>
            <div class="am-form-group">
                <label>Have you attended another college or university? <span>*</span></label>
                <select name="college2" class="college2">
                <option></option>
                <option value="I have attended another college or university">I have attended another college or university</option>
                <option value="I have completely withdrawn from another college or university">I have completely withdrawn from another college or university</option>
                <option value="I received only non-passing grades at another college or university">I received only non-passing grades at another college or university</option>
                <option value="I am a high school student who has attended another college">I am a high school student who has attended another college</option>
                <option value="I have not attended another college or university">I have not attended another college or university</option>
                </select>
                <label class="f-gray">ASU reserves the right to verify your prior enrollment. Failure to list a prior college/university on your application may result in denial of admission for failure to submit accurate information.</label>
            </div>
            <!--2如果选1\2\3\4就显示start-->
            <div class="hide s3">
            <div class="am-form-group">
                <label for="doc-ipt-email-1">Country <span>*</span></label>
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=CountrysList%>
                </select>
                <span class="errinfo"></span>
            </div>
            <div class="am-form-group">
                <label>State/Province/Region</label>
                <input type="text" name="stu" class="stu" >
            </div>
            <div class="am-form-group">
                <label>City</label>
                <input type="text" name="stu" class="stu" >
            </div>
            <div class="am-form-group">
                <label>Date first attended <span>*</span></label>
            </div>
            <div class="am-form-group am-u-sm-6">

                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=MonthList%>
                </select>
            </div>
            <div class="am-form-group am-u-sm-6">
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=YearList%>
                </select>

            </div>
                        <div class="am-form-group">
                <label>Date last attended <span>*</span></label>
            </div>
            <div class="am-form-group am-u-sm-6">

                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=MonthList%>
                </select>
            </div>
            <div class="am-form-group am-u-sm-6">
                <select id="country" name="country" size="1" required="" class="fsField fsRequired" aria-required="true">
                    <option value="Please select...">Please select...</option>
                    <%=YearList%>
                </select>

            </div>
            <!--2如果选1\2\3\4就显示end-->

            </div>
            </div>
        <!--如果选1\2\3\4就显示end-->
                     <legend>Previous College Eligibility</legend>
             <div class="am-form-group">
                <label>Are you eligible to return to each of the colleges or universities you have attended in the last 7 years? <span>*</span></label>
                            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="sex" class="sex" <%if sex="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="sex" class="sex" <%if sex="No" then%> checked<%end if%>> No
            </label>
            </div>
        <%'备选表单%>

<div class="am-form-group">
<%dim p
p=2%>
<input type="hidden" class="step" value="1">
<button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(<%=p-1%>)">Previous</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(p+1)">Next</button>
        </div>
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


<script type="text/javascript" src="xgwl/ajax/apply-22.js"></script>
</body>
</html>
