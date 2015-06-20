
function dateFmt(date, pattern) {
	var z = {
		M : date.getMonth() + 1,
		d : date.getDate(),
		H : date.getHours(),
		m : date.getMinutes(),
		s : date.getSeconds()
	};
	pattern = pattern.replace(/(M+|d+|H+|m+|s+)/g, function(v) {
		return ((v.length > 1 ? "0" : "") + eval('z.' + v.slice(-1))).slice(-2)
	});
	return pattern.replace(/(y+)/g, function(v) {
		return date.getFullYear().toString().slice(-v.length)
	});
}

function millisFmt(millis, pattern) {
	if(!millis) {
		return '';
	}
	
	var date = new Date();
	date.setTime(millis);
	
	return dateFmt(date, pattern);
}

function ajaxLoading(){ 
    $("<div class=\"datagrid-mask\"></div>").css({display:"block",width:"100%",height:$(window).height()}).appendTo("body"); 
    $("<div class=\"datagrid-mask-msg\"></div>").html($.fn.datagrid.defaults.loadMsg).appendTo("body").css({display:"block",left:($(document.body).outerWidth(true) - 190) / 2,top:($(window).height() - 45) / 2});
} 
 
function ajaxLoadEnd(){ 
     $(".datagrid-mask").remove(); 
     $(".datagrid-mask-msg").remove();             
} 

function getElementTop(height) {
	return $(document).scrollTop() + ($(window).height()-180) * 0.5;  
}

function fixWidth(percent)  {
    return document.body.clientWidth * percent ;
}

function getFormatDate(obj) { 
        var myDate = new Date(obj); 
        var year = myDate.getFullYear();
        var month = ("0" + (myDate.getMonth() + 1)).slice(-2);
        var day = ("0" + myDate.getDate()).slice(-2);
        var h = ("0" + myDate.getHours()).slice(-2);
        var m = ("0" + myDate.getMinutes()).slice(-2);
        var s = ("0" + myDate.getSeconds()).slice(-2); 
        var mi = ("00" + myDate.getMilliseconds()).slice(-3);
        return year + "-" + month + "-" + day + " " + h + ":" + m + ":" + s; 
        //return year + "-" + month + "-" + day + " " + h + ":" + m + ":" + s + "." + mi; 
}