<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String webpath = request.getContextPath();
	request.setAttribute("webpath", webpath);
	request.setAttribute("webpath_admin", webpath + "/admin");
%>
<link rel="stylesheet" type="text/css" href="${webpath}/assets/jquery-easyui-1.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="${webpath}/assets/jquery-easyui-1.4/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="${webpath}/assets/common/style.css" />
<script type="text/javascript" src="${webpath}/assets/jquery-easyui-1.4/jquery.min.js"></script>
<script type="text/javascript" src="${webpath}/assets/jquery-easyui-1.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${webpath}/assets/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${webpath}/assets/common/base.js"></script>
<script type="text/javascript" src="${webpath}/assets/common/easyui-lang-zh_CN.js"></script>

<!-- autocomplete -->
<script type="text/javascript" src="${webpath}/assets/jquery-autocomplete/lib/jquery.bgiframe.min.js"></script>
<script type="text/javascript" src="${webpath}/assets/jquery-autocomplete/lib/jquery.ajaxQueue.js"></script>
<%-- <script type="text/javascript" src="${webpath}/assets/jquery-autocomplete/lib/thickbox-compressed.js"></script> --%>
<script type="text/javascript" src="${webpath}/assets/jquery-autocomplete/jquery.autocomplete.js"></script>
<link rel="stylesheet" type="text/css" href="${webpath}/assets/jquery-autocomplete/jquery.autocomplete.css" />
<%-- <link rel="stylesheet" type="text/css" href="${webpath}/assets/jquery-autocomplete/lib/thickbox.css" /> --%>

<script type="text/javascript">
	EDAIJIA = {
		webpath : "${webpath}",
		webpath_admin : "${webpath}" + "/admin"
	};
</script>