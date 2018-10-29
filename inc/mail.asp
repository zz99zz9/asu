<%
Set Mail = CreateObject("CDO.Message")
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") ="smtp.qq.com"
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="4659489@qq.com"
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="rg5549287"
Mail.Configuration.Fields.Update
Mail.Subject="Email subject"
Mail.From="4659489@qq.com"
Mail.To="4659489@qq.com"
Mail.TextBody="This is an email message."
Mail.Send
Set Mail = Nothing
%>
