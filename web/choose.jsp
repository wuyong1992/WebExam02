<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/27
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>增加页面</title>
    <style>
        table {
            /*border: 1px solid black;*/
            border-collapse: collapse;
            text-align: center;
        }
        td {
            border: 1px solid black;
            width: 300px;
            height: 50px;

        }
        input {
            height: 100%;
            width: 100%;
            border: none;
            font-size: 20px;
            line-height: 100%;
        }
    </style>
</head>
<body>

<%
    ArrayList info = (ArrayList) this.getServletConfig().getServletContext().getAttribute("student");
    if (info.size() > 0) {
        Iterator iterator = info.iterator();
        while (iterator.hasNext()) {
%>
<%=iterator.next().toString()%>
<br>
<%
        }
    }
%>

<%--<form action="#">
    <table>
        <tr>
            <td>姓名</td>
            <td>班级</td>
            <td>课程</td>
            <td>分数</td>
        </tr>
        <tr>
            <td>
                <input type="text" >
            </td>
            <td>
                <input type="text">
            </td>
            <td>
                <input type="text">
            </td>
            <td>
                <input type="text">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border: none">
                <input type="submit" value="提交">
            </td>
            <td colspan="2" style="border: none">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>--%>
</body>
</html>
