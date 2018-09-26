<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="UpLoad_Class.asp"-->

<%
dim upload
set upload = new AnUpLoad
dim file2

upload.Exe = "*"
upload.MaxSize = 20 * 1024 * 1024 '2M
upload.GetData()
if upload.ErrorID>0 then 
	response.Write upload.Description
else
	dim file,savpath
	savepath = "UploadFiles/"&year(now())&"-"&month(now())&"/"&day(now())
	for each frm in upload.forms("-1")
	'	response.Write frm & "=" & upload.forms(frm) & "<br />"
	next
	
	set file = upload.Files("file1")
	if file.isfile then
		result = file.saveToFile(savepath,0,true)
		if result then
			response.Write "文件'" & file.LocalName & "'上传成功，保存位置'" & server.MapPath(savepath & "/" & file.filename) & "',文件大小" & file.size & "字节<br />"
			response.write "<script>window.opener.document.form2."&upload.forms("file2")&".value='/"&savepath& "/" & file.filename&"'</script>"
            response.write "<script>window.opener.document.getElementsByClassName('"&upload.forms("file2")&"ok')[0].innerHTML = '" & file.filename&"';</script>"
            response.write "<script>window.opener.document.getElementsByClassName('"&upload.forms("file2")&"ok')[0].style.display = 'block';</script>"
			response.write "<script language='javascript'>window.close();</script>"
		else
			response.Write file.Exception & "<br />"
		end if
	end if

	set file = upload.Files_Muti("file1",1)
	if file.isfile then
		result = file.saveToFile(savepath,1,true)
		if result then
	'		response.Write "文件'" & file.LocalName & "'上传成功，保存位置'" & server.MapPath(savepath & "/" & file.filename) & "',文件大小" & file.size & "字节<br />"
			response.write "<script>window.opener.document.form2."&upload.forms("file2")&".value='"&file.filename&"'</script>"

			response.write "<script language='javascript'>window.close();</script>"
		else
			response.Write file.Exception & "<br />"
		end if
	end if
	
        '    response.write "<script>window.opener.document.getElementsByClassName('"&upload.forms("file2")&"ok')[0].innerHTML = 'Try again';</script>"
        '    response.write "<script>window.opener.document.getElementsByClassName('"&upload.forms("file2")&"ok')[0].style.display = 'block';</script>"
			response.write "<script language='javascript'>window.close();</script>"
	
end if
set upload = nothing
%>