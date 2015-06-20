$(function() {
	init();
});

function init() {
	var url = EDAIJIA.webpath_admin + '/order/query';

	$('#orderlist').datagrid({
		title : '',
		url : url,
		method : 'post',
		iconCls : 'icon-edit', // 图标
		height : 575,
		width : 1080,

		// 
		pageSize : 20,
		pageList : [ 20, 30, 50 ],
		nowrap : false,
		striped : true,
		border : true,
		collapsible : false, // 是否可折叠的
		singleSelect : true,
		pagination : true,
		rownumbers : true,

		idField : 'orderId',

		columns : [ [ {
			field : 'orderCode',
			title : '订单号',
			width : 70,
			align : 'center'
		}, {
			field : 'shopName',
			title : '店铺',
			width : 70,
			align : 'center'
		}, {
			field : 'shopAddress',
			title : '取货地址',
			width : 90,
			align : 'center'
		}, {
			field : 'shopPhone',
			title : '商家电话',
			width : 90,
			align : 'center'
		}, {
			field : 'goodsDesc',
			title : '送货详情',
			width : 90,
			align : 'center'
		}, 
		/*{
			field : 'price',
			title : '价格',
			width : 70,
			align : 'center'
		},
		*/ 
		{
			field : 'customerName',
			title : '客户',
			width : 90,
			align : 'center'
		}, {
			field : 'customerPhone',
			title : '客户电话',
			width : 90,
			align : 'center'
		}, {
			field : 'customerAddress',
			title : '收货地址',
			width : 90,
			align : 'center'
		}, {
			field : 'orderTime',
			title : '下单时间',
			width : 90,
			align : 'center'
		}, {
			field : 'pickupTime',
			title : '取货时间',
			width : 90,
			align : 'center'
		},
		/*
		{
			field : 'finishTime',
			title : '送达时间',
			width : 90,
			align : 'center'
		},
		*/
		 {
			field : 'status',
			title : '订单状态',
			width : 90,
			align : 'center'
		/*
		 * }, { field : 'oper_update', title : '操作', width : 50, align :
		 * 'center', formatter : function(value, row, index) { return '<a
		 * href="toupdate?id=' + row.orderId + '" target="_blank">[修改]</a>'; }
		 */
		}, {
			field : 'oper_update',
			title : '操作',
			width : 80,
			align : 'center',
			formatter : function(value, row, index) {
				return '<a href="#" orderid="' + row.orderId + '" onClick="doRepublic(this); return false;">[重新发布]</a>'
			}
		}, {
			field : 'oper_delete',
			title : '操作',
			width : 50,
			align : 'center',
			formatter : function(value, row, index) {
				return '<a href="#" orderid="' + row.orderId + '" onClick="doDelete(this); return false;">[删除]</a>'
			}
		} ] ],
		onLoadSuccess : function(data) {
			// alert(data);
		},
		onLoadError : function() {
			// alert('onLoadError');
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
	};

	$('#orderlist').datagrid('load', queryParams);
}

/**
 * 删除
 * 
 * @param el
 *            dom元素
 */
function doDelete(el) {
	var id = $(el).attr('orderid');
	$.messager.confirm('警告', '确定要删除此订单[' + id + ']吗?', function(r) {
		if (r) {
			$.ajax({
				url : 'delete',
				type : 'post',
				data : {
					id : id
				},
				success : function() {
					query();
				}
			});

		}
	});
}

/**
 * 重新发布
 * 
 * @param el
 *            dom元素
 */
function doRepublic(el) {
	var id = $(el).attr('orderid');
	$.messager.confirm('警告', '要重新发布此订单[' + id + ']吗?', function(r) {
		if (r) {
			$.ajax({
				url : 'republic',
				type : 'post',
				data : {
					id : id
				},
				success : function() {
					query();
				}
			});

		}
	});
}

$(function() {

	// // 新增
	// $('.btn-add').onClick(function() {
	// alert(1);
	// });

	// // 删除
	// $('td[field=oper_delete]').find('a[orderid]').each(function() {
	// console.log('into loop')
	// $(this).on('click', function() {
	//			
	//			
	//			
	// return false;
	// });
	//		
	// });
});
