<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
<!--#include file="inc/asu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <style>
      td{text-align:left;}
      tbody tr th{width:280px;}
      thead tr th{font-size:18px;}
      </style>
      <section id="main-content">
          <section class="wrapper">
              <!-- page start -->
<%
dim i
dim sql,rs
id=request.QueryString("id")
sql="select * From [Application] where id="&id
sql=sql & " order by id desc"

Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
             <!--成功失败提示-->
<div class="alert" id="alert" style="display:none;">
                                  <button class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                                  <strong>操作成功！</strong> <span>栏目内容修改成功。</span>
                              </div>
 
                          <!----> 
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              留学申请详情 <!--a href="Prod_add.asp?Prod_Type=<%=classid%>" class="btn btn-success add">添加内容</a-->
                          </header>
                          
<!--列表开始-->

<!--以后补一个类别切换-->
<form>
<table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">Student's personal information</th>
          

        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">First name</th>
          <td><%=rs("a1")%></td>
        </tr>
        <tr>
          <th scope="row">Family name/ Surname</th>
          <td><%=rs("a2")%></td>
        </tr>
        <tr>
          <th scope="row">Gender</th>
          <td><%=rs("a3")%></td>
        </tr>
        <tr>
          <th scope="row">Date of birth</th>
          <td><%=rs("a4")%></td>
        </tr>
        <tr>
          <th scope="row">Country of brith</th>
          <td><%call country(rs("a5"))%></td>
        </tr>
        <tr>
          <th scope="row">Country of citizenship</th>
          <td><%call country(rs("a6"))%></td>
        </tr>
        <tr>
          <th scope="row">Do you hold citizenship for any other countries?</th>
          <td><%=rs("a7")%></td>
        </tr>
        <%if rs("a7")="Yes" then%>
        <tr>
          <th scope="row">Second citizenship</th>
          <td><%=rs("a7a1")%></td>
        </tr>
        <%end if%>
      </tbody>
</table>

<table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">Arizona State Univeracity study details</th>

        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">What levelk of degree do you want to study?</th>
          <td><%=rs("b1")%></td>
        </tr>
        <tr>
          <th scope="row">Admission type</th>
          <td><%call b2(rs("b2"))%></td>
        </tr>
        <% if rs("b2")="D" then%>
            <tr>
                <th scope="row">Undergraduate grade average</th>
                <td><%=rs("b2d1")%></td>
            </tr>
            <tr>
                <th scope="row">Name of last institution you attended for undergraduate study</th>
                <td><%=rs("b2d2")%></td>
            </tr>
            <tr>
                <th scope="row">Institution country</th>
                <td><%=rs("b2d3")%></td>
            </tr>
            <tr>
                <th scope="row">State/ Province/ Region</th>
                <td><%=rs("b2d4")%></td>
            </tr>
            <tr>
                <th scope="row">City</th>
                <td><%=rs("b2d5")%></td>
            </tr>
            <tr>
                <th scope="row">Undergraduate major</th>
                <td><%=rs("b2d6")%></td>
            </tr>
            <tr>
                <th scope="row">Qualification earned</th>
                <td><%=rs("b2d7")%></td>
            </tr>
            <tr>
                <th scope="row">Date first attended</th>
                <td><%=rs("b2d8")%></td>
            </tr>
            <tr>
                <th scope="row">Date last attended</th>
                <td><%=rs("b2d9")%></td>
            </tr>
            <tr>
                <th scope="row">Date degree awarded(graduation)</th>
                <td><%=rs("b2d10")%></td>
            </tr>
        <%end if%>
        <tr>
          <th scope="row">When do you want to start your studies at ASU?</th>
          <td><%call b3(rs("b3"))%></td>
        </tr>
      </tbody>
      </table>

      <table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">Choice of ASU master's program</th>
        </tr>
      </thead>
      <tbody>
       <tr>
          <th scope="row">First choice of major</th>
          <td><%=rs("b4")%></td>
        </tr>
        <tr>
          <th scope="row">Which campus do you want to attend?</th>
          <td><%call b5(rs("b5"))%></td>
        </tr>
        <tr>
          <th scope="row">Second choice of major</th>
          <td><%=rs("b6")%></td>
        </tr>
        <tr>
          <th scope="row">Which campus do you want to attend?</th>
          <td><%call b5(rs("b7"))%></td>
        </tr>
      </tbody>
      </table>

      <table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">About your secondary/ high school</th>
        </tr>
      </thead>
      <tbody>
      <tr>
          <th scope="row">Name of previous secondary/ high school</th>
          <td><%=rs("b8")%></td>
        </tr>
        <tr>
          <th scope="row">Country</th>
          <td><%call country(rs("b9"))%></td>
        </tr>
        <tr>
          <th scope="row">State/ Province/ Region</th>
          <td><%=rs("b10")%></td>
        </tr>
        <tr>
          <th scope="row">City</th>
          <td><%=rs("b11")%></td>
        </tr>
        <tr>
          <th scope="row">Date first attended</th>
          <td><%=rs("b12")%></td>
        </tr>
        <tr>
          <th scope="row">Date last attended</th>
          <td><%=rs("b13")%></td>
        </tr>
        <tr>
          <th scope="row">Have you attended another secondary/ high school?</th>
          <td><%=rs("b14")%></td>
        </tr>
        <% if rs("b14")="Yes" then%>
            <tr>
            <th scope="row">Name of previous secondary/ high school</th>
            <td><%=rs("b15")%></td>
            </tr>
            <tr>
            <th scope="row">Country</th>
            <td><%call country(rs("b16"))%></td>
            </tr>
            <tr>
            <th scope="row">State/ Province/ Region</th>
            <td><%=rs("b17")%></td>
            </tr>
            <tr>
            <th scope="row">City</th>
            <td><%=rs("b18")%></td>
            </tr>
            <tr>
            <th scope="row">Date first attended</th>
            <td><%=rs("b19")%></td>
            </tr>
            <tr>
            <th scope="row">Date last attended</th>
            <td><%=rs("b20")%></td>
            </tr>
        <%end if%>
      </tbody>
      </table>

      <table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">Have you previously attended or are you currently attending a college or university?</th>
        </tr>
      </thead>
      <tbody>
      <tr>
          <th scope="row" colspan="2"><%=rs("b25")%></th>
          
        </tr>
        </tbody>
        </table>
    <% if rs("b25")="A" or rs("b25")="B" or rs("b25")="C" or rs("b25")="D" then %>
        <table class="table table-striped">
        <thead>
        <tr>
          <th colspan="2">About your College/ university</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row" >Name of previous college/ university</th>
          <td><%=rs("b15")%></td>
        </tr>
        <tr>
          <th scope="row" >Country</th>
          <td><%call country(rs("b16"))%></td>
        </tr>
        <tr>
          <th scope="row" >State/ Province/ Region</th>
          <td><%=rs("b17")%></td>
        </tr>
        <tr>
          <th scope="row" >City</th>
          <td><%=rs("b18")%></td>
        </tr>
        <tr>
          <th scope="row" >Date first attended</th>
          <td><%=rs("b19")%></td>
        </tr>
        <tr>
          <th scope="row" >Date last attended</th>
          <td><%=rs("b20")%></td>
        </tr>
        <tr>
          <th scope="row" >Have you attended another college/ university?</th>
          <td><%=rs("b21")%></td>
        </tr>
            <%if rs("b21")="Yes" then%>
                <tr>
                <th scope="row" >Name of previous college/ university</th>
                <td><%=rs("b21a1")%></td>
                </tr>
                <tr>
                <th scope="row" >Country</th>
                <td><%call country(rs("b21a2"))%></td>
                </tr>
                <tr>
                <th scope="row" >State/ Province/ Region</th>
                <td><%=rs("b21a3")%></td>
                </tr>
                <tr>
                <th scope="row" >City</th>
                <td><%=rs("b21a4")%></td>
                </tr>
                <tr>
                <th scope="row" >Date first attended</th>
                <td><%=rs("b21a5")%></td>
                </tr>
                <tr>
                <th scope="row" >Date last attended</th>
                <td><%=rs("b21a6")%></td>
                </tr>
            <%end if%>
        </tbody>
        </table>
    <% end if %>
    <table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">Credit transfer</th>
        </tr>
      </thead>
      <tbody>
      <tr>
          <th scope="row" >Do you have college credits from an accredited university that you plan on transferring to ASU?</th>
          <td><%=rs("b22")%></td>
        </tr>
        </tbody>
        </table>

        <table class="table table-striped">
<thead>
        <tr>
          <th colspan="2">English language tests</th>
        </tr>
      </thead>
      <tbody>
      <tr>
          <th scope="row" >How you will meet the English proficiency requirement for the Pathway program?</th>
          <td><%call b23(rs("b23"))%></td>
        </tr>
        <% if rs("b23")="B" then%>
      
            <tr>
                <th scope="row" >Which English proficiency exam score are you submitting?</th>
                <td><%=rs("b23b1")%></td>
            </tr>
            <tr>
                <th scope="row" >Date taken</th>
                <td><%=rs("b23b2")%></td>
            </tr>
            <tr>
                <th scope="row" >Overall Score</th>
                <td><%=rs("b23b3")%></td>
            </tr>

        <%end if%>
              <tr>
          <th scope="row" >Do you have SAT or ACT score？</th>
          <td><%=rs("b24")%></td>
        </tr>
        <% if rs("b24")="SAT" or  rs("b24")="ACT" then%>

<tr>
          <th scope="row" >Overall Score</th>
          <td><%=rs("b24a1")%></td>
        </tr>
        <% end if %>
        </tbody>
        </table>
<!--ccc-->
        <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">US studies and visas</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >Are you a US permanent resident or a refugee in the USA?</th>
          <td><%=rs("c1")%></td>
        </tr>
        <tr>
          <th scope="row" >Are you currently in the United States on any kind of student visa?</th>
          <td><%=rs("c2")%></td>
        </tr>
        <% if rs("c2")="Yes" then%>
            <tr>
          <th scope="row" >Will you be transferring your 1-20 from another American school?</th>
          <td><%=rs("c2a1")%></td>
        </tr>
        <tr>
          <th scope="row" >What type of visa do you have?</th>
          <td><%=rs("c2a2")%></td>
        </tr>
        <%end if%>
        </tbody>
        </table>

 <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">Financial grarantee</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >Financial Guarantee source</th>
          <td><%=rs("c3")%></td>
        </tr>
        <% if rs("c3")="B" or rs("c3")="D" then%>
            <tr>
          <th scope="row" >First Name</th>
          <td><%=rs("c3bd1")%></td>
        </tr>
        <tr>
          <th scope="row" >Last Name</th>
          <td><%=rs("c3bd2")%></td>
        </tr>
        <tr>
          <th scope="row" >Guarantor relationship to student</th>
          <td><%=rs("c3bd3")%></td>
        </tr>
        <%end if%>
        <% if rs("c3")="C" then%>
            <tr>
             <th scope="row" >Sponsor name</th>
             <td><%=rs("c3c1")%></td>
            </tr>
    
        <%end if%>
        </tbody>
        </table>

         <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">Student's contact details</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >Email</th>
          <td><%=rs("c4")%></td>
        </tr>
        <tr>
          <th scope="row" >Another email address at which we can contact you?</th>
          <td><%=rs("c5")%></td>
        </tr>
        <tr>
          <th scope="row" >Cellphone or US phone number</th>
          <td><%=rs("c6")%></td>
        </tr>
        <tr>
          <th scope="row" >Home phone number</th>
          <td><%=rs("c7")%></td>
        </tr>
        <tr>
          <th scope="row" >I would like to connect with ASU on social media</th>
          <td><%=rs("c8")%></td>
        </tr>
        <% if rs("c8")="Yes" then%>
            <tr>
                <th scope="row" >Messaging app</th>
                <td><%=rs("c8a1")%></td>
            </tr>
            <tr>
                <th scope="row" >Messaging app account/ Username</th>
                <td><%=rs("c8a2")%></td>
            </tr>
        <%end if%>
        <tr>
          <th scope="row" >I would like to receive information by SMS text message</th>
          <td><%=rs("c9")%></td>
        </tr>
        </tbody>
        </table>

                 <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">Address details</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >Permanent home address - line 1</th>
          <td><%=rs("c10")%></td>
        </tr>
        <tr>
          <th scope="row" >Permanent home address - line 2</th>
          <td><%=rs("c11")%></td>
        </tr>
        <tr>
          <th scope="row" >Permanent home city</th>
          <td><%=rs("c12")%></td>
        </tr>
        <tr>
          <th scope="row" >Permanent home state/ province/ region</th>
          <td><%=rs("c13")%></td>
        </tr>
        <tr>
          <th scope="row" >Permanent home postal code</th>
          <td><%=rs("c14")%></td>
        </tr>
        <tr>
          <th scope="row" >Permanent home country</th>
          <td><%call country(rs("c15"))%></td>
        </tr>
        <tr>
          <th scope="row" >Mailing address for immigration documents</th>
          <td><%=rs("c16")%></td>
        </tr>
        <tr>
          <th scope="row" >City</th>
          <td><%=rs("c17")%></td>
        </tr>
        <tr>
          <th scope="row" >State/ Province</th>
          <td><%=rs("c18")%></td>
        </tr>
        <tr>
          <th scope="row" >ZIP/ Postal</th>
          <td><%=rs("c20")%></td>
        </tr>
        <tr>
          <th scope="row" >First Name</th>
          <td><%=rs("c21")%></td>
        </tr>
        <tr>
          <th scope="row" >Last Name</th>
          <td><%=rs("c22")%></td>
        </tr>
        <tr>
          <th scope="row" >Recipient email for immigration documents</th>
          <td><%=rs("c23")%></td>
        </tr>
        <tr>
          <th scope="row" >Recipient phone for immigration documents</th>
          <td><%=rs("c24")%></td>
        </tr>
        </tbody>
        </table>

        <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">Emergency contact</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >First Name</th>
          <td><%=rs("c25")%></td>
        </tr>
        <tr>
          <th scope="row" >Last Name</th>
          <td><%=rs("c26")%></td>
        </tr>
        <tr>
          <th scope="row" >Emergency contact phone</th>
          <td><%=rs("c27")%></td>
        </tr>
        <tr>
          <th scope="row" >Emergency contact email</th>
          <td><%=rs("c28")%></td>
        </tr>
        </tbody>
        </table>
<!--ddd-->
        <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">Application checklist and document upload</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >Proof of English proficiency (TOEFL, IELTS, Pearson PTE or Kaplan iBT)</th>
          <td><%=rs("d1")%></td>
        </tr>
        <tr>
          <th scope="row" >Official transcripts for the last 3 years at secondary school or post-secondary institutions, including final diploma/certificate if available. Submit a certified English translation of all documents not in English.</th>
          <td><%=rs("d2")%></td>
        </tr>
        <tr>
          <th scope="row" >SAT or ACT score (if required)</th>
          <td><%=rs("d3")%></td>
        </tr>
        <tr>
          <th scope="row" >Passport copy</th>
          <td><%=rs("d4")%></td>
        </tr>
        <tr>
          <th scope="row" >Previous I-20 or copy of visa (if you have studied in the USA)</th>
          <td><%=rs("d5")%></td>
        </tr>
        <tr>
          <th scope="row" >How many documents would you like to upload?</th>
          <td><%=rs("d6")%></td>
        </tr>
        <% if rs("d6")>=1 then%>
        <tr>
          <th scope="row" >1st file</th>
          <td><%if rs("d6a1")="" then%>未上传文件<%else%><a href="<%=rs("d6a1")%>" target="_blank">【下载文件】</a><%end if%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=2 then%>
        <tr>
          <th scope="row" >2st file</th>
          <td><%if rs("d6a2")="" then%>未上传文件<%else%><a href="<%=rs("d6a2")%>" target="_blank">【下载文件】</a><%end if%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=3 then%>
        <tr>
          <th scope="row" >3st file</th>
          <td><%if rs("d6a3")="" then%>未上传文件<%else%><a href="<%=rs("d6a3")%>" target="_blank">【下载文件】</a><%end if%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=4 then%>
        <tr>
          <th scope="row" >4st file</th>
          <td><%if rs("d6a4")="" then%>未上传文件<%else%><a href="<%=rs("d6a4")%>" target="_blank">【下载文件】</a><%end if%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=5 then%>
        <tr>
          <th scope="row" >5st file</th>
          <td><%if rs("d6a5")="" then%>未上传文件<%else%><a href="<%=rs("d6a5")%>" target="_blank">【下载文件】</a><%end if%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=6 then%>
        <tr>
          <th scope="row" >6st file</th>
          <td><%if rs("d6a6")="" then%>未上传文件<%else%><a href="<%=rs("d6a6")%>" target="_blank">【下载文件】</a><%end if%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=7 then%>
        <tr>
          <th scope="row" >7st file</th>
          <td><%=rs("d6a7")%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=8 then%>
        <tr>
          <th scope="row" >8st file</th>
          <td><%=rs("d6a8")%></td>
        </tr>
        <%end if%>
        <% if rs("d6")>=9 then%>
        <tr>
          <th scope="row" >9st file</th>
          <td><%=rs("d6a9")%></td>
        </tr>
        <%end if%>

        </tbody>
        </table>

        <table class="table table-striped">
            <thead>
        <tr>
          <th colspan="2">Additional information</th>
        </tr>
            </thead>
      <tbody>
      <tr>
          <th scope="row" >Questions and comments</th>
          <td><%=rs("d7")%></td>
        </tr>
           <tr>
          <th scope="row" >Additional email(optional)</th>
          <td><%=rs("d8")%></td>
        </tr>
        <tr>
          <th scope="row" >Do you have a previous affiliation with ASU?</th>
          <td><%call d9(rs("d9"))%></td>
        </tr>
         <% if rs("d9")="B" or rs("d9")="C" or rs("d9")="D" or rs("d9")="G" or rs("d9")="E" or rs("d9")="G" then%>
        <tr>
          <th scope="row" >What is your ASU Affiliate ID?</th>
          <td><%=rs("d9a1")%></td>
        </tr>
        <%end if%>
        <tr>
          <th scope="row" >Check this box to receive additional periodic promotions, such as information about other programs or scholarships. You can unsubscribe at any time.</th>
          <td><%=rs("d10")%></td>
        </tr>
        <tr>
          <th scope="row" >I certify that all the information supplied in this form is correct and complete, and understand that any misrepresentation or falsification, including failure to report any college or university attendance, is sufficient cause for cancellation of enrollment and/or credits earned and could result in other disciplinary action. I authorize Kaplan International to supply any relevant records relating to my attendance and progress, including personal records, contact details, and disciplinary records, to Kaplan's employees, staff, affiliates, agents, representatives, and others working on Kaplan’s behalf, as well as to the U.S. Department of Homeland Security, state and accrediting agencies, the University, my parents, guardian, or sponsor. I hereby consent to you contacting any school or institution at which I have previously studied in order to verify the information I have provided in the application and hereby authorize such school or institution to disclose such information.</th>
          <td><%=rs("d11")%></td>
        </tr>
        </tbody>
        </table>
</form>
<!--列表结束-->
                      </section>
                  </div>
              </div>

              <!--  page end  -->
          </section>
      </section>
      <!--main content end-->
  </section>

<!--#include file="inc/xgfooter.asp"-->
<!--#include file="inc/windows.asp"-->
<%
action=request.QueryString("Action")
delid=request.QueryString("id")
if action="Del" then
conn.execute "delete from [Table_application] where id="&Trim(delid)
response.Redirect("asu_List.Asp?sta=del")
end if
%>
  <script type="text/javascript">
//导航菜单



$(".nav2").addClass('active');
$(".nav2-1").addClass('active');

function ConfirmDel()
{
   if(confirm("确定要删除选中的内容吗？一旦删除将不能恢复！"))
     return true;
   else
     return false;
}
var sta='<%=request.QueryString("sta")%>';
if(sta=='add'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据添加成功!");
}else if(sta=='mod'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据修改成功!");
}else if(sta=='del'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据删除成功!");
}
console.log(sta);
</script>
<script type="text/javascript" src="xgwl/assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="xgwl/assets/data-tables/DT_bootstrap.js"></script>
<script src="xgwl/js/dynamic-table.js"></script>
