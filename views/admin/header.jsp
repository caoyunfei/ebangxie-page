<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<table style="width: 998px; background: #FAFAFA; margin-bottom: 5px;">
	<tr>
	<td style="height:30px; font-size: 14px; padding-left: 10px; ">${admintitle}</td>
	<td align="right" style="padding-right: 10px; ">
		<a href="${webpath }/admin/home">主页</a> &nbsp;&nbsp; 
		<a href="${webpath }/admin/tologout?account=${account}">退出</a>
	</td>
	</tr>
</table>
