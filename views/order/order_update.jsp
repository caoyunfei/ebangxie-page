<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../admin/meta.jsp" />
<title>${admintitle}-修改订单</title>
<jsp:include page="../admin/common.jsp" />
<script type="text/javascript" src="../../assets/business/order/order_update.js"></script>
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../admin/header.jsp"></jsp:include>
		<div align="center" class="spacing-top-large">
			<div class="easyui-panel" title="更新订单" style="width: 400px">
				<div style="padding: 10px 60px 20px 60px">
					<form id="ff" method="post" action="update" style="">
						<input type="hidden" name="id" value='<c:out value="${order.id}" />' />
						<div>
							<label class="ui-label-red" for="merchantId">商户</label>
							<input class="" type="text" name="merchantId" id="merchantId" value='<c:out value="${order.merchantId}" />' />
						</div>
						<div>
							<label class="ui-label-red" for="goodsName">商品名称</label>
							<input class="easyui-textbox" type="text" name="goodsName" value='<c:out value="${order.goodsName}" />' />
						</div>
						<div>
							<label class="ui-label-red" for="goodsDesc">商品描述</label>
							<input class="easyui-textbox" type="text" name="goodsDesc" value='<c:out value="${order.goodsDesc}" />' />
						</div>
						<div>
							<label class="ui-label-red" for="receiveAddress">收货地址</label>
							<input class="easyui-textbox" type="text" name="receiveAddress" value='<c:out value="${order.receiveAddress}" />' />
						</div>
						<div>
							<label class="ui-label-red" for="sendAddress">发货地址</label>
							<input class="easyui-textbox" type="text" name="sendAddress" value='<c:out value="${order.sendAddress}" />' />
						</div>
						<div>
							<label class="ui-label-red" for="userName">用户姓名</label>
							<input class="easyui-textbox" type="text" name="userName" value='<c:out value="${order.userName}" />' />
						</div>
						<div>
							<label class="ui-label-red" for="userMobile">用户手机</label>
							<input class="easyui-textbox" type="text" name="userMobile" value='<c:out value="${order.userMobile}" />' />
						</div>
					</form>
					<div style="text-align: center; padding: 10px">
						<a href="#" class="easyui-linkbutton" style="width: 60px;">确定</a>
						<!-- <a href="javascript:void(0)" class="easyui-linkbutton" onclick="reset()" style="width:60px; ">重置</a> -->
						<a href="#" class="easyui-linkbutton" style="width: 60px;">取消</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>