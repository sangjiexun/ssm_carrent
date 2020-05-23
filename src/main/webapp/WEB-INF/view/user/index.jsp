<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.bind.annotation.GetMapping" %>
<%@ page import="org.springframework.web.servlet.ModelAndView" %>
<%@ page import="com.alfred.user.entity.BusCar" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.alfred.user.service.TbUserService" %>
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
<%--    <jsp:useBean id="folder" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 当前正在使用的模板 -->
 	<jsp:useBean id="slide" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 幻灯片 -->
 	<jsp:useBean id="active" scope="page" class="com.weishang.my.bean.MyBean"/><!-- 精彩活动-->
 	<jsp:useBean id="news" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 精彩活动-->
 	
 	<jsp:useBean id="bussinescar" scope="page" class="com.weishang.my.bean.MyBean"/><!--商务用车 -->
 	<jsp:useBean id="marrycar" scope="page" class="com.weishang.my.bean.MyBean"/><!--婚礼用车 -->
 	<jsp:useBean id="travelcar" scope="page" class="com.weishang.my.bean.MyBean"/><!--旅游用车 -->
 	<jsp:useBean id="planecar" scope="page" class="com.weishang.my.bean.MyBean"/><!--接送机用车 -->
 	
 	<jsp:useBean id="auntList" scope="page" class="com.weishang.my.bean.MyBean"/><!--师机 -->--%>
 	
    <title>${recept.title}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="">
	<meta http-equiv="description" content="">

	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/user.css">
  </head>
  
  <body>
  	<jsp:include  page="head.jsp"/>
  	<div class="header_banner">
			<div class="header_banner_box">
			  <div class="bd">
				  <div class="tempWrap" style="overflow:hidden; position:relative; width:1886px"><ul class="header_banner_list" style="width: 7544px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -3772px;"><li class="clone" style="float: left; width: 1886px;">
					  <a href="" style="background: url(<%=path%>/static/images/bg2.jpg) no-repeat center top;"></a>
				  </li>

					  <li style="float: left; width: 1886px;">
						  <a href="" style="background: url(<%=path%>/static/images/bg1.jpg) no-repeat center top;"></a>
					  </li>

					  <li style="float: left; width: 1886px;">
						  <a href="" style="background: url(<%=path%>/static/images/bg2.jpg) no-repeat center top;"></a>
					  </li>

					  <li class="clone" style="float: left; width: 1886px;">
						  <a href="" style="background: url(<%=path%>/static/images/bg1.jpg) no-repeat center top;"></a>
					  </li></ul></div>
				</div>
			  <div class="hd"><ul></ul></div>
			</div>

		</div>
		<ul class="header_discribe">
			<li>
				<img class="left" src="<%=path%>/static/images/discribe1.jpg" />
				<a href="#" class="left header_discribe_info">
					<h3>接送机场</h3>
					<p>无需任何手续，方便快捷提前到达指定地点等候</p>
				</a>
			</li>
			<li>
				<img class="left" src="<%=path%>/static/images/discribe2.jpg" />
				<a href="#" class="left header_discribe_info">
					<h3>企业服务</h3>
					<p>承接各种大型会议用车专业商务接待团队</p>
				</a>
			</li>
			<li>
				<img class="left" src="<%=path%>/static/images/discribe3.jpg" />
				<a href="#" class="left header_discribe_info">
					<h3>婚期豪车</h3>
					<p>多款豪华跑车供您选择高中低档搭配套餐</p>
				</a>
			</li>
			<li>
				<img class="left" src="<%=path%>/static/images/discribe4.jpg" />
				<a href="#" class="left header_discribe_info">
					<h3>旅游越野</h3>
					<p>为您量身打造私人线路领略不同旅途风景</p>
				</a>
			</li>
		</ul>
	</div>
	<div class="clear contain">
		<div class="contain_models" style="height:700px;">
			<div class="contain_models_bg">
				<label class="left">当前可租</br><em>RENT CAR</em></label>
				<ul class="contain_models_nav right">
                    <li><a href="javascript:void(0)" class="contain_models_action">轿车</a></li>
					<li><a href="javascript:void(0)">SUV</a></li>
					<li><a href="javascript:void(0)">跑车</a></li>
					<li><a href="javascript:void(0)">新能源</a></li>
				</ul>
				<div class="contain_models_leftbg"></div>
				<div class="contain_models_rightbg"></div>
			</div>
			<%--轿车--%>
			<div class="parBd">
				<div class="models_slidBox">
					<a href="javascript:void(0)" class="prev"></a>
					<div class="slide">
						<ul class="contain_models_list">
							<c:forEach items="${car}" var="car">
								<li>
									<a href="carDetail.action?car=${car.carnumber}">
				                        <div class="p1z">${car.carnumber}</div>
				                        <div class="img_zs"><img src="<%=path%>/file/downloadShowFile.action?path=${car.carimg}" /></div>
				                        <div class="em_z">
											车价：${car.price} 租金：${car.rentprice}
												${car.description}</div>
			                        </a>
		                        </li>
	                        </c:forEach>
						</ul>
					</div>
					<a href="javascript:void(0)" class="next"></a>
				</div>

			</div>
		</div>



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
			
			<div class="clear"></div>
		</div>
	</div>

  	<jsp:include  page="foot.jsp"/>
    <script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js//My97DatePicker/calendar.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js//My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js//jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js//main_js.js"></script>

  </body>
</html>
