$(function() {
	init();
});

function init() {
	var url = EDAIJIA.webpath_admin + '/recruit/query';

	$('#datalist').datagrid({
		title: '',
		url: url,
		method: 'post',
		iconCls: 'icon-edit',	// 图标
		height: 575,
		
		// 
		pageSize:20,
        pageList:[20,30,50],  
		nowrap: false,
		striped: true,
		border: true,
		collapsible: false, 	// 是否可折叠的
		singleSelect: true, 
		pagination: true, 
		rownumbers: true,
		toolbar:tb,
		
		idField: 'id',

		columns: [[ 
		    {field: 'id', title: '报名id', width: 50, align:'center'},
		    {field: 'name', title: '姓名', width: 70, align:'center'}, 
		    {field: 'mobile', title: '手机号码', width: 90, align:'center'}, 
		    {field: 'idCard', title: '身份证', width: 140, align:'center'},
		    {field: 'pic1', title: '手持身份证', width: 150, align:'center',
		    	formatter:function(value, row, index) { 
		    		if(value) {
		    			return '<img src="' + value + '" style="width: 140px; ">';
		    		} else {
		    			return '';
		    		}
		    	}
		    },
		    {field: 'pic2', title: '身份证', width: 150, align:'center',
		    	formatter:function(value, row, index) { 
		    		if(value) {
		    			return '<img src="' + value + '" style="width: 140px; padding-top:5px; padding-bottom:5px; ">';
		    		} else {
		    			return '';
		    		}
		    	}
		    },
		    {field: 'oper', title: '', width: 200,
		    	formatter:function(value, row, index) { 
		    		var deliverExpMeal = '无';
		    		if(row.deliverExp || 'meal'==row.deliverExp) {
		    			deliverExpMeal = '有';
		    		}
		    		
		    		var htmlv = "住址：" + row.address + "<br/>"
		    			+ "活动地：" + row.activeAddress + "<br/>"
		    			+ "送餐经验：" + deliverExpMeal + "<br/>"
		    			+ "报名时间：" + row.applyTime + "<br/>"
		    			+ "推荐人:" +row.recommenderName+"<br/>"
		    			+ "推荐人电话:" +row.recommenderMobile+"<br/>"
	    			   // + "处理时间：" + row.applyTime + "<br/>"
	    			   // + "处理时间：" + row.applyTime + "<br/>"
	    					;
		    		return htmlv;
		    	}
		    },
		    {field: 'checkOper', title: '审核', width: 90, align:'center', 
		    	formatter: function(value,row,index){
		    		if(row.status==2){
		    			return "已审核";
		    		}else if(row.status==1){
		    			return '<a href="update?id='+row.id+'">通过</a>';
		    		}else{
		    			return "状态未知";
		    		}
				}
		    }
		    ]],
		onLoadSuccess: function(data) {
			// alert(data);
		},
		onLoadError: function() {
			// alert('onLoadError');
		}
	});
}

function query() {
	var queryParams = {
			id:$('#id').val(),
			name:$('#name').val(),
			mobile:$('#mobile').val(),
			status:$('#status').val(),
	} ;
	$('#datalist').datagrid('load', queryParams);
}