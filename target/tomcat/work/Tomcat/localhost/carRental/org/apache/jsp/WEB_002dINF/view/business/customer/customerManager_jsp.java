/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-05-17 14:47:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view.business.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class customerManager_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

    String path = request.getContextPath();

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <title>客户管理</title>\r\n");
      out.write("    <meta name=\"renderer\" content=\"webkit\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
      out.write("    <meta http-equiv=\"Access-Control-Allow-Origin\" content=\"*\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("    <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");
      out.write("    <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("    <meta name=\"format-detection\" content=\"telephone=no\">\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/static/layui/css/layui.css\" media=\"all\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/static/css/public.css\" media=\"all\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/static/layui_ext/dtree/dtree.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/static/layui_ext/dtree/font/dtreefont.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"childrenBody\">\r\n");
      out.write("\r\n");
      out.write("<!-- 搜索条件开始 -->\r\n");
      out.write("<fieldset class=\"layui-elem-field layui-field-title\" style=\"margin-top: 20px;\">\r\n");
      out.write("    <legend>查询条件</legend>\r\n");
      out.write("</fieldset>\r\n");
      out.write("<form class=\"layui-form\" method=\"post\" id=\"searchFrm\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"layui-form-item\">\r\n");
      out.write("        <div class=\"layui-inline\">\r\n");
      out.write("            <label class=\"layui-form-label\">客户姓名:</label>\r\n");
      out.write("            <div class=\"layui-input-inline\" style=\"padding: 5px\">\r\n");
      out.write("                <input type=\"text\" name=\"custname\" autocomplete=\"off\" class=\"layui-input layui-input-inline\"\r\n");
      out.write("                       placeholder=\"请输入客户名称\" style=\"height: 30px;border-radius: 10px\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"layui-inline\">\r\n");
      out.write("            <label class=\"layui-form-label\">身份证号:</label>\r\n");
      out.write("            <div class=\"layui-input-inline\" style=\"padding: 5px\">\r\n");
      out.write("                <input type=\"text\" name=\"identity\" autocomplete=\"off\" class=\"layui-input layui-input-inline\"\r\n");
      out.write("                       placeholder=\"请输入身份证号\" style=\"height: 30px;border-radius: 10px\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"layui-inline\">\r\n");
      out.write("            <label class=\"layui-form-label\">客户地址:</label>\r\n");
      out.write("            <div class=\"layui-input-inline\" style=\"padding: 5px\">\r\n");
      out.write("                <input type=\"text\" name=\"address\" autocomplete=\"off\" class=\"layui-input layui-input-inline\"\r\n");
      out.write("                       placeholder=\"请输入客户地址\" style=\"height: 30px;border-radius: 10px\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"layui-form-item\">\r\n");
      out.write("        <div class=\"layui-inline\">\r\n");
      out.write("            <label class=\"layui-form-label\">客户电话:</label>\r\n");
      out.write("            <div class=\"layui-input-inline\" style=\"padding: 5px\">\r\n");
      out.write("                <input type=\"text\" name=\"phone\" autocomplete=\"off\" class=\"layui-input layui-input-inline\"\r\n");
      out.write("                       placeholder=\"请输入客户电话\" style=\"height: 30px;border-radius: 10px\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"layui-inline\">\r\n");
      out.write("            <label class=\"layui-form-label\">客户职业:</label>\r\n");
      out.write("            <div class=\"layui-input-inline\" style=\"padding: 5px\">\r\n");
      out.write("                <input type=\"text\" name=\"career\" autocomplete=\"off\" class=\"layui-input layui-input-inline\"\r\n");
      out.write("                       placeholder=\"请输入客户职业\" style=\"height: 30px;border-radius: 10px\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"layui-inline\">\r\n");
      out.write("            <label class=\"layui-form-label\">性别:</label>\r\n");
      out.write("            <div class=\"layui-input-inline\">\r\n");
      out.write("                <input type=\"radio\" name=\"sex\" value=\"1\" title=\"男\">\r\n");
      out.write("                <input type=\"radio\" name=\"sex\" value=\"0\" title=\"女\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"button\"\r\n");
      out.write("                    class=\"layui-btn layui-btn-normal layui-icon layui-icon-search layui-btn-radius layui-btn-sm\"\r\n");
      out.write("                    id=\"doSearch\" style=\"margin-top: 4px\">查询\r\n");
      out.write("            </button>\r\n");
      out.write("            <button type=\"reset\"\r\n");
      out.write("                    class=\"layui-btn layui-btn-warm layui-icon layui-icon-refresh layui-btn-radius layui-btn-sm\"\r\n");
      out.write("                    style=\"margin-top: 4px\">重置\r\n");
      out.write("            </button>\r\n");
      out.write("            <button type=\"button\"\r\n");
      out.write("                    class=\"layui-btn layui-btn-green layui-icon layui-icon-download-circle layui-btn-radius layui-btn-sm\"\r\n");
      out.write("                    id=\"doExport\" style=\"margin-top: 4px\">导出\r\n");
      out.write("            </button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<!-- 数据表格开始 -->\r\n");
      out.write("<table class=\"layui-hide\" id=\"customerTable\" lay-filter=\"customerTable\"></table>\r\n");
      out.write("<div id=\"customerToolBar\" style=\"display: none;\">\r\n");
      out.write("    <button type=\"button\" class=\"layui-btn layui-btn-sm layui-btn-radius\" lay-event=\"add\">增加</button>\r\n");
      out.write("    <button type=\"button\" class=\"layui-btn layui-btn-danger layui-btn-sm layui-btn-radius\" lay-event=\"deleteBatch\">\r\n");
      out.write("        批量删除\r\n");
      out.write("    </button>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"customerBar\" style=\"display: none;\">\r\n");
      out.write("    <a class=\"layui-btn layui-btn-xs layui-btn-radius\" lay-event=\"edit\">编辑</a>\r\n");
      out.write("    <a class=\"layui-btn layui-btn-danger layui-btn-xs layui-btn-radius\" lay-event=\"del\">删除</a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- 添加和修改的弹出层-->\r\n");
      out.write("<div style=\"display: none;padding: 20px\" id=\"saveOrUpdateDiv\">\r\n");
      out.write("    <form class=\"layui-form\" lay-filter=\"dataFrm\" id=\"dataFrm\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"layui-form-item\">\r\n");
      out.write("            <div class=\"layui-inline\">\r\n");
      out.write("                <label class=\"layui-form-label\">客户姓名:</label>\r\n");
      out.write("                <div class=\"layui-input-inline\">\r\n");
      out.write("                    <input type=\"text\" name=\"custname\" lay-verify=\"required\" placeholder=\"请输入客户姓名\" autocomplete=\"off\"\r\n");
      out.write("                           class=\"layui-input\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"layui-inline\">\r\n");
      out.write("                <label class=\"layui-form-label\">身份证号:</label>\r\n");
      out.write("                <div class=\"layui-input-inline\">\r\n");
      out.write("                    <input type=\"text\" name=\"identity\" lay-verify=\"required\" placeholder=\"请输入身份证号\" autocomplete=\"off\"\r\n");
      out.write("                           class=\"layui-input\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"layui-form-item\">\r\n");
      out.write("            <div class=\"layui-inline\">\r\n");
      out.write("                <label class=\"layui-form-label\">客户地址:</label>\r\n");
      out.write("                <div class=\"layui-input-inline\">\r\n");
      out.write("                    <input type=\"text\" name=\"address\" placeholder=\"请输入客户地址\" autocomplete=\"off\" class=\"layui-input\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"layui-inline\">\r\n");
      out.write("                <label class=\"layui-form-label\">客户职业:</label>\r\n");
      out.write("                <div class=\"layui-input-inline\">\r\n");
      out.write("                    <input type=\"text\" name=\"career\" placeholder=\"请输入客户职业\" autocomplete=\"off\" class=\"layui-input\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"layui-form-item\">\r\n");
      out.write("            <div class=\"layui-inline\">\r\n");
      out.write("                <label class=\"layui-form-label\">客户电话:</label>\r\n");
      out.write("                <div class=\"layui-input-inline\">\r\n");
      out.write("                    <input type=\"text\" name=\"phone\" lay-verify=\"required|phone\" placeholder=\"请输入客户电话\" autocomplete=\"off\"\r\n");
      out.write("                           class=\"layui-input\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"layui-inline\">\r\n");
      out.write("                <label class=\"layui-form-label\">客户性别:</label>\r\n");
      out.write("                <div class=\"layui-input-inline\">\r\n");
      out.write("                    <input type=\"radio\" name=\"sex\" value=\"1\" checked=\"checked\" title=\"男\">\r\n");
      out.write("                    <input type=\"radio\" name=\"sex\" value=\"0\" title=\"女\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"layui-form-item\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"layui-input-block\" style=\"text-align: center;padding-right: 120px\">\r\n");
      out.write("                <button type=\"button\"\r\n");
      out.write("                        class=\"layui-btn layui-btn-normal layui-btn-md layui-icon layui-icon-release layui-btn-radius\"\r\n");
      out.write("                        lay-filter=\"doSubmit\" lay-submit=\"\">提交\r\n");
      out.write("                </button>\r\n");
      out.write("                <button type=\"reset\"\r\n");
      out.write("                        class=\"layui-btn layui-btn-warm layui-btn-md layui-icon layui-icon-refresh layui-btn-radius\">重置\r\n");
      out.write("                </button>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script src=\"");
      out.print(path);
      out.write("/static/layui/layui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    var tableIns;\r\n");
      out.write("    layui.use(['jquery', 'layer', 'form', 'table'], function () {\r\n");
      out.write("        var $ = layui.jquery;\r\n");
      out.write("        var layer = layui.layer;\r\n");
      out.write("        var form = layui.form;\r\n");
      out.write("        var table = layui.table;\r\n");
      out.write("        var dtree = layui.dtree;\r\n");
      out.write("        //渲染数据表格\r\n");
      out.write("        tableIns = table.render({\r\n");
      out.write("            elem: '#customerTable'   //渲染的目标对象\r\n");
      out.write("            , url: '");
      out.print(path);
      out.write("/customer/loadAllCustomer.action' //数据接口\r\n");
      out.write("            , title: '客户数据表'//数据导出来的标题\r\n");
      out.write("            , toolbar: \"#customerToolBar\"   //表格的工具条\r\n");
      out.write("            , height: 'full-210'\r\n");
      out.write("            , cellMinWidth: 100 //设置列的最小默认宽度\r\n");
      out.write("            , page: true  //是否启用分页\r\n");
      out.write("            , cols: [[   //列表数据\r\n");
      out.write("                {type: 'checkbox', fixed: 'left'}\r\n");
      out.write("                , {field: 'identity', title: '身份证号', align: 'center', width: '200'}\r\n");
      out.write("                , {field: 'custname', title: '客户姓名', align: 'center', width: '125'}\r\n");
      out.write("                , {field: 'address', title: '客户地址', align: 'center', width: '125'}\r\n");
      out.write("                , {field: 'career', title: '客户职业', align: 'center', width: '150'}\r\n");
      out.write("                , {field: 'phone', title: '手机号码', align: 'center', width: '150'}\r\n");
      out.write("\r\n");
      out.write("                , {\r\n");
      out.write("                    field: 'sex', title: '性别', align: 'center', width: '120', templet: function (d) {\r\n");
      out.write("                        return d.sex == '1' ? '<font color=blue>男</font>' : '<font color=red>女</font>';\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                , {field: 'createtime', title: '录入时间', align: 'center', width: '200'}\r\n");
      out.write("                , {field: 'money', title: '余额', align: 'center', width: '200'}\r\n");
      out.write("                , {fixed: 'right', title: '操作', toolbar: '#customerBar', align: 'center', width: '150'}\r\n");
      out.write("            ]],\r\n");
      out.write("            done:function (data, curr, count) {\r\n");
      out.write("                //不是第一页时，如果当前返回的数据为0那么就返回上一页\r\n");
      out.write("                if(data.data.length==0&&curr!=1){\r\n");
      out.write("                    tableIns.reload({\r\n");
      out.write("                        page:{\r\n");
      out.write("                            curr:curr-1\r\n");
      out.write("                        }\r\n");
      out.write("                    })\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        //模糊查询\r\n");
      out.write("        $(\"#doSearch\").click(function () {\r\n");
      out.write("            var params = $(\"#searchFrm\").serialize();\r\n");
      out.write("            tableIns.reload({\r\n");
      out.write("                url: \"");
      out.print(path);
      out.write("/customer/loadAllCustomer.action?\" + params,\r\n");
      out.write("                page: {curr: 1}\r\n");
      out.write("            })\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        //导出\r\n");
      out.write("        $(\"#doExport\").click(function () {\r\n");
      out.write("            var params = $(\"#searchFrm\").serialize();\r\n");
      out.write("            window.location.href=\"");
      out.print(path);
      out.write("/stat/exportCustomer.action?\"+params;\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        //监听头部工具栏事件\r\n");
      out.write("        table.on(\"toolbar(customerTable)\", function (obj) {\r\n");
      out.write("            switch (obj.event) {\r\n");
      out.write("                case 'add':\r\n");
      out.write("                    openAddCustomer();\r\n");
      out.write("                    break;\r\n");
      out.write("                case 'deleteBatch':\r\n");
      out.write("                    deleteBatch();\r\n");
      out.write("                    break;\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        //监听行工具事件\r\n");
      out.write("        table.on('tool(customerTable)', function (obj) {\r\n");
      out.write("            var data = obj.data; //获得当前行数据\r\n");
      out.write("            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）\r\n");
      out.write("            if (layEvent === 'del') { //删除\r\n");
      out.write("                layer.confirm('真的删除【' + data.custname + '】这个客户么？', function (index) {\r\n");
      out.write("                    //向服务端发送删除指令\r\n");
      out.write("                    $.post(\"");
      out.print(path);
      out.write("/customer/deleteCustomer.action\", {identity: data.identity}, function (res) {\r\n");
      out.write("                        layer.msg(res.msg);\r\n");
      out.write("                        //刷新数据表格\r\n");
      out.write("                        tableIns.reload();\r\n");
      out.write("                    })\r\n");
      out.write("                });\r\n");
      out.write("            } else if (layEvent === 'edit') { //编辑\r\n");
      out.write("                //编辑，打开修改界面\r\n");
      out.write("                openUpdateCustomer(data);\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        var url;\r\n");
      out.write("        var mainIndex;\r\n");
      out.write("\r\n");
      out.write("        //打开添加页面\r\n");
      out.write("        function openAddCustomer() {\r\n");
      out.write("            mainIndex = layer.open({\r\n");
      out.write("                type: 1,\r\n");
      out.write("                title: '添加客户',\r\n");
      out.write("                content: $(\"#saveOrUpdateDiv\"),\r\n");
      out.write("                area: ['700px', '320px'],\r\n");
      out.write("                success: function (index) {\r\n");
      out.write("                    //清空表单数据\r\n");
      out.write("                    $(\"#dataFrm\")[0].reset();\r\n");
      out.write("                    url = \"");
      out.print(path);
      out.write("/customer/addCustomer.action\";\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        //打开修改页面\r\n");
      out.write("        function openUpdateCustomer(data) {\r\n");
      out.write("            mainIndex = layer.open({\r\n");
      out.write("                type: 1,\r\n");
      out.write("                title: '修改客户',\r\n");
      out.write("                content: $(\"#saveOrUpdateDiv\"),\r\n");
      out.write("                area: ['700px', '320px'],\r\n");
      out.write("                success: function (index) {\r\n");
      out.write("                    form.val(\"dataFrm\", data);\r\n");
      out.write("                    url = \"");
      out.print(path);
      out.write("/customer/updateCustomer.action\";\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        //保存\r\n");
      out.write("        form.on(\"submit(doSubmit)\", function (obj) {\r\n");
      out.write("            //序列化表单数据\r\n");
      out.write("            var params = $(\"#dataFrm\").serialize();\r\n");
      out.write("            $.post(url, params, function (obj) {\r\n");
      out.write("                layer.msg(obj.msg);\r\n");
      out.write("                //关闭弹出层\r\n");
      out.write("                layer.close(mainIndex)\r\n");
      out.write("                //刷新数据 表格\r\n");
      out.write("                tableIns.reload();\r\n");
      out.write("            })\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        //批量删除\r\n");
      out.write("        function deleteBatch() {\r\n");
      out.write("            //得到选中的数据行\r\n");
      out.write("            var checkStatus = table.checkStatus('customerTable');\r\n");
      out.write("            var data = checkStatus.data;\r\n");
      out.write("            layer.alert(data.length);\r\n");
      out.write("            var params = \"\";\r\n");
      out.write("            $.each(data, function (i, item) {\r\n");
      out.write("                if (i == 0) {\r\n");
      out.write("                    params += \"ids=\" + item.identity;\r\n");
      out.write("                } else {\r\n");
      out.write("                    params += \"&ids=\" + item.identity;\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("            layer.confirm('真的要删除这些客户么？', function (index) {\r\n");
      out.write("                //向服务端发送删除指令\r\n");
      out.write("                $.post(\"");
      out.print(path);
      out.write("/customer/deleteBatchCustomer.action\", params, function (res) {\r\n");
      out.write("                    layer.msg(res.msg);\r\n");
      out.write("                    //刷新数据表格\r\n");
      out.write("                    tableIns.reload();\r\n");
      out.write("                })\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}