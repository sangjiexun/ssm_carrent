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
    <%--<jsp:useBean id="folder" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 当前正在使用的模板 -->
    <jsp:useBean id="active" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 精彩活动-->
 	<jsp:useBean id="news" scope="page" class="com.weishang.bean.ReceptBean"/><!-- 新闻-->
 	<jsp:useBean id="brand" scope="page" class="com.weishang.my.bean.MyBean"/><!-- 品牌-->
 	<jsp:useBean id="type" scope="page" class="com.weishang.my.bean.MyBean"/><!-- 类型-->
 	<jsp:useBean id="cat" scope="page" class="com.weishang.my.bean.MyBean"/><!-- 分类-->--%>
 	
    <title>${msg}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="${recept.keywords}">
	<meta http-equiv="description" content="${recept.descript}">
	  <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/user.css">
  </head>
  
  <body>
  	<jsp:include  page="head.jsp"/>
		<div class="header_banner">
			<div class="header_lg_bg"></div>
				<div class="header_lg_form">
					<div class="login_fun">
						<div class="left login_action" id="login_tab">登录</div>
					</div>
					<form  class="login_form" name="loginForm" id="loginForm" action="user/loginCheck.action" method="post">
						<ul class="login_now">
							<li><input type="text" class="lname_icon" name="username" placeholder="请输入账号" /></li>
							<li><input type="password" class="lpass_icon" name="password" placeholder="请输入登录密码" /></li>
							<li class="pass_regist"><a>忘记登录密码</a>  <a href="user/register.action" class="right">免费注册&gt;&gt;</a></li>
							<li><input type="submit" class="login_btn" value="登&nbsp;&nbsp;录" /></li>


							<!-- <li class="other_login"><a href="#" class="login_qq">QQ登录</a><a href="#" class="login_wx">微信登录</a></li> -->
						</ul>
					</form>
					<div class="login_mobiled"></div>
				</div>
			</div>
		</div>
  	<jsp:include  page="foot.jsp"/>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>

  </body>
</html>