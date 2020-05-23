<%@ page import="org.springframework.http.HttpRequest" %>
<%@ page import="cn.hutool.http.HttpResponse" %><%--
  Created by IntelliJ IDEA.
  User: sang
  Date: 2020/5/23
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出</title>
</head>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    正在安全退出
    <%

        response.sendRedirect(path+"/user/index.action");
    %>
</body>
</html>
