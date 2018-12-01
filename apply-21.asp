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
    <legend>Credit transfer</legend>
    <label class="f_gray">You can upload copies of your academic transcripts at the end of this form.</label>
<br><br>

        <div class="am-form-group">
            <label for="doc-ipt-email-1">Do you have college credits from an accredited university that you plan on transferring to ASU?</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="sex" class="sex"> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="sex" class="sex" > No
            </label>

        </div>
        <!--如果选Yes就显示start-->

        <!--如果选Yes就显示end-->
        <legend>English language tests</legend>
        <div class="am-form-group">
            <label for="doc-ipt-email-1">You can upload copies of your English test results at this end of this form.</label>
        </div>
        <div class="am-form-group">
        <label>How you will meet the English proficiency requirement for the Pathway program? <span>*</span></label>
            <label class="am-radio">
                <input type="radio"  value="l will attend the Intensive English Program at ASU" name="pathway" class="pathway"> l will attend the Intensive English Program at ASU
            </label>
            <label class="am-radio">
                <input type="radio"  value="I have an English proficiency exam score" name="pathway" class="pathway" > I have an English proficiency exam score
            </label>
            <label class="am-radio">
                <input type="radio"  value="I do not have an English proficiency score, but I intend on taking an English proficiency exam." name="pathway" class="pathway" > I do not have an English proficiency score, but I intend on taking an English proficiency exam.
            </label>
        </div>
        <!--如果选2就显示start-->
        <div class="hide s1">
            <div class="am-form-group ">
                <label>Which English proficiency exam score are you submitting? <span>*</span></label>
            <label class="am-radio-inline">
                <input type="radio"  value="TOEFL" name="exam" class="exam"> TOEFL
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="IELTS" name="exam" class="exam" > IELTS
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="Pearson PTE" name="exam" class="exam" > Pearson PTE
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="Kaplan iBT" name="exam" class="exam" > Kaplan iBT
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="Other" name="exam" class="exam" > Other
            </label>

            </div>

            <!--2如果选5就显示start-->
                <div class="hide s2">
                    <label>If Other, please specify</label>
                     <input type="text" name="stu" class="stu" >
                </div>
            <!--2如果选5就显示end-->
        </div>
        <!--如果选2就显示end-->
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


<script type="text/javascript" src="xgwl/ajax/apply-21.js"></script>
</body>
</html>
