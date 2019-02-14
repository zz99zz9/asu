<%
'忘记密码发邮件
Sub SendAction(subject, email, sender, content) 
Set Mail = CreateObject("CDO.Message")
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") ="hwhzsmtp.qiye.163.com"
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="system@umentoredu.com"
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="UMentor2017"
Mail.Configuration.Fields.Update
Mail.Subject=subject
Mail.From="system@umentoredu.com"
Mail.To=email
Mail.TextBody="Click on the link to reset the password:"&content
Mail.Send
Set Mail = Nothing
end sub
'Call SendAction(strSubject,strEmail,strSender,strContent)
%>
