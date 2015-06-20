<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../admin/meta.jsp" />
<title>${admintitle}-新增订单</title>
<jsp:include page="../admin/common.jsp" />
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../admin/header.jsp"></jsp:include>
		<div align="center" class="spacing-top-large">
			<div class="easyui-panel" title="更新快递员" style="width: 400px">
				<div style="padding: 10px 60px 20px 60px">
					<form id="ff" method="post" action="${webpath }/admin/courier/update" >
					    <input type="hidden" name="id" value='<c:out value="${courier.id}" />' />
						<table cellpadding="5">
						</table>
					</form>
					<div style="text-align:center;padding:5px">
			            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="updateForm()">更新</a>
			        </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>