<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle}-修改快递员</title>
<jsp:include page="../common.jsp" />
<script type="text/javascript" src="${webpath}/assets/business/courier/update.js"></script>
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../header.jsp"></jsp:include>
		<div align="center" class="spacing-top-large">
			<div class="easyui-panel" title="更新快递员" style="width: 400px">
				<div style="padding: 10px 60px 20px 60px">
					<form id="ff" method="post" action="${webpath }/admin/courier/update" >
					    <input type="hidden" name="id" value='<c:out value="${courier.id}" />' />
						<table cellpadding="5">
							<tr>
								<td><font color="red">*</font>姓名:</td>
								<td><input class="easyui-textbox" type="text" name="name" value='<c:out value="${courier.name}" />' data-options="required:true,validType:{length:[1,50]}" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>手机号:</td>
								<td><input class="easyui-textbox" type="text" name="mobile" value='<c:out value="${courier.mobile}" />' data-options="required:true,validType:{length:[1,20]}" /></td>
							</tr>
							<tr>
								<td>经度:</td>
								<td><input class="easyui-textbox" type="text" name="longtitude" value='<c:out value="${courier.longtitude}" />' data-options="validType:{length:[0,20]}" /></td>
							</tr>
							<tr>
								<td>纬度:</td>
								<td><input class="easyui-textbox" type="text" name="latitude" value='<c:out value="${courier.latitude}" />' data-options="validType:{length:[0,20]}" /></td>
							</tr>
							<tr>
								<td>性别:</td>
								<td>
								    <c:if test="${courier.gender==1}">
								    	<input type="radio" name="gender" value="1"  checked="checked"/>男
								        <input type="radio" name="gender" value="2" />女 
								    </c:if>
								    <c:if test="${courier.gender==2}">
								    	<input type="radio" name="gender" value="1" />男
								        <input type="radio" name="gender" value="2" checked="checked"/>女 
								    </c:if>
								    <c:if test="${courier.gender==0}">
								        <input type="radio" name="gender" value="0" checked="checked"/>未知
								        <input type="radio" name="gender" value="1" />男
								        <input type="radio" name="gender" value="2" checked="checked"/>女 
								    </c:if>
								</td>
							</tr>
							<tr>
								<td>住址:</td>
								<td><input class="easyui-textbox" type="text" name="address" value='<c:out value="${courier.address}" />'  data-options="validType:{length:[0,255]}" /></td>
							</tr>
							<tr>
								<td>年龄:</td>
								<td><input class="easyui-textbox" type="text" name="age"  value='<c:out value="${courier.age}" />' data-options="validType:{length:[0,3]}" /></td>
							</tr>
							<tr>
								<td>身份证号:</td>
								<td><input class="easyui-textbox" type="text" name="idCard" value='<c:out value="${courier.idCard}" />'  data-options="validType:{length:[0,20]}" /></td>
							</tr>
							<tr>
								<td>户口所在地:</td>
								<td><input class="easyui-textbox" type="text" name="domicile" value='<c:out value="${courier.domicile}" />'  data-options="validType:{length:[0,255]}" /></td>
							</tr>
							<tr>
								<td>学历:</td>
								<td>
								    <select class="easyui-combobox" name="edu">
								       <c:choose>
								       		<c:when test="${courier.edu==0}">
									       		<option value="0" selected="selected">未知</option>
									        	<option value="1">小学</option>
												<option value="2">初中</option>
												<option value="3">高中</option>
												<option value="4">大学</option>
												<option value="5">硕士</option>
												<option value="6">博士</option>
								       		</c:when>
								       		<c:when test="${courier.edu==1}">
									       		<option value="0">未知</option>
									        	<option value="1" selected="selected">小学</option>
												<option value="2">初中</option>
												<option value="3">高中</option>
												<option value="4">大学</option>
												<option value="5">硕士</option>
												<option value="6">博士</option>
								       		</c:when>
								       		<c:when test="${courier.edu==2}">
									       		<option value="0">未知</option>
									        	<option value="1">小学</option>
												<option value="2" selected="selected">初中</option>
												<option value="3">高中</option>
												<option value="4">大学</option>
												<option value="5">硕士</option>
												<option value="6">博士</option>
								       		</c:when>
								       		<c:when test="${courier.edu==3}">
									       		<option value="0">未知</option>
									        	<option value="1">小学</option>
												<option value="2">初中</option>
												<option value="3" selected="selected">高中</option>
												<option value="4">大学</option>
												<option value="5">硕士</option>
												<option value="6">博士</option>
								       		</c:when>
								       		<c:when test="${courier.edu==4}">
									       		<option value="0">未知</option>
									        	<option value="1">小学</option>
												<option value="2">初中</option>
												<option value="3">高中</option>
												<option value="4" selected="selected">大学</option>
												<option value="5">硕士</option>
												<option value="6">博士</option>
								       		</c:when>
								       		<c:when test="${courier.edu==5}">
									       		<option value="0">未知</option>
									        	<option value="1">小学</option>
												<option value="2">初中</option>
												<option value="3">高中</option>
												<option value="4">大学</option>
												<option value="5" selected="selected">硕士</option>
												<option value="6">博士</option>
								       		</c:when>
								       		<c:when test="${courier.edu==6}">
									       		<option value="0">未知</option>
									        	<option value="1">小学</option>
												<option value="2">初中</option>
												<option value="3">高中</option>
												<option value="4">大学</option>
												<option value="5">硕士</option>
												<option value="6" selected="selected">博士</option>
								       		</c:when>
								       </c:choose>
									</select>
								</td>
							</tr>
							<tr>
								<td>专业:</td>
								<td><input class="easyui-textbox" type="text" name="pro" value='<c:out value="${courier.pro}" />'   data-options="validType:{length:[0,50]}" /></td>
							</tr>
							<tr>
								<td>紧急联系人姓名:</td>
								<td><input class="easyui-textbox" type="text" name="contact" value='<c:out value="${courier.contact}" />'  data-options="validType:{length:[0,50]}" /></td>
							</tr>
							<tr>
								<td>紧急联系人电话:</td>
								<td><input class="easyui-textbox" type="text" name="contactPhone" value='<c:out value="${courier.contactPhone}" />'  data-options="validType:{length:[0,20]}" /></td>	
							</tr>
							<tr>
								<td>与紧急联系人关系:</td>
								<td><input class="easyui-textbox" type="text" name="contactRelate" value='<c:out value="${courier.contactRelate}" />'  data-options="validType:{length:[0,20]}" /></td>	
							</tr>
							<tr>
								<td>活动地址:</td>
								<td><input class="easyui-textbox" type="text" name="activeAddress" value='<c:out value="${courier.activeAddress}" />' data-options="validType:{length:[0,255]}" /></td>	
							</tr>
							<tr>
								<td>快递经验:</td>
								<td>  
									<select class="easyui-combobox" name="deliverExp">
									    <c:choose>
									    	<c:when test="${courier.deliverExp==''}">
									    		<option value="" selected="selected">无</option>
												<option value="meal">送餐</option>
									    	</c:when>
									    	<c:when test="${courier.deliverExp=='meal'}">
									    		<option value="" >无</option>
												<option value="meal" selected="selected">送餐</option>
									    	</c:when>
									    </c:choose>
									</select>
                                </td>	
							</tr>
							<tr>
								<td>入职时间:</td>
								<td><input class="easyui-datetimebox" type="text" name="entrantTime" value='<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${courier.entrantTime}"/>'   style="width:175px"/></td>	
							</tr>
							<tr>
								<td>报名时间:</td>
								<td><input class="easyui-datetimebox" type="text" name="applyTime" value='<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${courier.applyTime}"/>'   style="width:175px"/></td>	
							</tr>
							<tr>
								<td>推荐人姓名:</td>
								<td><input class="easyui-textbox" type="text" name="recommenderName" value='<c:out value="${courier.recommenderName}" />' data-options="validType:{length:[0,50]}" /></td>	
							</tr>
							<tr>
								<td>推荐人手机:</td>
								<td><input class="easyui-textbox" type="text" name="recommenderMobile" value='<c:out value="${courier.recommenderMobile}" />'  data-options="validType:{length:[0,20]}" /></td>	
							</tr>
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