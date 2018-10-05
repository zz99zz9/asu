<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0" />


 <link href="xgwl/css/lib/mobiscroll.css" rel="stylesheet" />
<link href="xgwl/css/lib/mobiscroll_date.css" rel="stylesheet" />

</head>

<body>

  <section >


      <label>出生日期：</label>
      <input type="text" name="USER_AGE" id="USER_AGE" readonly class="input" placeholder="请填写你的出生日期" />


  </section>
<script src="xgwl/js/lib/jquery.min.js"></script> 
<script src="xgwl/js/lib/mobiscroll_date.js" charset="gb2312"></script> 
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
		nowText: "今天",
		startYear: currYear - 50, //开始年份
		endYear: currYear + 10 //结束年份
	};

	$("#USER_AGE").mobiscroll($.extend(opt['date'], opt['default']));

});
</script>

</body>
</html>
