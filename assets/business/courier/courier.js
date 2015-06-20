$(function() {
	init();
});

function init() {
	var url = EDAIJIA.webpath_admin + '/courier/page';

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
		toolbar:tb,
		
		idField: 'id',

		columns: [[ 
            {field: 'id', title: '快递员id', width: 70, align:'center'},
		    {field: 'name', title: '姓名', width: 70, align:'center'}, 
		    {field: 'mobile', title: '手机号码', width: 90, align:'center'}, 
		    {field: 'idCard', title: '身份证号', width: 140, align:'center'},
		    {field: 'address', title: '地址', width: 70, align:'center'},
		    {field: 'longtitude', title: '经度', width: 90, align:'center'},
		    {field: 'latitude', title: '纬度', width: 90, align:'center'},
		    {field: 'age', title: '年龄', width: 90, align:'center'},
		    {field: 'oper', title: '操作', width: 90, align:'center', 
		    	formatter: function(value,row,index){
		    		var updateUrl='<a href="toUpdate?id='+row.id+'" target="_blank">修改</a>';
		    		return updateUrl;
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
	} ;
	$('#datalist').datagrid('load', queryParams);
}