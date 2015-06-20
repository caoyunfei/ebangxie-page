<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle} - 通知商户数据</title>
<jsp:include page="../common.jsp" />
<script type="text/javascript" src="${webpath}/assets/business/notice/notice.js"></script>
</head>
<body>
  <div class="mcontainer" align="center">
    <jsp:include page="../header.jsp"></jsp:include>

    <div id="search" class="spacing-top">
    
    </div>
    
    <div align="center" class="spacing-top-large">
      <table id="datalist"></table>
    </div>

  </div>

</body>
</html>