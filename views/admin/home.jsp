<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<jsp:include page="meta.jsp" />
<title>${admintitle}</title>
<jsp:include page="common.jsp" />
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="mcontainer" align="left">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="easyui-accordion" style="width: 150px; height: 500px; line-height: 20px; ">
			<div title="快递员管理" data-options="collapsed:false,collapsible:false" style="padding: 10px;">
                <div><a href="${webpath }/admin/recruit/index">报名数据</a></div>
				<div>在线考试</div>
				<div>考题管理</div>
				<div><a href="${webpath}/admin/courier/topage">快递员列表</a></div>
				<div><a href="${webpath}/admin/courier/map/index">快递员分布</a></div>
			</div>
			<div title="商户管理" data-options="collapsed:false,collapsible:false" style="padding: 10px;">
				<div>商户数据</div>
				<div>其他</div>
			</div>
			<div title="系统管理" data-options="collapsed:false,collapsible:false" style="padding: 10px;">
				<div></div>
			</div>
			<div title="订单管理" data-options="collapsed:false,collapsible:false" style="padding: 10px;">
				<div><a href="${webpath }/admin/order/index?type=0">订单查询</a></div>
				<div><a href="${webpath }/admin/order/index?type=1">未接订单</a></div>
			</div>
			<div title="数据维护" data-options="collapsed:false,collapsible:false" style="padding: 10px;">
				<div><a href="${webpath}/admin/notice/topage">通知商户列表</a></div>
			</div>
		</div>

	</div>
</body>
</html>