<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%--

    会员中心，还没做完，勉强演示个页面

--%>


<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>会员中心</title>
    
	<link href="<%=path%>/static/css/style_pc.css" rel="stylesheet">
	<link href="<%=path%>/static/css/index.css" rel="stylesheet">
	
	<script src="<%=path%>/static/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=path%>/static/js/jquery.DB_gallery.js" type="text/javascript"></script>
	<script src="<%=path%>/static/js/public_pc.js" type="text/javascript"></script>
      <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/user.css">
  </head>
  
  <body>
  <%--头部样式--%>
    <jsp:include  page="head.jsp"/>
    <%--菜单页--%>
    <jsp:include  page="left.jsp"/>
    	 <!-- 右侧内容开始 -->
	    <div class="user-bd-main_r">
	    	<!-- 单元内容开始 -->
                <div class="user-bd-main add-address">
                    <!-- 标题 -->
                    <div class="user-bd-main-title">基本资料</div>
                    <!--表单内容 -->
                    <div class="add-address-form">
                        <form name="userForm" id="userForm" action="javascript:void(0)" method="post">
                            <div class="formRow clearfix">
                                <span class="tag">姓名：</span>
                                <input class="username" value="${user.username}" name="username" type="text">
                            </div>
                            <div class="formRow clearfix">
                                <span class="tag">身份证：</span>
                                <input class="username" value="${user.identity}" id="identity" name="identity" type="text">
                            </div>
<%--                            <div class="formRow clearfix">--%>
<%--                                <span class="tag">租车：</span>--%>
<%--                                <input class="phoneNum"  value="${user.rent}" name="address" type="text">--%>
<%--                            </div>--%>
<%--                            <input class="btn-sub" type="submit" onclick="updateUserBase()" value="保存">--%>
                        </form>
                    </div>
                 </div>
             <!-- 单元内容结束-->
	    </div>
   </div>
   <!-- 1200宽度结束-->
   <!-- 背景层结束-->
</div>
    <jsp:include  page="foot.jsp"/>
  </body>
</html>
