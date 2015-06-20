<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<jsp:include page="meta.jsp" />
<title>${admintitle}－登陆</title>
<jsp:include page="common.jsp" />
<script type="text/javascript" src="${webpath}/assets/common/md5.js"></script>
<script type="text/javascript">
	function login() {
		var account = $.trim($('#accountInput').val());
		if (account == "") {
			$('#accountMsg').html('请输入账号');
			return;
		}
		$('#accountMsg').html('');
		$('#passwordMsg').html('');

		var password = $.trim($('#passwordInput').val());
		if (password == "") {
			$('#passwordMsg').html('请输入密码');
			return;
		}

		var param = {
			account : account,
			password : calcMD5(password)
		};

		$.post(EDAIJIA.webpath + '/admin/tologin', param, function(res) {
			$('#accountMsg').html('');
			$('#passwordMsg').html('');

			if (res.success) {
				window.location = EDAIJIA.webpath + '/admin/home';
			} else {
				if (res.account) {
					$('#accountMsg').html(res.account);
				}
				if (res.password) {
					$('#passwordMsg').html(res.password);
				}
			}
		})
	}
</script>
</head>
<body>

	<table style="margin: 50px auto auto auto;">
		<tr>
			<td>
				<form id="loginform" action="${webpath }/admin/tologin" method="post">
					<div class="easyui-panel " title="登录系统" style="width: 400px; padding: 30px 70px 20px 70px;">
						<div style="margin-bottom: 5px">
							<input class="easyui-textbox" id="accountInput" name="account" style="width: 100%; height: 40px; padding: 12px"
								data-options="prompt:'账号',iconCls:'icon-man',iconWidth:38" tabindex="1">
						</div>
						<div id="accountMsg" style="height: 22px; color: red;"></div>
						<div style="margin-bottom: 5px">
							<input class="easyui-textbox" type="password" id="passwordInput" name="password"
								style="width: 100%; height: 40px; padding: 12px" data-options="prompt:'请输入密码',iconCls:'icon-lock',iconWidth:38" tabindex="2">
						</div>
						<div id="passwordMsg" style="height: 22px; color: red;"></div>
						<div style="margin-bottom: 20px">
							<input type="checkbox" checked="checked" name="rememberAccount" tabindex="3">
							<span>记住账号</span>
						</div>
						<div>
							<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="login()"
								style="padding: 5px 0px; width: 100%;" tabindex="4">
								<span style="font-size: 14px;">登录</span>
							</a>
						</div>
					</div>
				</form>

			</td>
		</tr>
	</table>

</body>
</html>