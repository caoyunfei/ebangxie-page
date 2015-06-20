<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle} - 快递员报名数据</title>
<jsp:include page="../common.jsp" />
<script type="text/javascript" src="${webpath}/assets/business/recruit.js"></script>
<script type="text/javascript">
    
</script>
</head>
<body>
  <div class="mcontainer" align="center">
    <jsp:include page="../header.jsp"></jsp:include>

    <div id="search" class="spacing-top">
    
    </div>
    
    <div align="center" class="spacing-top-large">
      <table id="datalist"></table>
    </div>
    
     <div id="tb" style="padding:3px">
		<span>报名id:</span>
		<input id="id" style="line-height:18px;border:1px solid #ccc; width:70px">
		<span>姓名:</span>
		<input id="name" style="line-height:18px;border:1px solid #ccc">
		<span>电话:</span>
		<input id="mobile" style="line-height:18px;border:1px solid #ccc">
		<span>状态:</span>
		<select id="status">
			<option value="1">未审核</option>
			<option value="2">审核通过</option>
			<option value="-1">全部</option>
		</select>
		<a href="#" class="easyui-linkbutton"  onclick="query()">查询</a>
	  </div>
    
    <!-- 
    <div style="text-align: right; padding-top: 5px; padding-right: 5px;">
        <a id="exportExcelBtn" href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'"
            onclick="exportExcel();">导出数据</a>
    </div>
     -->

  </div>

</body>
</html>