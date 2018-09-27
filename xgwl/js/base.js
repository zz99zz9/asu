function getLength(str){
    // \x00-xff代表单字节字符。
    return str.replace(/[^\x00-\xff]/g, "xx").length;
}
var reg1 = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/; // 验证邮箱正则
var reg2 = /^1\d{10}$/;     //验证手机号正则


//验证普通表单
function check1(v){
    var reg = /[^\w\u4e00-\u9fa5]/g;    // 验证用户名正则
    if ($(v).val()==""||$(v).val()==""){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能为空");
    // }else if(reg.test($(v).val())){
    //     $(v).addClass("no");
    //     $(v).next(".errinfo").html("不能含有非法字符");

    }else if(getLength($(v).val())<4){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能少于4个字符");

    }else if(getLength($(v).val())>218){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能多于218个字符");

    }else {
        $(v).removeClass("no");
        $(v).next(".errinfo").html("");
    }
}
//验证手机号
function check2(v){
    if ($(v).val()==""||$(v).val()=="手机号码"){
        $(v).addClass("no");
        $(v).next(".errinfo").html("手机号码不能为空");

    }else if(!reg2.test($(v).val())){
        $(v).addClass("no");
        $(v).next(".errinfo").html("请检查手机号码是否正确");

    }else{
        $(v).removeClass("no");
        $(v).next(".errinfo").html("");
    }
}
//验证邮箱
function check3(v){
    if ($(v).val()==""||$(v).val()=="邮箱地址"){
        $(v).addClass("no");
        $(v).next(".errinfo").html("邮箱地址不能为空");
    }else if(!reg1.test($(v).val())){
        $(v).addClass("no");
        $(v).next(".errinfo").html("请确认邮箱地址是否输入正确");

    }else{
        $(v).removeClass("no");
        $(v).next(".errinfo").html("");
    }
}
//验证确认密码
function check4(v,v2){
    var reg = /[^\w\u4e00-\u9fa5]/g;    // 验证用户名正则
    if ($(v).val()==""||$(v).val()==""){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能为空");
    }else if(reg.test($(v).val())){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能含有非法字符");

    }else if(getLength($(v).val())<4){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能少于4个字符");

    }else if(getLength($(v).val())>16){
        $(v).addClass("no");
        $(v).next(".errinfo").html("不能多于16个字符");
    }else if($(v).val()!=$(v2).val()){
        $(v).addClass("no");
        $(v).next(".errinfo").html("两次密码输入不一样");
    }else {
        $(v).removeClass("no");
        $(v).next(".errinfo").html("");
    }
}