<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/27
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息表</title>
    <link rel="stylesheet" href="Style/Normalize.css">
    <link rel="stylesheet" href="Style/studentCSS.css">
</head>
<body>
<div class="cont">
    <div class="top">
        <h1>学生信息表</h1>
        <button type="button" class="button"><a href="add.html" target="_blank">添加</a></button>
        <button type="button" class="button"><a href="update.html" target="_blank">更新</a></button>
        <button type="button" class="button"><a href="choose.jsp" target="_blank">选择</a></button>
        <button type="button" class="button"><a href="delete.html" target="_blank">删除</a></button>
    </div>
    <div class="main">
        <%
            out.println("<table class='table'>");
            out.println("<tr><td>&nbsp;</td><td>姓名</td><td>班级</td><td>课程</td><td>分数</td> </tr>");
            if (application.getAttribute("infoName") != null) {
        %>
        <%
            }
            out.println("</table>");
        %>


        <%
            ArrayList info = (ArrayList) this.getServletConfig().getServletContext().getAttribute("student");
            if (info != null) {
                if (info.size() > 0) {
                    Iterator iterator = info.iterator();
                    while (iterator.hasNext()) {
        %>
        <%=iterator.next().toString()%>
        <br>
        <%
                }
            }
        }
        %>


    </div>
</div>
</body>
</html>
