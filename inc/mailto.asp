<%

'参数说明
'Subject : 邮件标题
'MailAddress : 发件服务器的地址,如smtp.163.com
'Email : 收件人邮件地址
'Sender : 发件人姓名
'Content : 邮件内容
'Fromer : 发件人的邮件地址

Sub SendAction(subject, email, sender, content) 
Set JMail = Server.CreateObject("JMail.Message") 
JMail.Charset = "utf-8" ' 邮件字符集，默认为"US-ASCII"
JMail.From = strMailUser ' 发送者地址
JMail.FromName = sender' 发送者姓名
JMail.Subject =subject
JMail.MailServerUserName = strMailUser' 身份验证的用户名
JMail.MailServerPassword = strMailPass ' 身份验证的密码
JMail.Priority = 3
JMail.AddRecipient(email)
JMail.Body = content
JMail.Send(strMailAddress)
End Sub

'调用此Sub的例子
Dim strSubject,strEmail,strMailAdress,strSender,strContent,strFromer
strSubject = "Reset password of ASU"'标题
strContent = "Click:"&url'内容
strSender = "ASUmentor"
strEmail = email '这是收信的地址,可以改为其它的邮箱
strMailAddress = "hwhzsmtp.qiye.163.com" '我司企业邮局地址，请使用 mail.您的域名
strMailUser = "system@umentoredu.com" '我司企业邮局用户名
strMailPass = "UMentor2017" '邮局用户密码

'Call SendAction (strSubject,strEmail,strSender,strContent)

%>
