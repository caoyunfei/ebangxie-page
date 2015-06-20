<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle}-快递员报名审核结果</title>
<jsp:include page="../common.jsp" />
<script type="text/javascript"
	src="${webpath}/assets/business/courier/courier.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../header.jsp"></jsp:include>
		
		<c:if test="${result=='updateSuccess'}">
			<div align="center" class="spacing-top-large">
				<div class="easyui-panel" title="快递员审核通过" style="width: 400px">
					<div style="padding: 10px 60px 20px 60px">
						<div style="text-align: center; padding: 5px">
							<a href="${webpath}/admin/recruit/index" class="easyui-linkbutton">返回列表</a>	
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</div>
</body>
</html>