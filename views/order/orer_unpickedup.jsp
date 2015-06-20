<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../admin/meta.jsp" />
<title>${admintitle} - 订单查询</title>
<jsp:include page="../admin/common.jsp" />
<script type="text/javascript" src="${webpath}/assets/business/unpickeduporder.js"></script>
<script type="text/javascript">
    
</script>
</head>
<body>
  <div class="mcontainer" align="center">
    <jsp:include page="../admin/header.jsp"></jsp:include>

    <div id="search" class="spacing-top">    
    <div id="searchCondition1">
			<label>店铺名称</label> <input type="text" id="shopName" /> <label>客户名</label>
			<input type="text" id="userName" /> <label>客户电话</label> <input
				type="text" id="userMobile" /> <label>订单号</label> <input
				type="text" id="orderCode" />
		</div>
		<p>
		<div id="searchCondition2">
			 <label>下单时间</label> <input class="easyui-datetimebox"
				name="orderTimeAfter" style="width: 175px" id="orderTimeAfter" /> <label>:</label>
			<input class="easyui-datetimebox" name="orderTimeBefore"
				style="width: 175px" id="orderTimeBefore" /> <input type="button"
				name="searchBtn" id="searchButon" value="查询" onclick="query()">
		</div>
    </div>
    
    <div align="center" class="spacing-top-large">
      <table id="unpickeduporderlist"></table>
    </div>    

  </div>

</body>
</html>