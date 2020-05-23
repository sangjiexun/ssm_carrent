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
<%--    <jsp:useBean id="folder" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 当前正在使用的模板 -->--%>
 	
    <title>${recept.title}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="${recept.keywords}">
	<meta http-equiv="description" content="${recept.descript}">
	<link rel="stylesheet" type="text/css" href="static/css/user.css">
  </head>
  
  <body>
  	<jsp:include  page="head.jsp"/>
		<div class="header_rg_bg">
			<div class="clear regist_box">
				<div class="left header_rg_form">
					<h3 class="re_til">注册新用户</h3>
					<form class="regist_form" name="registeForm" id="registeForm" action="user/registCheck.action" method="post">
						<ul class="regist_now">
							<li><input type="text" class="rmobile_icon" name="username" placeholder="请输入账号" /></li>
							<li><input type="text" class="rmobile_icon" name="identity" placeholder="请输入身份证号" /></li>
							<li><input type="password" name="password_pre" class="rpass_icon" minlength="6" maxlength="12" placeholder="请输入密码6-12位数字、字母、符号组合" /></li>
							<li><input type="password" name="password_final" class="rpass_icon" minlength="6" maxlength="12" placeholder="请重复输入密码" /></li>
							<li class="pass_regist">
								<input type="checkbox"/>我已阅读并同意  <a href="javascript:void(0)" class="regist_terms">《会员注册服务条款》</a></li>
							<li>
								<input type="submit" onclick="" class="regist_btn"></input>
							</li>
						</ul>
					</form>
				</div>

			</div>
		</div>
	</div>
	
  	<jsp:include  page="foot.jsp"/>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/default/js/layer/layer.js"></script>


  </body>
</html>