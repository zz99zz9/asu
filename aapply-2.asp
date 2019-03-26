<%if request.cookies("uid")="" then 
Response.Redirect "memberlogin.Asp?err=请先登录再继续提交申请~"
end if%>
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/inc.asp"-->
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
        b21=rs("b21")
        b22=rs("b22")
        b23=rs("b23")
        b24=rs("b24")
        b25=rs("b25")
        b2d1=rs("b2d1")
        b2d2=rs("b2d2")
        b2d3=rs("b2d3")
        b2d4=rs("b2d4")
        b2d5=rs("b2d5")
        b2d6=rs("b2d6")
        b2d7=rs("b2d7")
        b2d8=rs("b2d8")
        b2d9=rs("b2d9")
        b2d10=rs("b2d10")
        b14a1=rs("b14a1")
        b14a2=rs("b14a2")
        b14a3=rs("b14a3")
        b14a4=rs("b14a4")
        b14a5=rs("b14a5")
        b14a6=rs("b14a6")
        b21a1=rs("b21a1")
        b21a2=rs("b21a2")
        b21a3=rs("b21a3")
        b21a4=rs("b21a4")
        b21a5=rs("b21a5")
        b21a6=rs("b21a6")
        b23b1=rs("b23b1")
        b23b2=rs("b23b2")
        b23b3=rs("b23b3")
        b24a1=rs("b24a1")

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

<legend>Arizona State Univeracity study details</legend>


        <div class="am-form-group">
            <label for="doc-ipt-email-1">what level of degree do you want to study? <span>*</span> :</label>
        
            <label class="am-radio">
                <input type="radio"  value="Undergraduate" name="b1" class="b1" <%if b1="Undergraduate" then%> checked<%end if%>> Undergraduate
            </label>
            <label class="am-radio">
                <input type="radio"  value="Graduate" name="b1" class="b1" <%if b1="Graduate" then%> checked<%end if%>> Graduate
            </label>

        </div>
<!--b2-->
        <div class="am-form-group">
            <label for="doc-ipt-email-1">Admission type<span>*</span> :</label>
        
            <label class="am-radio">
                <input type="radio"  value="A" name="b2" class="b2" <%if b2="A" then%> checked<%end if%>> Undergraduate academic pathway:ASU-USA Pathway
            </label>
            <label class="am-radio">
                <input type="radio"  value="B" name="b2" class="b2" <%if b2="B" then%> checked<%end if%>> Bachelor's degree
            </label>
            <label class="am-radio">
                <input type="radio"  value="C" name="b2" class="b2" <%if b2="C" then%> checked<%end if%>> Complete a Bachelor's degree:transfer admission
            </label>
            <label class="am-radio">
                <input type="radio"  value="D" name="b2" class="b2" <%if b2="D" then%> checked<%end if%>> master's degree
            </label>
        </div>

    <!--b2d-->

    <div class="b2d hide">

    <!--b2d1-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">Undergraduate grade average <span>*</span> :</label>
            <input type="text" class="b2d1" placeholder="" value="<%=b2d1%>">
            <span class="errinfo"></span>
        </div>
    
    <!--b2d2-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">Name of last institution you attended for undergraduate study <span>*</span> :</label>
            <input type="text" class="b2d2" placeholder="" value="<%=b2d2%>">
            <span class="errinfo"></span>
        </div>

    <!--b2d3-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">Institution country <span>*</span> :</label>
            <input type="text" class="b2d3" placeholder="" value="<%=b2d3%>">
            <span class="errinfo"></span>
        </div>
    <!--b2d4-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">State/ Province/ Region <span>*</span> :</label>
            <input type="text" class="b2d4" placeholder="" value="<%=b2d4%>">
            <span class="errinfo"></span>
        </div>

    <!--b2d5-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">City <span>*</span> :</label>
            <input type="text" class="b2d5" placeholder="" value="<%=b2d5%>">
            <span class="errinfo"></span>
        </div>

    <!--b2d6-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">Undergraduate major <span>*</span> :</label>
            <input type="text" class="b2d6" placeholder="" value="<%=b2d6%>">
            <span class="errinfo"></span>
        </div>

    <!--b2d7-->

        <div class="am-form-group">
        <label for="doc-ipt-email-1">Undergraduate major <span>*</span> :</label>
            <input type="text" class="b2d7" placeholder="" value="<%=b2d7%>">
            <span class="errinfo"></span>
        </div>

    <!--b2d8-->
        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date first attended <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
            <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
            <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
            <input type="text" name="b2d8" readonly class="input bdate b2d8 am-form-field " value="<%=b2d8%>" />
            <span class="errinfo"></span>
        </div>

    <!--b2d9-->
        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date last attended <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
            <input type="text" name="b2d9" readonly class="input bdate b2d9 am-form-field " value="<%=b2d9%>" />
            <span class="errinfo"></span>
        </div>

    <!--b2d10-->
        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date degree awarded (graduation) <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
            <input type="text" name="b2d10" readonly class="input bdate b2d10 am-form-field " value="<%=b2d10%>" />
            <span class="errinfo"></span>
        </div>

    </div>
<!--b3-->
     <div class="am-form-group">
            <label for="doc-ipt-email-1">When do you want to start your studies at ASU?<span>*</span> :</label>
        
            <label class="am-radio">
                <input type="radio"  value="A" name="b3" class="b3" <%if b3="A" then%> checked<%end if%>> Spring 2019 （January）
            </label>
            <label class="am-radio">
                <input type="radio"  value="B" name="b3" class="b3" <%if b3="B" then%> checked<%end if%>> Summer 2019 (May)
            </label>
            <label class="am-radio">
                <input type="radio"  value="C" name="b3" class="b3" <%if b3="C" then%> checked<%end if%>> Fall 2019 (Auguest)
            </label>
            <label class="am-radio">
                <input type="radio"  value="D" name="b3" class="b3" <%if b3="D" then%> checked<%end if%>> Spring 2020 (January)
            </label>
        </div>            

<legend>Choice of ASU undergraduate degree</legend>
<a href="xgwl/pdf/ASU_degrees.pdf" target="blank">Download Graduate degrees's PDF</a>
<!--b4-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">First choice of major <span>*</span> :</label>
            <input type="text" class="b4" placeholder="" value="<%=b4%>">
            <span class="errinfo"></span>
        </div>
        <!--b5-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">First choice major:which campus do you want to attend? <span>*</span></label>
            <select id="country" name="b5" size="1" required="" class="fsField fsRequired b5" aria-required="true">
            <option  value="0">Please select...</option>
            <option value="A" <%if b5="A" then%> selected<%end if%>>Tempe</option>
            <option value="B" <%if b5="B" then%> selected<%end if%>>Downtown Phoenix</option>
            <option value="C" <%if b5="C" then%> selected<%end if%>>Polytechnic</option>
            <option value="D" <%if b5="D" then%> selected<%end if%>>West</option>
            <option value="E" <%if b5="E" then%> selected<%end if%>>Lake Havasu City</option>
            </select>
            
            <span class="errinfo"></span>
        </div>
<!--b6-->
  <div class="am-form-group">
  <label for="doc-ipt-email-1">Second choice of major <span>*</span> :</label>
            <input type="text" class="b6" placeholder="" value="<%=b6%>">
            <span class="errinfo"></span>
        </div>
        <!--b7-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Second choice major:which campus do you want to attend? <span>*</span></label>
            <select id="country" name="b7" size="1" required="" class="fsField fsRequired b7" aria-required="true">
            <option  value="0" >Please select...</option>
            <option value="A" <%if b7="A" then%> selected<%end if%>>Tempe</option>
            <option value="B" <%if b7="B" then%> selected<%end if%>>Downtown Phoenix</option>
            <option value="C" <%if b7="C" then%> selected<%end if%>>Polytechnic</option>
            <option value="D" <%if b7="D" then%> selected<%end if%>>West</option>
            <option value="E" <%if b7="E" then%> selected<%end if%>>Lake Havasu City</option>
            </select>
            
            <span class="errinfo"></span>
        </div>
   
   <legend>About your secondary/ high school</legend>

<!--b8-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Name of previous secondary/ high school<span>*</span> :</label>
            <input type="text" class="b8" placeholder="" value="<%=b8%>">
            <span class="errinfo"></span>
        </div>
<!--b9-->
       <div class="am-form-group">
        <label for="doc-ipt-email-1">Country <span>*</span></label>
            <select id="country" name="b9" size="1" required="" class="fsField fsRequired b9" aria-required="true">
            <%if b9="" then%>
            <option value="0">Please select...</option>
            <%else%>
            <option value="<%=b9%>"><%call country(rs("b9"))%></option>
            <%end if%>
                <%=CountrysList%>
            </select>
            <span class="errinfo"></span>
        </div>
<!--b10-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">State/ Province / Region <span>*</span> :</label>
            <input type="text" class="b10" placeholder="" value="<%=b10%>">
            <span class="errinfo"></span>
        </div>
<!--b11-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">City <span>*</span> :</label>
            <input type="text" class="b11" placeholder="" value="<%=b11%>">
            <span class="errinfo"></span>
        </div>
<!--b12-->

        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date first attended <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
         <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
        <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
        <input type="text" name="b12"  readonly class="input bdate b12 am-form-field " value="<%=b12%>" placeholder="" />
            <span class="errinfo"></span>
        </div>

<!--b13-->

        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date last attended <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
        <input type="text" name="b13"  readonly class="input bdate b13 am-form-field " value="<%=b13%>" placeholder="" />
            <span class="errinfo"></span>
        </div>
<!--b14-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Have you attended another secondary/ high school? <span>*</span> :</label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="b14" class=" b14" <%if b14="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="b14" class=" b14" <%if b14="No" then%> checked<%end if%>> No
            </label>

        </div>

         
    <!--b14a-->
        <div class=" b14a <%if b14<>"Yes" then%>hide<%end if%>">

        <!--b14a1-->
            <div class="am-form-group">
            <label for="doc-ipt-email-1">Name of previous secondary/ high school<span>*</span> :</label>
                <input type="text" class="b14a1" placeholder="" value="<%=b14a1%>">
                <span class="errinfo"></span>
            </div>
        <!--b14a2-->
            <div class="am-form-group">
                <label for="doc-ipt-email-1">Country <span>*</span></label>
                    <select id="country" name="b14a2" size="1" required="" class="fsField fsRequired b14a2" aria-required="true">
                    <%if b14a2="" then%>
                    <option value="0">Please select...</option>
                    <%else%>
                    <option value="<%=b14a2%>"><%call country(rs("b14a2"))%></option>
                    <%end if%>
                        <%=CountrysList%>
                    </select>
                    <span class="errinfo"></span>
                </div>
        <!--b14a3-->
                <div class="am-form-group">
                <label for="doc-ipt-email-1">State/ Province / Region <span>*</span> :</label>
                    <input type="text" class="b14a3" placeholder="" value="<%=b14a3%>">
                    <span class="errinfo"></span>
                </div>
        <!--b14a4-->
                <div class="am-form-group">
                <label for="doc-ipt-email-1">City <span>*</span> :</label>
                    <input type="text" class="b14a4" placeholder="" value="<%=b14a4%>">
                    <span class="errinfo"></span>
                </div>
        <!--b14a5-->

                <div class="am-form-group am-form-icon">
                <label for="doc-ipt-email-1">Date first attended <span>*</span> :</label>
                    <i class="am-icon-calendar"></i>
                <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
                <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
                <input type="text" name="b14a5"  readonly class="input bdate b14a5 am-form-field " value="<%=b14a5%>" placeholder="" />
                    <span class="errinfo"></span>
                </div>

        <!--b14a6-->

                <div class="am-form-group am-form-icon">
                <label for="doc-ipt-email-1">Date last attended <span>*</span> :</label>
                    <i class="am-icon-calendar"></i>
                <input type="text" name="b14a6"  readonly class="input bdate b14a6 am-form-field " value="<%=b14a6%>" placeholder="" />
                    <span class="errinfo"></span>
                </div>

        </div>
<!--b25-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Have you previously attended or are you currently attending a college or university? <span>*</span></label>
            <label class="am-radio">
                <input type="radio"  value="A" name="b25" class=" b25" <%if b25="A" then%> checked<%end if%>> I currently am or have attended college or university
            </label>
            <label class="am-radio">
                <input type="radio"  value="B" name="b25" class=" b25" <%if b25="B" then%> checked<%end if%>> I have completely withdrawn from a college or university
            </label>
            <label class="am-radio">
                <input type="radio"  value="C" name="b25" class=" b25" <%if b25="C" then%> checked<%end if%>> I have only receieved non-passing grades
            </label>
            <label class="am-radio">
                <input type="radio"  value="D" name="b25" class=" b25" <%if b25="D" then%> checked<%end if%>> I am a high school student currently attentiong or have attended college
            </label>
            <label class="am-radio">
                <input type="radio"  value="E" name="b25" class=" b25" <%if b25="E" then%> checked<%end if%>> I have never attended a college or university
            </label>
            
            <span class="errinfo"></span>
        </div>
<!--大学信息开始 -->
<div class="collegeinfo  <%if b25<>"A" and b25<>"B" and b25<>"C" and b25<>"D" then%>hide<%end if%>">
<legend>About your College/ university</legend>
<!--b15-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Name of previous College/ university school<span>*</span> :</label>
            <input type="text" class="b15" placeholder="" value="<%=b15%>">
            <span class="errinfo"></span>
        </div>
<!--b16-->
       <div class="am-form-group">
        <label for="doc-ipt-email-1">Country <span>*</span></label>
            <select id="country" name="b16" size="1" required="" class="fsField fsRequired b16" aria-required="true">
            <%if b16="" then%>
            <option value="0">Please select...</option>
            <%else%>
            <option value="<%=b16%>"><%call country(rs("b16"))%></option>
            <%end if%>
                <%=CountrysList%>
            </select>
            <span class="errinfo"></span>
        </div>
<!--b17-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">State/ Province / Region <span>*</span> :</label>
            <input type="text" class="b17" placeholder="" value="<%=b17%>">
            <span class="errinfo"></span>
        </div>
<!--b18-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">City <span>*</span> :</label>
            <input type="text" class="b18" placeholder="" value="<%=b18%>">
            <span class="errinfo"></span>
        </div>
<!--b19-->

        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date first attended <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
         <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
        <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
        <input type="text" name="b19"  readonly class="input bdate b19 am-form-field " value="<%=b19%>" placeholder="" />
            <span class="errinfo"></span>
        </div>

<!--b20-->

        <div class="am-form-group am-form-icon">
        <label for="doc-ipt-email-1">Date last attended <span>*</span> :</label>
            <i class="am-icon-calendar"></i>
        <input type="text" name="b20"  readonly class="input bdate b20 am-form-field " value="<%=b20%>" placeholder="" />
            <span class="errinfo"></span>
        </div>
<!--b21-->
        <div class="am-form-group">
        <label for="doc-ipt-email-1">Have you attended another College/ university school? <span>*</span></label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="b21" class=" b21" <%if b21="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="b21" class=" b21" <%if b21="No" then%> checked<%end if%>> No
            </label>

        </div>
    <!--b21a-->
        <div class=" b21a <%if b21<>"Yes" then%>hide<%end if%>">

        <!--b21a1-->
            <div class="am-form-group">
            <label for="doc-ipt-email-1">Name of previous College/ university school<span>*</span> :</label>
                <input type="text" class="b21a1" placeholder="" value="<%=b21a1%>">
                <span class="errinfo"></span>
            </div>
        <!--b21a2-->
            <div class="am-form-group">
                <label for="doc-ipt-email-1">Country <span>*</span></label>
                    <select id="country" name="b21a2" size="1" required="" class="fsField fsRequired b21a2" aria-required="true">
                     <%if b21a2="" then%>
            <option value="0">Please select...</option>
            <%else%>
            <option value="<%=b21a2%>"><%call country(rs("b21a2"))%></option>
            <%end if%>
                        <%=CountrysList%>
                    </select>
                    <span class="errinfo"></span>
                </div>
        <!--b21a3-->
                <div class="am-form-group">
                <label for="doc-ipt-email-1">State/ Province / Region <span>*</span> :</label>
                    <input type="text" class="b21a3" placeholder="" value="<%=b21a3%>">
                    <span class="errinfo"></span>
                </div>
        <!--b21a4-->
                <div class="am-form-group">
                <label for="doc-ipt-email-1">City <span>*</span> :</label>
                    <input type="text" class="b21a4" placeholder="" value="<%=b21a4%>">
                    <span class="errinfo"></span>
                </div>
        <!--b21a5-->

                <div class="am-form-group am-form-icon">
                <label for="doc-ipt-email-1">Date first attended <span>*</span> :</label>
                    <i class="am-icon-calendar"></i>
                <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
                <link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />
                <input type="text" name="b21a5"  readonly class="input bdate b21a5 am-form-field " value="<%=b21a5%>" placeholder="" />
                    <span class="errinfo"></span>
                </div>

        <!--b21a6-->

                <div class="am-form-group am-form-icon">
                <label for="doc-ipt-email-1">Date last attended <span>*</span> :</label>
                    <i class="am-icon-calendar"></i>
                <input type="text" name="b21a6"  readonly class="input bdate b21a6 am-form-field " value="<%=b21a6%>" placeholder="" />
                    <span class="errinfo"></span>
                </div>

        </div>


</div>
<!--大学信息结束-->

<legend>Credit transfer</legend>

<!--b22-->
<div class="am-form-group">
        <label for="doc-ipt-email-1">Do you have college credits from an accredited university that you plan on transferrig to ASU? <span>*</span> </label>
        
            <label class="am-radio-inline">
                <input type="radio"  value="Yes" name="b22" class=" b22"  <%if b22="Yes" then%> checked<%end if%>> Yes
            </label>
            <label class="am-radio-inline">
                <input type="radio"  value="No" name="b22" class=" b22"  <%if b22="No" then%> checked<%end if%>> No
            </label>

        </div>

                <legend>English language tests</legend>

<!--b23-->
    <div class="am-form-group">
        <label for="doc-ipt-email-1">How you will meet the English proficiency requirement for the Pathway program? <span>*</span> <%=b23%></label>
        
            <label class="am-radio">
                <input type="radio"  value="A" name="b23" class=" b23" <%if b23="A" then%> checked<%end if%>> I will attend the intensive English program at ASU
            </label>
            <label class="am-radio">
                <input type="radio"  value="B" name="b23" class=" b23" <%if b23="B" then%> checked<%end if%>> I have an English proficiency exam score
            </label>
             <label class="am-radio">
                <input type="radio"  value="C" name="b23" class=" b23" <%if b23="C" then%> checked<%end if%>> I do not have an English proficiency score, but I intend on taking an English proficiency exam.
            </label>

        </div>
        <!--b23b-->
        <div class="b23b  <%if b23<>"B" then%>hide<%end if%>"">

            <!--b23b1-->
                <div class="am-form-group">
                    <label for="doc-ipt-email-1">Which English proficiency exam score are you submitting? <span>*</span></label>
            
                    <label class="am-radio">
                        <input type="radio"  value="TOEFL" name="b23b1" class=" b23b1" <%if b23b1="TOEFL" then%> checked<%end if%>> TOEFL
                    </label>
                    <label class="am-radio">
                        <input type="radio"  value="IELTS" name="b23b1" class=" b23b1" <%if b23b1="IELTS" then%> checked<%end if%>> IELTS
                    </label>
                    <label class="am-radio">
                        <input type="radio"  value="Pearson PTE" name="b23b1" class=" b23b1" <%if b23b1="Pearson PTE" then%> checked<%end if%>> Pearson PTE
                    </label>
                    <label class="am-radio">
                        <input type="radio"  value="Kaplan iBT" name="b23b1" class=" b23b1" <%if b23b1="Kaplan iBT" then%> checked<%end if%>> Kaplan iBT
                    </label>
                </div>
            <!--b23b2-->
                <div class="am-form-group am-form-icon">
                    <label for="doc-ipt-email-1">Date taken <span>*</span> :</label>
                        <i class="am-icon-calendar"></i>
                    <input type="text" name="b23b2"  readonly class="input bdate b23b2 am-form-field " value="<%=b23b2%>" placeholder="" />
                        <span class="errinfo"></span>
                </div>
            <!--b23b3-->
                <div class="am-form-group ">
                    <label for="doc-ipt-email-1">Overall Score <span>*</span> :</label>
                   
                    <input type="text" name="b23b3" class="input b23b3 am-form-field " value="<%=b23b3%>" placeholder="" />
                        <span class="errinfo"></span>
                </div>


        </div>

<!--b24-->
                <div class="am-form-group">
                    <label for="doc-ipt-email-1">Do you have SAT or ACT score？<%=b24%></label>
            
                    <label class="am-radio">
                        <input type="radio"  value="SAT" name="b24" class=" b24" <%if b24="SAT" then%> checked<%end if%>> SAT
                    </label>
                    <label class="am-radio">
                        <input type="radio"  value="ACT" name="b24" class=" b24" <%if b24="ACT" then%> checked<%end if%>> ACT
                    </label>
                </div>
        <!--b24a-->
        <div class="b24a"  <%if b24="" then%>hide<%end if%>>
            <div class="am-form-group ">
                <label for="doc-ipt-email-1">Overall Score <span>*</span> :</label>
                <input type="text" name="b24a1" class="input b24a1 am-form-field " value="<%=b24a1%>" placeholder="" />
                <span class="errinfo"></span>
            </div>
        </div>
        <%'备选表单%>


<input type="hidden" class="aid" value="<%=aid%>">
<input type="hidden" class="step" value="2">
        <button type="button" class="am-btn am-btn-default am-u-sm-6 " onClick="save(1)">Previous</button>
        <button type="button" class="am-btn am-btn-danger am-u-sm-6 " onClick="save(3)">Next</button>
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
<script type="text/javascript" src="xgwl/ajax/aapply-2.js"></script>
</body>
</html>
