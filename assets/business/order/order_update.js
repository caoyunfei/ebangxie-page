function confirm() {

	alert('confirm')

}

function reset() {
	$('form')[0].reset();

}

function cancel() {
	window.close();
}

$(function() {

	var months = [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October',
			'November', 'December' ];

	// 商户搜索域初始化
	$("#merchantId").autocomplete(months, {
		minChars : 0,
		max : 12,
		autoFill : true,
		mustMatch : true,
		matchContains : false,
		scrollHeight : 220,
		formatItem : function(data, i, total) {
			// don't show the current month in the list of values (for whatever reason)
			if (data[0] == months[new Date().getMonth()])
				return false;
			return data[0];
		}
	});

});