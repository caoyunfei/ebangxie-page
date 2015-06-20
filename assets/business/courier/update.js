function updateForm() {
	$('#ff').form('submit', {
	    onSubmit: function(){
	    	var isValid = $(this).form('validate');
			if (!isValid){
				$.messager.progress('close');
			}
			return isValid;
	    },
	    success:function(data){
	    	var data = eval('(' + data + ')');
	    	if(data.success){
	    		$.messager.alert('操作结果','更新快递员成功!','info');
	    	}else{
	    		$.messager.alert('操作结果','更新快递员失败!<br/>具体原因<br/>'+data.message,'error');
	    	}
	    }
	});
}