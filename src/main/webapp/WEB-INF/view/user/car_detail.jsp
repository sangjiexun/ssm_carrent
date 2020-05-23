<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>${goods.goodsName}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="${goods.keywords}">
	<meta http-equiv="description" content="${goods.goodsBrief}">

	  <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/user.css">
  </head>
  
  <body>
  	<jsp:include  page="head.jsp"/>
  		<div class="clear contain">			
			<ul class="clear rent_flow">
				<li>
					<span class="left num_icon">1</span>
					<p class="left mien_tit">预订车辆</br><font>提前为您预留</font></p>					
				</li>
				<li style="border-left:0px solid red">
					<span class="left num_icon">2</span>
					<p class="left mien_tit">签订合同</br><font>双方共同验车</font></p>
				</li>
				<li style="border-left:0px solid red">
					<span class="left num_icon">3</span>
					<p class="left mien_tit">开心旅途</br><font>一路为您保驾护航</font></p>
				</li>
				<li style="border-left:0px solid red">
					<span class="left num_icon">4</span>
					<p class="left mien_tit">退还车辆</br><font>完成租车使用</font></p>
				</li>
			</ul>
			<div class="clear page_tips">
				当前位置：<a href="<%=basePath%>">首页</a>><a>车辆详情</a>><span>${car.description}</span>
			</div>
			<div class="clear sales">
				<div class="left sales_contain">
					<ul class="car_info_box">
						<li class="car_info">
							<div class="left car_info_img">
								<ul class="bigImg">
										<li>
											<a href="javascript:void(0)" target="_blank">
												<img src="<%=path%>/file/downloadShowFile.action?path=${car.carimg}" /></a>
										</li>

								</ul>
									<%--租车按钮--%>
								<c:if test="${tbuser.identity != null}">
									<a class="order_car" href="user/rent.action?identity=${tbuser.identity}&carnumber=${car.carnumber}"/>立即租赁</a>
								</c:if>

								<c:if test="${tbuser.identity == null}">
									<a class="order_car" href="user/login.action"/>请先登录</a>
								</c:if>








							</div>

						</li>
						<li class="clear car_discribe">
							<div class="car_discribe_til">车牌号<span>ABOUT</span></div>
							<div class="car_discribe_cont">
								${car.carnumber}
							</div>
						</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		

  	<jsp:include  page="foot.jsp"/>
    <script type="text/javascript" src="<%=basePath%>template/${folder.tpl.folder}/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>template/${folder.tpl.folder}/js/My97DatePicker/calendar.js"></script>
	<script type="text/javascript" src="<%=basePath%>template/${folder.tpl.folder}/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="<%=basePath%>template/${folder.tpl.folder}/js/jquery.SuperSlide.2.1.1.js"></script>
	<script>
	$(function(){
		//大图切换
		$(".car_info_img").slide({ titCell:".smallImg li", mainCell:".bigImg", effect:"fold", autoPlay:false,delayTime:200	});
		//小图左滚动切换
		$(".car_info_img .smallScroll").slide({ mainCell:"ul",delayTime:100,vis:4,scroll:4,effect:"left",autoPage:true,prevCell:".sPrev",nextCell:".sNext",pnLoop:false });
	});
	</script>
  </body>
</html>