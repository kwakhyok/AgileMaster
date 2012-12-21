var IE6 = (navigator.userAgent.indexOf("MSIE 6") >= 0) ? true : false; //Detecting if the browser is IE6 to easily take browser-specific actions


$(document).ready(function () {
    //TOP NAVIGATION DROPDOWN MENU START
    $(function () {
        $("ul.dropdown li").hover(function () {
            $('ul:first', this).css('visibility', 'visible');
        }, function () {
            $('ul:first', this).css('visibility', 'hidden');
        });

        $("ul.dropdown li ul li").hover(function () {
            var offset = $(this).offset();
            var offset2 = $('#topNavigationWrap').offset();
            $('ul:first', this).css('margin-top', offset.top - offset2.top - 45);//This is where we calculate the position of submenus to add a margin-top for them.
        });
        $("ul.dropdown li ul li:has(ul)").find("a:first").append(" &raquo; ");
    });
    //TOP NAVIGATION DROPDOWN MENU END


    //DATEPICKER START
    $(function () {
        $("#datepicker").datepicker({
            showOtherMonths:true,
            selectOtherMonths:true,
            onSelect:function (text, inst) {
                alert(text);
            }
        });

    });
    //DATEPICKER END





    //CHARTS START
    if (!(IE6)) { //function to disable charts for IE6
        $(function () {
            //Supports pie, bar, area and line values as chart types
            $('#chart').visualize({type:'line', width:'640px', height:'200px'});
        });
    }
    //CHARTS END


    //ACCORDION START
    $(function () {
        $("#accordion").accordion({ autoHeight:false });
        $("#accordion2").accordion({ autoHeight:false });
        $("#tabs").tabs();
    });
    //ACCORDION END


    //WYSIWYG START
    $('#shortInfo').wysiwyg();
    //WYSIWYG END


    //COLORBOX START
    $(".colorBoxElement").colorbox();
    //COLORBOX END


    //ADVANCED SEARCH START
    $("#advancedSearchWrap").hide();
    $("#advancedSearchLink").click(function () {
        $("#advancedSearchWrap").slideToggle("slow");
        return false;
    });
    //ADVANCED SEARCH END


    //LOGIN FORM START
    $("#forgotPassword").hide();
    $("#forgotPasswordLink").click(function () {
        $("#login").slideUp("slow", function () {
            $("#forgotPassword").slideDown("slow");
        });
        return false;
    });

    $("#loginLink").click(function () {
        $("#forgotPassword").slideUp("slow", function () {
            $("#login").slideDown("slow");
        });
        return false;
    });
    //LOGIN FORM END

});

jQuery(function ($) {
    $.datepicker.regional['zh-CN'] = {
        closeText:'关闭',
        prevText:'&#x3c;上月',
        nextText:'下月&#x3e;',
        currentText:'今天',
        monthNames:['一月', '二月', '三月', '四月', '五月', '六月',
            '七月', '八月', '九月', '十月', '十一月', '十二月'],
        monthNamesShort:['一', '二', '三', '四', '五', '六',
            '七', '八', '九', '十', '十一', '十二'],
        dayNames:['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
        dayNamesShort:['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
        dayNamesMin:['日', '一', '二', '三', '四', '五', '六'],
        weekHeader:'周',
        dateFormat:'yy-mm-dd',
        firstDay:1,
        isRTL:false,
        showMonthAfterYear:true,
        yearSuffix:'年'};
    $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
});