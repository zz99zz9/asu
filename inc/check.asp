<%
Dim JMail 
Set JMail=Server.CreateObject("JMail.Message") 
If JMail Is Nothing Then 
Response.Write ("no") 
Else 
Response.Write ("yes") 
End If 
%>