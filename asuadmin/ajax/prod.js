$(".save").click(function(){

update();
});
/////////////
function update(){
classid=$("#classid").val();

    prodname=$("#prod_name").val();
	uptime=$("#uptime").val();
    DefaultPicUrl=$("#DefaultPicUrl").val();
    content=$("#content").val();
	content1=$("#content1").val();


	Oid=$("#Oid").val();
	url=$("#url").val();
	title=$("#title").val();
	Keywords=$("#Keywords").val();
	Description=$("#Description").val();
	Passed=$("#Passed").is(':checked')
	Elite=$("#Elite").is(':checked')
	action=$("#action").val();//操作指令
	pid=$("#pid").val();//产品系统编号



console.log(action);

  $.post("ajax/prod.asp",{
	  classid:classid,
	  prodname:prodname,
	  DefaultPicUrl:DefaultPicUrl,
      content:content,
	  Oid:Oid,
	  uptime:uptime,
      Passed:Passed,
	  Elite:Elite,
	  action:action,
	  pid:pid

	  },
	  
    function(data,status){
	  if(status=="success"){
	//	  console.log(data);
		   if(data=="add"){

		  location.href='Prod_List.Asp?sta=add&Prod_Type='+classid+''
		  }else if(data=="mod"){

			  location.href='Prod_List.Asp?sta=mod&Prod_Type='+classid+''
			  }else if(data=="del"){

			  location.href='Prod_List.Asp?sta=del&Prod_Type='+classid+''
		  }
		/* */

		  }
    });
}