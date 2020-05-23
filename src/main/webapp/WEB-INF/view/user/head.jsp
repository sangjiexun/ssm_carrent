<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="header">
	<div class="header_fun_bg"> 
		<div class="mainbox header_fun_info"> 
			尊敬的客户，欢迎您来到租车系统
			<div class="right">
				<c:if test="${tbuser.username==null}">
					<a href="user/index.action">首页</a>|
					<a href="user/login.action">登陆</a>|
					<a href="user/register.action">注册</a>
				</c:if>

				<c:if test="${tbuser.username!=null}">
					<a>欢迎${tbuser.username}</a>
					<a href="user/index.action">首页</a>
					<a href="user/userCenter.action">用户中心 </a>|
					<a href="user/user_out.action">退出</a>
				</c:if>
				|<a href="login/toLogin.action">总后台 </a>

			</div>
		</div>
	</div>	
	<div class="header_menu_bg">
		<div class="mainbox header_menu_info">
			<a href="#" class="header_logo" style="
    width: auto;
">
				<h1 style="
    font-size: large;
">汽车租赁系统</h1></a>
			<ul class="header_menu">
				<li class="app"><span class="header_menu_mobile">
					<a href="javascript:void(0)">手机版</a>
				</span></li>
			</ul>
		</div>
	</div>
</div>