<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../admin/meta.jsp" />
<title>${admintitle}-订单查询</title>
<jsp:include page="../admin/common.jsp" />
<script type="text/javascript" src="../../assets/business/order/order_index.js"></script>
<script type="text/javascript">
	function queryQrder() {
		var queryParams = {
			shopName : $('#shopName').val(),
			userName : $('#userName').val(),
			userMobile : $('#userMobile').val(),
			timeAfter : $('#timeAfter').val(),
			timeBefore : $('#timeBefore').val()
		};

		$('#orderlist').datagrid('load', queryParams);
	}
</script>
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../admin/header.jsp"></jsp:include>
		<div id="searchCondition1">
			<label>店铺名称</label>
			<input type="text" id="shopName" />
			<label>客户名</label>
			<input type="text" id="userName" />
			<label>客户电话</label>
			<input type="text" id="userMobile" />
			
		</div>
		<p>
		<div id="searchCondition2">
			<label>订单状态</label>
			<select id="status">
				<option value="-1"></option>
				<option value="200">初始状态</option>
				<option value="209">抢单中</option>
				<option value="210">已经抢单</option>
				<option value="220">取货</option>
				<option value="230">完成</option>
				<option value="231">商户取消</option>
				<option value="232">系统取消</option>
				<option value="233">用户取消</option>

			</select>
			<label>下单时间</label>
			<input class="easyui-datetimebox" name="orderTimeAfter" style="width: 175px" id="orderTimeAfter" />
			<label>:</label>
			<input class="easyui-datetimebox" name="orderTimeBefore" style="width: 175px" id="orderTimeBefore" />
			<!-- <input type="button" name="searchBtn" id="searchButon" value="查询" onclick="query()">
			<input type="button" name="searchBtn" id="searchButon" value="新增" > -->

			<a href="#" class="easyui-linkbutton" onclick="query(); return false;">查询</a>
			<a href="./toinsert" class="easyui-linkbutton btn-add" target="_blank">新增订单</a>
		</div>

		<div id="search" class="spacing-top"></div>

		<div align="center" class="spacing-top-large">
			<table id="orderlist"></table>
		</div>

	</div>

</body>
</html>