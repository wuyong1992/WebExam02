<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/27
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="stu" class="com.wy.Bean.Student"/>
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
<form action="#">
    <table>
        <tr>
            <td>姓名</td>
            <td>班级</td>
            <td>课程</td>
            <td>分数</td>
        </tr>
        <tr>
            <td>
                <input type="text" value="<%=session.getAttribute("name")%>">
            </td>
            <td>
                <input type="text" value="<%=session.getAttribute("banji")%>">
            </td>
            <td>
                <input type="text" value="<%=session.getAttribute("course")%>">
            </td>
            <td>
                <input type="text" value="<%=session.getAttribute("score")%>">
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
</form>
</body>
</html>
