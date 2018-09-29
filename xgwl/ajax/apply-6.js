function save(e){
    
    schoolzone=$(".schoolzone").val();
    college=$(".college").val();
    major=$(".major").val();
    aid=$(".aid").val();

    $.post("xgwl/ajax/apply-5.asp",{
        aid:aid,
        schoolzone:schoolzone,
        college:college,
        major:major

    },
        function(data,status){
            
          if(status=="success"){
           // cookie.set(uid, 1);
            console.log(data);
                location.href='apply-'+e+'.Asp'
              }
            });

    }
    /////////////
    
    $.post("xgwl/ajax/apply-6.asp",{

    },
        function(data,status){
            
          if(status=="success"){

    //        console.log("ff");

            function yh(e){
                if (e!=undefined){
                    e=e.replace(/\'/g,'"');
                }
                return e;
            }
                
            //    console.log (yh(data));
            var areaMore=JSON.parse(yh(data));
            (function ($) {
                'use strict';
            
                $(function () {
                   
                    var provinceContent = "<option value=''>请选择校区</option>";
                    for (var i = 0; i < areaMore.length; i++) {
                        provinceContent += "<option value='" + areaMore[i].Province + "' >" + areaMore[i].Province + "</option>";
                    }
            
                    $('.schoolzone').append(provinceContent);
            
                    $('.schoolzone').chosen().change(function () {
                        //加载市
                        var province = $('.schoolzone').val();
                        for (var i = 0; i < areaMore.length; i++) {
                            if (areaMore[i].Province === province) {
                                var cityContent = "<option value=''>请选择学校</option>";
                                for (var j = 0; j < areaMore[i].City.length; j++) {
                                    cityContent += "<option value='" + areaMore[i].City[j] + "' >" + areaMore[i].City[j] + "</option>";
                                }
                                $('.college').html(cityContent).trigger('chosen:updated');;
                                return;
                            }
                        }
                        //alert("e");
                    });
            
                    $('.college').chosen().change(function () {
                        var province = $('.schoolzone').val();
                        for (var i = 0; i < areaMore.length; i++) {
                            if (areaMore[i].Province === province) {
                                var city = $('.college').val();
                                for (var j = 0; j < areaMore[i].City.length; j++) {
                                    if (areaMore[i].City[j] === city) {
                                        var areaContent = "<option value=''>请选择专业</option>";
                                        for (var k = 0; k < areaMore[i]._Area[j].length; k++) {
                                            areaContent += "<option value='" + areaMore[i]._Area[j][k] + "' >" + areaMore[i]._Area[j][k] + "</option>";
                                        }
                                        $('.major').html(areaContent).trigger('chosen:updated');;
                                        return;
                                    }
                                }
            
                               
                            }
                        }
                            
                    });
                    $('.major').chosen();
            
                }); //end $(function())
            
            })(jQuery);
              }
        });