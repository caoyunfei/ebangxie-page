<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle}-新增快递员</title>
<jsp:include page="../common.jsp" />
<script type="text/javascript" src="${webpath}/assets/business/courier/add.js"></script>
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../header.jsp"></jsp:include>
		<div align="center" class="spacing-top-large">
			<div class="easyui-panel" title="新增快递员" style="width: 400px">
				<div style="padding: 10px 60px 20px 60px">
					<form id="ff" method="post" action="${webpath }/admin/courier/add">
						<table cellpadding="5">
							<tr>
								<td><font color="red">*</font>姓名:</td>
								<td><input class="easyui-textbox" type="text" name="name"  data-options="required:true,validType:{length:[1,50]}" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>手机号:</td>
								<td><input class="easyui-textbox" type="text" name="mobile" data-options="required:true,validType:{length:[1,20]}" /></td>
							</tr>
							<tr>
								<td>经度:</td>
								<td><input class="easyui-textbox" type="text" name="longtitude" data-options="validType:{length:[0,20]}" /></td>
							</tr>
							<tr>
								<td>纬度:</td>
								<td><input class="easyui-textbox" type="text" name="latitude" data-options="validType:{length:[0,20]}" /></td>
							</tr>
							<tr>
								<td>性别:</td>
								<td>
								    <input type="radio" name="gender" value="1"  checked="checked"/>男
								    <input type="radio" name="gender" value="2" />女 
								</td>
							</tr>
							<tr>
								<td>住址:</td>
								<td><input class="easyui-textbox" type="text" name="address" data-options="validType:{length:[0,255]}" /></td>
							</tr>
							<tr>
								<td>年龄:</td>
								<td><input class="easyui-numberbox" type="text" name="age" data-options="validType:{length:[0,3]}" /></td>
							</tr>
							<tr>
								<td>身份证号:</td>
								<td><input class="easyui-textbox" type="text" name="idCard" data-options="validType:{length:[0,20]}" /></td>
							</tr>
							<tr>
								<td>户口所在地:</td>
								<td><input class="easyui-textbox" type="text" name="domicile"  data-options="validType:{length:[0,255]}" /></td>
							</tr>
							<tr>
								<td>学历:</td>
								<td>
								    <select class="easyui-combobox" name="edu">
										<option value="0" selected="selected">未知</option>
										<option value="1">小学</option>
										<option value="2">初中</option>
										<option value="3">高中</option>
										<option value="4">大学</option>
										<option value="5">硕士</option>
										<option value="6">博士</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>专业:</td>
								<td><input class="easyui-textbox" type="text" name="pro"  data-options="validType:{length:[0,50]}" /></td>
							</tr>
							<tr>
								<td>紧急联系人姓名:</td>
								<td><input class="easyui-textbox" type="text" name="contact" data-options="validType:{length:[0,50]}" /></td>
							</tr>
							<tr>
								<td>紧急联系人电话:</td>
								<td><input class="easyui-textbox" type="text" name="contactPhone" data-options="validType:{length:[0,20]}" /></td>	
							</tr>
							<tr>
								<td>与紧急联系人关系:</td>
								<td><input class="easyui-textbox" type="text" name="contactRelate" data-options="validType:{length:[0,20]}" /></td>	
							</tr>
							<tr>
								<td>活动地址:</td>
								<td><input class="easyui-textbox" type="text" name="activeAddress" data-options="validType:{length:[0,255]}" /></td>	
							</tr>
							<tr>
								<td>快递经验:</td>
								<td>  
									<select class="easyui-combobox" name="deliverExp">
										<option value="" selected="selected">无</option>
										<option value="meal">送餐</option>
									</select>
                                </td>	
							</tr>
							<tr>
								<td>入职时间:</td>
								<td><input class="easyui-datetimebox" name="entrantTime"  style="width:175px" /></td>	
							</tr>
							<tr>
								<td>报名时间:</td>
								<td><input class="easyui-datetimebox" name="applyTime"  style="width:175px" /></td>	
							</tr>
							<tr>
								<td>推荐人姓名:</td>
								<td><input class="easyui-textbox" type="text" name="recommenderName" data-options="validType:{length:[0,50]}" /></td>	
							</tr>
							<tr>
								<td>推荐人手机:</td>
								<td><input class="easyui-textbox" type="text" name="recommenderMobile" data-options="validType:{length:[0,20]}" /></td>	
							</tr>
						</table>
					</form>
					<div style="text-align:center;padding:5px">
			            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">新增</a>
			            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清空</a>
			        </div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>