<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle} - 快递员报名数据</title>
<jsp:include page="../common.jsp" />
<script type="text/javascript" src="${webpath}/assets/business/courier/courier.js"></script>
</head>
<body>
  <div class="mcontainer" align="center">
    <jsp:include page="../header.jsp"></jsp:include>

    <div id="search" class="spacing-top">
    
    </div>
    
    <div align="center" class="spacing-top-large">
      <table id="datalist"></table>
      
      <div id="tb" style="padding:3px">
		<span>id:</span>
		<input id="id" style="line-height:18px;border:1px solid #ccc; width:70px">
		<span>姓名:</span>
		<input id="name" style="line-height:18px;border:1px solid #ccc">
		<span>电话:</span>
		<input id="mobile" style="line-height:18px;border:1px solid #ccc">
		<a href="#" class="easyui-linkbutton"  onclick="query()">查询</a>
		<a href="${webpath}/admin/courier/toadd" class="easyui-linkbutton" >新增快递员</a>
	  </div>
      
    </div>

  </div>

</body>
</html>