$(function() {
	init();
});

function init() {
	var url = EDAIJIA.webpath_admin + '/order/unpickedup';
	var updateurl = EDAIJIA.webpath_admin + '/order/update';
	var editRow = undefined;
	$('#unpickeduporderlist').datagrid({
		title: '',
		url: url,
		method: 'post',
		iconCls: 'icon-edit',	// 图标
		height: 575,
		width: 1080,
		
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
		
		idField: 'orderId',

		columns: [[ 
		    {field: 'orderCode', title: '订单号', width: 70, align:'center'}, 
		    {field: 'shopName', title: '店铺', width: 70, align:'center'}, 
		    {field: 'shopAddress', title: '取货地址', width: 90, align:'center'}, 
		    {field: 'shopPhone', title: '商家电话', width: 90, align:'center'},
		    {field: 'goodsDesc', title: '送货详情', width: 90, align:'center'},
		    {field: 'price', title: '价格', width: 70, align:'center'},
		    {field: 'customerName', title: '客户', width: 90, align:'center'},
		    {field: 'customerPhone', title: '客户电话', width: 90, align:'center'},
		    {field: 'customerAddress', title: '收货地址', width: 90, align:'center'},
		    {field: 'orderTime', title: '下单时间', width: 90, align:'center'},
		    {field: 'pickupTime', title: '取货时间', width: 90, align:'center'},
		    {field: 'finishTime', title: '送达时间', width: 90, align:'center'}		    
//		    {field: 'status', title: '订单状态', width: 90, align:'center'}
		    ]],
		    /*
		    toolbar: [{
	            text: '添加', iconCls: 'icon-add', handler: function () {
	                if (editRow != undefined) {
	                    $("#unpickeduporderlist").datagrid('endEdit', editRow);
	                }
	                if (editRow == undefined) {
	                    $("#unpickeduporderlist").datagrid('insertRow', {
	                        index: 0,
	                        row: {}
	                    });
	 
	                    $("#unpickeduporderlist").datagrid('beginEdit', 0);
	                    editRow = 0;
	                }
	            }
	        }, '-', {
	            text: '保存', iconCls: 'icon-save', handler: function () {
	                $("#unpickeduporderlist").datagrid('endEdit', editRow);
	 
	                //如果调用acceptChanges(),使用getChanges()则获取不到编辑和新增的数据。
	 
	                //使用JSON序列化datarow对象，发送到后台。
	                var rows = $("#unpickeduporderlist").datagrid('getChanges');
	 
	                var rowstr = JSON.stringify(rows);
	                $.post('/Home/Create', rowstr, function (data) {
	                     
	                });
	            }
	        }, '-', {
	            text: '撤销', iconCls: 'icon-redo', handler: function () {
	                editRow = undefined;
	                $("#unpickeduporderlist").datagrid('rejectChanges');
	                $("#unpickeduporderlist").datagrid('unselectAll');
	            }
	        }, '-', {
	            text: '删除', iconCls: 'icon-remove', handler: function () {
	                var row = $("#unpickeduporderlist").datagrid('getSelections');
	                 
	            }
	        }, '-', {
	            text: '修改', iconCls: 'icon-edit', handler: function () {
	                var row = $("#unpickeduporderlist").datagrid('getSelected');
	                if (row !=null) {
	                    if (editRow != undefined) {
	                        $("#unpickeduporderlist").datagrid('endEdit', editRow);
	                    }
	 
	                    if (editRow == undefined) {
	                        var index = $("#unpickeduporderlist").datagrid('getRowIndex', row);
	                        $("#unpickeduporderlist").datagrid('beginEdit', index);
	                        editRow = index;
	                        $("#unpickeduporderlist").datagrid('unselectAll');
	                    }
	                } else {
	                     
	                }
	            }
	        }],
	        */
		onLoadSuccess: function(data) {
			// alert(data);
		},
		onLoadError: function() {
			// alert('onLoadError');
		},
		 onAfterEdit: function (rowIndex, rowData, changes) {
	            editRow = undefined;
	        },
	        onDblClickRow:function (rowIndex, rowData) {
	            if (editRow != undefined) {
	                $("#unpickeduporderlist").datagrid('endEdit', editRow);
	            }
	 
	            if (editRow == undefined) {
	                $("#unpickeduporderlist").datagrid('beginEdit', rowIndex);
	                editRow = rowIndex;
	            }
	        },
	        onClickRow:function(rowIndex,rowData){
	            if (editRow != undefined) {
	                $("#unpickeduporderlist").datagrid('endEdit', editRow);
	 
	            }
	            
	        }
	});
}

function query() {
	var queryParams = {
			shopName : $('#shopName').val(),
			userName : $('#userName').val(),
			userMobile : $('#userMobile').val(),			
			orderCode : $('#orderCode').val(),
			status : $('#status').val(),
			orderTimeAfter : $("input[name^='orderTimeAfter']").val(),
			orderTimeBefore : $("input[name^='orderTimeBefore']").val()
	} ;
	$('#unpickeduporderlist').datagrid('load', queryParams);
}