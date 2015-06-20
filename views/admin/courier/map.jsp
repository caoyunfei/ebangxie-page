<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../meta.jsp" />
<title>${admintitle}- 快递员地图分布</title>
<jsp:include page="../common.jsp" />
<style type="text/css">
	#allmap{ height: 600px;}
</style>
<script type="text/javascript"
	src="${webpath}/assets/business/courier/list.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=mujdoNQWSRjAyaiN8xicUjGq"></script>
	
</head>
<body>
	<div class="mcontainer" align="center">
		<jsp:include page="../header.jsp"></jsp:include>

		<div style="text-align: left; height: 30px; line-height: 30px; ">
		
		总数：<span id="c_total"></span>，
		接单状态（红色）：<span id="c_ordering_count"></span>，
		停止接单（绿色）：<span id="c_stopping_count"></span>
		
		&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" id="the_reload_btn"
			iconCls="icon-reload" onclick="getDisplay();">刷新</a>
		(每 30S 自动刷新一次)
		
		</div>

		<div id="allmap"></div>
		
	</div>

</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.404, 39.915);
	map.centerAndZoom(point, 12);
	
	var marker = new BMap.Marker(new BMap.Point(116.404, 39.915)); // 创建点
	
	//添加覆盖物
	function add_overlay(){
		map.addOverlay(marker);            //增加点
	}
	
	//清除覆盖物
	function remove_overlay(){
		map.clearOverlays();         
	}
	
	var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});
	var top_left_navigation = new BMap.NavigationControl();  			//左上角，添加默认缩放平移控件
	var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, 
		type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮

	/*缩放控件type有四种类型:
	BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；
	BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；
	BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/
	
	//添加控件和比例尺
	function add_control(){
		map.addControl(top_left_control);        
		map.addControl(top_left_navigation);     
		map.addControl(top_right_navigation);    
	}
		
	add_control();
	
	// 
	var url = EDAIJIA.webpath_admin + '/courier/map/query';
	
	var orderIcon = new BMap.Icon(EDAIJIA.webpath + "/assets/images/us_cursor.gif", new BMap.Size(24, 24), {  
		anchor: new BMap.Size(11, 24), // 指定定位位置  
        imageOffset: new BMap.Size(-24, -22), // 设置图片偏移
    });  
	
	var orderNotIcon = new BMap.Icon(EDAIJIA.webpath + "/assets/images/us_cursor.gif", new BMap.Size(24, 24), {  
		anchor: new BMap.Size(11, 24), // 指定定位位置  
        imageOffset: new BMap.Size(0, -22), // 设置图片偏移
    });  
	
	var opts = {
			  width : 100,     // 信息窗口宽度
			  height: 80,     // 信息窗口高度
			  title : "" , // 信息窗口标题
			  enableMessage: false
			};
	
	function addInfoEvent(marker, cour, pt) {
		marker.addEventListener("click", function(){   
			map.openInfoWindow(new BMap.InfoWindow("姓名：" + cour.name 
					+ "<br/><br/>手机：" + cour.mobile 
					+ "<br/><br/>状态：" + (cour.status==2 ? "接单":"停止接单"), opts), 
					pt); //开启信息窗口
		});
	}
	
	$('#the_reload_btn').linkbutton();
	
	function getDisplay() {
		$('#the_reload_btn').linkbutton('disable');
		$.get(url, null, function(couriers) {
			map.clearOverlays();
			
			$('#c_total').html(couriers.length);
			
			var orderingCount = 0;
			for(var i=0; i<couriers.length; i++) {
				var cour = couriers[i];
				if(cour.status == 2) {
					orderingCount++;
				}
				
				var pt = new BMap.Point(cour.longtitude, cour.latitude);
				var marker = new BMap.Marker(pt, {icon: cour.status==2 ? orderIcon : orderNotIcon});
				map.addOverlay(marker); 
				
				addInfoEvent(marker, cour, pt);
			}
			
			$('#c_ordering_count').html(orderingCount);
			$('#c_stopping_count').html(couriers.length - orderingCount);
			
			$('#the_reload_btn').linkbutton('enable');
		});
	}
	
	getDisplay();
	setInterval(getDisplay, 30000);
	
</script>

