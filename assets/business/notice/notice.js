$(function() {
	init();
});

function init() {
	var url = EDAIJIA.webpath_admin + '/notice/page';

	$('#datalist').datagrid({
		title: '',
		url: url,
		method: 'post',
		iconCls: 'icon-edit',	// 图标
		height: 575,
		
		// 
		pageSize:20,
        pageList:[5,10,20,30,50],  
		nowrap: false,
		striped: true,
		border: true,
		collapsible: false, 	// 是否可折叠的
		singleSelect: true, 
		pagination: true, 
		rownumbers: true, 
		
		idField: 'id',

		columns: [[ 
            {field: 'orderId', title: 'orderId', width: 140, align:'center'},
		    {field: 'orderCode', title: 'orderCode', width: 140, align:'center'}, 
		    {field: 'acceptResult', title: 'acceptResult', width: 50, align:'center'}, 
		    {field: 'pickupResult', title: 'pickupResult', width: 50, align:'center'},
		    {field: 'handoverResult', title: 'pickupResult', width: 50, align:'center'},
		    {field: 'addTime', title: 'addTime', width: 90, align:'center'},
		    {field: 'updateTime', title: 'updateTime', width: 90, align:'center'},
		    {field: 'oper1', title: '重发抢单', width: 90, align:'center', 
		    	formatter: function(value,row,index){
		    		var aa='<a href="acceptOrder?orderId='+row.orderId+'" target="_blank">重发抢单</a>';
		    		return aa;
				}
		    },
		    {field: 'oper2', title: '重发到店', width: 90, align:'center', 
		    	formatter: function(value,row,index){
		    		var bb='<a href="pickupOrder?orderId='+row.orderId+'" target="_blank">重发到店</a>';
		    		return bb;
				}
		    },
		    {field: 'oper3', title: '重发妥投', width: 90, align:'center', 
		    	formatter: function(value,row,index){
		    		var cc='<a href="handoverOrder?orderId='+row.orderId+'" target="_blank">重发妥投</a>';
		    		return cc;
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
	} ;
	$('#datalist').datagrid('load', queryParams);
}