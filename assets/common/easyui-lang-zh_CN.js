(function(){
    if ($.fn.textbox.defaults){
        $.fn.textbox.defaults.missingMessage = '该输入项为必输项';
        $.fn.textbox.defaults.rules.email.message = '请输入有效的电子邮件地址';
        $.fn.textbox.defaults.rules.url.message = '请输入有效的URL地址';
        $.fn.textbox.defaults.rules.length.message = '输入内容长度必须介于{0}和{1}之间';
        $.fn.textbox.defaults.rules.remote.message = '请修正该字段';
    }
})();