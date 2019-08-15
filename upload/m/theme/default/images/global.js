/**
 +----------------------------------------------------------
 * 刷新验证码
 +----------------------------------------------------------
 */
function refreshimage()
{
  var cap =document.getElementById("vcode");
  cap.src=cap.src+'?';
}

/**
 +----------------------------------------------------------
 * 表单提交
 +----------------------------------------------------------
 */
function douSubmit(form_id) {
    var formParam = $("#"+form_id).serialize(); //序列化表格内容为字符串
    
    $.ajax({
        type: "POST",
        url: $("#"+form_id).attr("action")+'&do=callback',
        data: formParam,
        dataType: "json",
        success: function(form) {
            if (!form) {
                $("#"+form_id).submit();
            } else {
                for(var key in form) {
                    $("#"+key).html(form[key]);
                }
            }
        }
    });
}

/**
 +----------------------------------------------------------
 * 弹出确认提示
 +----------------------------------------------------------
 */
function douConfirm(url, msg) {
    if (confirm(msg)) {
        window.location.href = url;
    }
}

/**
 +----------------------------------------------------------
 * 返回顶部
 +----------------------------------------------------------
 */
$(document).ready(function(e) {
    $(".goTop").live("click",
    function() {
        $('html,body').animate({
            scrollTop: 0
        })
    });
});